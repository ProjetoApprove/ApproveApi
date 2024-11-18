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

// Fazer uma requisição à API para obter o vídeo correspondente
$apiUrl = "http://localhost/approveapi/api/api.php/videoaulas?subconteudo_id={$subconteudoId}";
$response = file_get_contents($apiUrl);

if ($response === FALSE) {
    echo "Erro ao buscar o vídeo.";
    exit();
}

// Decodificar a resposta JSON
$data = json_decode($response, true);

// Verificar se o vídeo foi encontrado na estrutura de resposta
if (empty($data['videoaulas']) || empty($data['videoaulas'][0]['url'])) {
    echo "Vídeo não encontrado ou URL inválida.";
    exit();
}

// Pegar o vídeo do primeiro item da lista
$video = $data['videoaulas'][0];

// Função para extrair o URL do vídeo do YouTube
function getYouTubeEmbedUrl($url) {
    // Verifica se a URL é válida
    $url = trim($url);
    
    // Expressão regular para capturar o ID do vídeo do YouTube
    preg_match("/(?:https?:\/\/)?(?:www\.)?(?:youtube\.com\/watch\?v=|youtu\.be\/)([a-zA-Z0-9_-]+)/", $url, $matches);
    
    // Verifica se o ID do vídeo foi encontrado
    if (isset($matches[1])) {
        return "https://www.youtube.com/embed/" . $matches[1] . "?autoplay=1";
    } else {
        return '';  // Retorna uma string vazia caso a URL não seja válida
    }
}

// Obter o URL do vídeo do YouTube
$embedUrl = getYouTubeEmbedUrl($video['url']);

// Verificar se o URL do vídeo foi gerado corretamente
if (empty($embedUrl)) {
    echo "Não foi possível carregar o vídeo. URL inválida.";
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Approve - Vídeo</title>
    <link rel="shortcut icon" href="../../assets/img/favicon.png" type="image/png">
    <link rel="stylesheet" href="../../assets/css/reset.css">
    <link rel="stylesheet" href="../../assets/css/video.css">
    <link rel="stylesheet" href="../../assets/css/navbar.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap" rel="stylesheet">
</head>
<body>
    <div class="container">
        <?php include ('../../assets/components/navbar.php'); ?>
        
        <div class="contentwrapper">
            <div class="videowrapper">
                <h1 class="videoH1"><?php echo htmlspecialchars($video['titulo']); ?></h1>
                
                <?php if ($embedUrl): ?>
                    <iframe class="videoIframe" width="770" height="450" src="<?php echo htmlspecialchars($embedUrl); ?>" 
                            frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
                            allowfullscreen></iframe>
                <?php else: ?>
                    <p>URL de vídeo inválida.</p>
                <?php endif; ?>                
            </div>
        </div>
    </div>
    <?php include ('../../assets/components/acbbotao.php'); ?>
    <script src="../../assets/js/acessibilidade.js"></script>    
</body>
</html>
