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

// Verifica se o ID da matéria foi fornecido na URL
if (!isset($_GET['id']) || empty($_GET['id'])) {
    echo "ID da matéria não informado.";
    exit();
}

$materia_id = intval($_GET['id']); // Garante que o ID seja um número inteiro

// Faz a requisição à API para buscar os subconteúdos
$apiUrl = "http://localhost/approveapi/api/api.php/subconteudos?materia_id={$materia_id}";

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $apiUrl);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

$response = curl_exec($ch);
$httpCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
curl_close($ch);

// Decodifica os subconteúdos, se a requisição foi bem-sucedida
$subconteudos = [];
if ($httpCode === 200) {
    $subconteudos = json_decode($response, true)['subconteudos'];
} else {
    echo "Erro ao buscar os subconteúdos. Código HTTP: $httpCode.";
    exit();
}

// Classes CSS de cores para os IDs das matérias
$materiaColors = [
    1 => 'cor-materia-1',
    2 => 'cor-materia-2',
    3 => 'cor-materia-3',
    4 => 'cor-materia-4',
    5 => 'cor-materia-5',
    6 => 'cor-materia-6',
    7 => 'cor-materia-7',
    8 => 'cor-materia-8',
    9 => 'cor-materia-9',
    10 => 'cor-materia-10',
    11 => 'cor-materia-11',
];

// Determina a classe de cor com base no ID da matéria
$materiaClass = $materiaColors[$materia_id] ?? 'cor-materia-1'; // Default para cor 1
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Matéria</title>
    <link rel="stylesheet" href="../../assets/css/materia.css">
    <link rel="stylesheet" href="../../assets/css/reset.css">
    <link rel="stylesheet" href="../../assets/css/navbar.css">
</head>
<body>
    <div class="container">
        <?php include ('../../assets/components/navbar.php'); ?>

        <div class="contentwrapper">
            <div class="materiaswrapper">
                <h1 class="materiaH1">Subconteúdos</h1>

                <div class="grid-container">
                    <?php if (!empty($subconteudos)): ?>
                        <?php foreach ($subconteudos as $subconteudo): ?>
                            <div class="grid-item <?= htmlspecialchars($materiaClass); ?>">
                                <a 
                                    href="escolha.php?id=<?= htmlspecialchars($subconteudo['subconteudo_id']); ?>" 
                                    class="subconteudoA">
                                    <p class="subconteudoP"><?= htmlspecialchars($subconteudo['nome_subconteudo']); ?></p>
                                </a>
                            </div>
                        <?php endforeach; ?>
                    <?php else: ?>
                        <p>Nenhum subconteúdo encontrado para esta matéria.</p>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </div>

    <?php include ('../../assets/components/acbbotao.php'); ?>
    <script src="../../assets/js/acessibilidade.js"></script>
</body>
</html>
