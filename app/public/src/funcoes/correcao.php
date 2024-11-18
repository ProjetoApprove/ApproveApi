<?php
session_start();

// Verifica se o usuário está autenticado
if (!isset($_SESSION['email'])) {
    header('Location: ../index.php'); // Redireciona para a página de login
    exit;
}

// Dados do usuário logado
$logado = $_SESSION['email'];
$username = isset($_SESSION['username']) ? $_SESSION['username'] : 'Usuário';
$usuarioId = $_SESSION['id'];

header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
header("Cache-Control: post-check=0, pre-check=0", false);
header("Pragma: no-cache");

// Função para fazer requisições à API
function chamadaAPI($url, $metodo = 'GET', $dados = null) {
    $curl = curl_init();
    curl_setopt($curl, CURLOPT_URL, $url);
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($curl, CURLOPT_CUSTOMREQUEST, $metodo);

    if ($metodo === 'POST' && $dados !== null) {
        curl_setopt($curl, CURLOPT_POSTFIELDS, json_encode($dados));
        curl_setopt($curl, CURLOPT_HTTPHEADER, [
            'Content-Type: application/json'
        ]);
    }

    $resposta = curl_exec($curl);
    $httpCode = curl_getinfo($curl, CURLINFO_HTTP_CODE);
    curl_close($curl);

    if ($httpCode !== 200) {
        return ['error' => "Erro na API: HTTP $httpCode", 'response' => $resposta];
    }

    $resultado = json_decode($resposta, true);
    if (json_last_error() !== JSON_ERROR_NONE) {
        return ['error' => 'Erro ao decodificar JSON', 'response' => $resposta];
    }

    return $resultado;
}

$baseURL = 'http://localhost/approveapi/api/api.php/'; // Substitua pela URL da API

// Verifica se o questionário foi enviado
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['questionario_id'])) {
    $questionarioId = intval($_POST['questionario_id']);
} elseif (isset($_GET['questionario_id'])) {
    $questionarioId = intval($_GET['questionario_id']);
}

if ($questionarioId === null) {
    echo "ID do questionário não informado!";
    exit;
}

// Verifica se o usuário já respondeu ao questionário
$urlVerificar = "$baseURL/verificar_resposta?id={$_SESSION['id']}&questionario_id=$questionarioId";
$jaRespondido = chamadaAPI($urlVerificar);

// Processa as respostas e correções
$pontos = 0;
$acertos = 0;
$erros = 0;

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $correcoes = [];

    $urlPerguntas = "$baseURL/perguntas?questionario_id=$questionarioId";
    $perguntas = chamadaAPI($urlPerguntas);

    foreach ($perguntas as $pergunta) {
        var_dump($perguntas);

        $perguntaId = $pergunta['pergunta_id'];
        $enunciado = $pergunta['enunciado'];
        $respostaUsuario = isset($_POST['pergunta_' . $perguntaId]) ? intval($_POST['pergunta_' . $perguntaId]) : 0;

        $urlAlternativaCorreta = "$baseURL/alternativa_correta?pergunta_id=$perguntaId";
        $alternativaCorreta = chamadaAPI($urlAlternativaCorreta);

        // Garantindo que alternativaCorreta seja um array
        if (!is_array($alternativaCorreta) || !isset($alternativaCorreta['texto'])) {
            $alternativaCorreta = ['texto' => 'Resposta correta não encontrada', 'alternativa_id' => null];
        }

        $urlAlternativaUsuario = "$baseURL/alternativa?alternativa_id=$respostaUsuario";
        $respostaUsuarioTexto = chamadaAPI($urlAlternativaUsuario);

        // Garantindo que respostaUsuarioTexto seja um array
        if (!is_array($respostaUsuarioTexto) || !isset($respostaUsuarioTexto['texto'])) {
            $respostaUsuarioTexto = ['texto' => 'Resposta do usuário não encontrada'];
        }

        if ($respostaUsuario == $alternativaCorreta['alternativa_id']) {
            $acertos++;
            $pontos += 5;
            $resultado = "Correto";
        } else {
            $erros++;
            $pontos -= 5;
            $resultado = "Errado";
        }

        // Envia a resposta para a API
        $dadosResposta = [
            'usuario_id' => $_SESSION['usuario_id'],
            'pergunta_id' => $perguntaId,
            'alternativa_id' => $respostaUsuario,
            'correta' => $resultado === "Correto" ? 1 : 0
        ];
        chamadaAPI("$baseURL/enviar_resposta", 'POST', $dadosResposta);

        $correcoes[] = [
            'pergunta_id' => $perguntaId,
            'enunciado' => $enunciado,
            'resposta_usuario' => $respostaUsuarioTexto['texto'],
            'resultado' => $resultado,
            'correta' => $alternativaCorreta['texto']
        ];
    }

    // Atualiza pontuação
    $urlPontuacao = "$baseURL/atualizar_pontuacao";
    chamadaAPI($urlPontuacao, 'POST', [
        'usuario_id' => $_SESSION['usuario_id'],
        'pontos' => $pontos
    ]);
}

// Exibe correções já respondidas
if ($jaRespondido) {
    // Código para exibir as correções recuperadas da API
}

foreach ($correcoes as $correcao) {
    echo "<p class='correcaop'><strong>Pergunta:</strong> " . htmlspecialchars($correcao['enunciado']) . "</p>";
    echo "<p class='correcaop'><strong>Sua resposta:</strong> " . htmlspecialchars($correcao['resposta_usuario']) . " - " . htmlspecialchars($correcao['resultado']) . "</p>";
    echo "<p  class='correcaopcorreta'><strong>Resposta correta:</strong> " . htmlspecialchars($correcao['correta']) . "</p>";

    echo '<a href="correcaodetalhada.php?pergunta_id=' . urlencode($correcao['pergunta_id']) . '" class="correcaobtn" target="_blank">Correção</a>';

    echo "<hr>";
}
?>
