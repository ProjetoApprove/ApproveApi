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

// Verifica se o ID do subconteúdo foi fornecido na URL
if (!isset($_GET['subconteudo_id']) || empty($_GET['subconteudo_id'])) {
    echo "ID do subconteúdo não informado.";
    exit();
}

$subconteudoId = intval($_GET['subconteudo_id']); // Garante que o ID seja um número inteiro

// Função para fazer requisições GET à API
function fetchFromApi($url) {
    $response = file_get_contents($url);
    if ($response === false) {
        http_response_code(500);
        die("Erro ao acessar a API em: $url");
    }
    return json_decode($response, true);
}

// Obter o questionário relacionado ao subconteúdo
$questionarioUrl = "http://localhost/approveapi/api/api.php/questionarios?subconteudo_id={$subconteudoId}";
$questionariosData = fetchFromApi($questionarioUrl);

if (empty($questionariosData['questionarios'])) {
    echo "Nenhum questionário encontrado para o subconteúdo especificado.";
    exit();
}

// Supondo que exista apenas um questionário por subconteúdo
$questionario = $questionariosData['questionarios'][0];
$questionarioId = $questionario['questionario_id'];

// Obter perguntas do questionário
$perguntasUrl = "http://localhost/approveapi/api/api.php/perguntas?questionario_id={$questionarioId}";
$perguntasData = fetchFromApi($perguntasUrl);

if (empty($perguntasData['perguntas'])) {
    echo "Nenhuma pergunta disponível para este questionário.";
    exit();
}

// Obter alternativas para cada pergunta
$perguntasComAlternativas = [];
foreach ($perguntasData['perguntas'] as $pergunta) {
    $alternativasUrl = "http://localhost/approveapi/api/api.php/alternativas?pergunta_id={$pergunta['pergunta_id']}";
    $alternativasData = fetchFromApi($alternativasUrl);
    $pergunta['alternativas'] = $alternativasData['alternativas'] ?? [];
    $perguntasComAlternativas[] = $pergunta;
}


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Approve - Questões</title>
    <link rel="shortcut icon" href="../../assets/img/favicon.png" type="image/png">
    <link rel="stylesheet" href="../../assets/css/reset.css">
    <link rel="stylesheet" href="../../assets/css/questionario.css">
    <link rel="stylesheet" href="../../assets/css/navbargambiarra.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap" rel="stylesheet">
</head>
<body>
    <div class="container">
        <?php include ('../../assets/components/navbargambiarra.php'); ?>

        <div class="contentwrapper">
            <div class="questionariowrapper">
                <form action="correcao.php" method="POST">
                    <input type="hidden" name="questionario_id" value="<?= $questionarioId; ?>">

                    <?php
                    $perguntaCount = 0;
                    $totalPerguntas = count($perguntasComAlternativas);

                    foreach ($perguntasComAlternativas as $pergunta) {
                        $perguntaCount++;
                        echo "<div class='pergunta' id='pergunta_$perguntaCount'>";
                        echo "<h3 class='perguntah3'>" . nl2br($pergunta['enunciado']) . "</h3>";

                        foreach ($pergunta['alternativas'] as $alternativa) {
                            echo "<label class='alternativaLabel'>
                                    <input class='perguntainput' type='radio' name='pergunta_" . $pergunta['pergunta_id'] . "' value='" . $alternativa['alternativa_id'] . "' required data-question-id='" . $pergunta['pergunta_id'] . "'>
                                    " . $alternativa['texto'] . "
                                  </label><br>";
                        }

                        echo "</div>";
                    }
                    ?>

                    <button class="questionariobotao" type="button" onclick="prevQuestion()">Anterior</button>
                    <button class="questionariobotao" type="button" onclick="nextQuestion()">Próxima</button>
                    <input class="questionariobotaofim" type="submit" value="Enviar" id="btnEnviar" style="display: none;">
                </form>
            </div>
        </div>
    </div>

    <script>
        let currentQuestion = 1;
        const totalQuestions = <?= $totalPerguntas; ?>;
        
        document.addEventListener('DOMContentLoaded', function() {
            showQuestion(currentQuestion);
            document.querySelectorAll('.perguntainput').forEach(input => {
                input.addEventListener('change', updateSubmitButtonVisibility);
            });
        });

        function showQuestion(questionNumber) {
            for (let i = 1; i <= totalQuestions; i++) {
                document.getElementById('pergunta_' + i).style.display = (i === questionNumber) ? '' : 'none';
            }
            if (questionNumber === totalQuestions) {
                updateSubmitButtonVisibility();
                document.querySelector("button[onclick='nextQuestion()']").style.display = 'none';
            } else {
                document.getElementById('btnEnviar').style.display = 'none';
                document.querySelector("button[onclick='nextQuestion()']").style.display = '';
            }
            updateNavigationButtons(questionNumber);
        }

        function updateSubmitButtonVisibility() {
            const allAnswered = [...document.querySelectorAll('.pergunta')].every(pergunta => {
                const inputs = pergunta.querySelectorAll('.perguntainput');
                return [...inputs].some(input => input.checked);
            });
            if (currentQuestion === totalQuestions && allAnswered) {
                document.getElementById('btnEnviar').style.display = '';
            } else {
                document.getElementById('btnEnviar').style.display = 'none';
            }
        }

        function updateNavigationButtons(questionNumber) {
            if (questionNumber === 1) {
                document.querySelector("button[onclick='prevQuestion()']").style.display = 'none';
            } else {
                document.querySelector("button[onclick='prevQuestion()']").style.display = '';
            }
        }

        function nextQuestion() {
            if (currentQuestion < totalQuestions) {
                currentQuestion++;
                showQuestion(currentQuestion);
            }
        }

        function prevQuestion() {
            if (currentQuestion > 1) {
                currentQuestion--;
                showQuestion(currentQuestion);
            }
        }
    </script>
    <?php include ('../../assets/components/acbbotao.php'); ?>
    <script src="../../assets/js/acessibilidade.js"></script>
</body>
</html>
