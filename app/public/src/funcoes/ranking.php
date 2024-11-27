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

// URL da API para a rota criada
$apiUrl = 'http://localhost/approveapi/api/api.php/usuarios-pontuacoes'; 

// Faz a requisição para a API
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $apiUrl);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$response = curl_exec($ch);
curl_close($ch);

// Decodifica o JSON recebido
$rankingData = json_decode($response, true);

// Verifica se houve erro na API
if (!$rankingData || !isset($rankingData['usuarios_pontuacoes'])) {
    die("Erro ao acessar a API ou dados inválidos.");
}

// Dados do ranking
$usuarios = $rankingData['usuarios_pontuacoes'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Approve - Ranking</title>
    <link rel="shortcut icon" href="../../assets/img/favicon.png" type="image/png">
    <link rel="stylesheet" href="../../assets/css/reset.css">
    <link rel="stylesheet" href="../../assets/css/ranking.css">
    <link rel="stylesheet" href="../../assets/css/navbargambiarra.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap" rel="stylesheet">
</head>
<body>
<div class="container">
    <?php include ('../../assets/components/navbargambiarra.php'); ?>
    
    <div class="contentwrapper">
        <div class="rankingwrapper">
            <h1 class="rankingh1">RANKING</h1>
            <div class="classificacaoranking">
                <div class="cardsdaclassificacao">
                <div class="classificacaocard">
                    <h2 class="rankingh2">CLASSIFICAÇÃO</h2>

                    <?php
                    // Determina a classificação com base nos pontos do usuário logado
                    $totalPontosUsuario = 0;
                    foreach ($usuarios as $usuario) {
                        if (trim($usuario['username']) === $username) {
                            $totalPontosUsuario = intval($usuario['pontos']);
                            break;
                        }
                    }

                    if ($totalPontosUsuario < 100) {
                        $svg_icon = "icon-bronze.svg";
                        $classificacao = "BRONZE";
                    } elseif ($totalPontosUsuario >= 100 && $totalPontosUsuario < 200) {
                        $svg_icon = "icon-prata.svg";
                        $classificacao = "PRATA";
                    } elseif ($totalPontosUsuario >= 200 && $totalPontosUsuario < 300) {
                        $svg_icon = "icon-ouro.svg";
                        $classificacao = "OURO";
                    } elseif ($totalPontosUsuario >= 300 && $totalPontosUsuario < 400) {
                        $svg_icon = "icon-platina.svg";
                        $classificacao = "PLATINA";
                    } elseif ($totalPontosUsuario >= 400 && $totalPontosUsuario < 500) {
                        $svg_icon = "icon-desafiante.svg";
                        $classificacao = "DESAFIANTE";
                    } else {
                        $svg_icon = "icon-aprovado.svg";
                        $classificacao = "APROVADO";
                    }
                    ?>

                    <img src="../../assets/img/icons/<?php echo $svg_icon; ?>" alt="Ícone" class="svg-iconclass" />
                    <p class="rankingp"><?php echo $classificacao; ?></p>

                    <a href="classificacoes.php">
                        <button class="rankinga">COMO FUNCIONA?</button>
                    </a>
                </div>

                <div class="classificacaocard">   
                    <h2 class="rankingh2">TABELA</h2>
                    <div class="table-container">
                        <?php
                        if (!empty($usuarios)) {
                            echo "<table class='rankingtable'>";
                            echo "<tr><th>POSIÇÃO</th><th>USUÁRIO</th><th>PONTOS</th></tr>";
                            
                            $posicao = 1;
                            foreach ($usuarios as $usuario) {
                                $username = htmlspecialchars($usuario['username']);
                                $totalPontos = intval($usuario['pontos']);
                                
                                echo "<tr>";
                                echo "<td>$posicao</td>";
                                echo "<td>$username</td>";
                                echo "<td>$totalPontos</td>";
                                echo "</tr>";

                                $posicao++;
                            }
                            echo "</table>";
                        } else {
                            echo "<p class='rankingp'>Nenhum usuário encontrado.</p>";
                        }
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php include ('../../assets/components/acbbotao.php'); ?>
<script src="../../assets/js/acessibilidade.js"></script>
</body>
</html>
