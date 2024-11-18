<?php 

// Permite requisições de qualquer origem (ou especifique a origem exata)
header("Access-Control-Allow-Origin: *");

// Permitir os métodos HTTP desejados (ajuste conforme necessário)
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, DELETE, PUT");

// Permitir cabeçalhos personalizados, como Content-Type, Authorization e outros cabeçalhos necessários
header("Access-Control-Allow-Headers: Content-Type, Authorization, X-Requested-With, Accept");

// Responder à requisição OPTIONS (caso seja um preflight request)
if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
    // Retorna um status 200 OK para preflight request
    header('HTTP/1.1 200 OK');
    exit(); // Previne execução para requisições OPTIONS
}

// Inclua o arquivo de conexão com o banco de dados
include_once 'conexao.php'; // Conexão com o banco

header("Content-Type: application/json");

$requestMethod = $_SERVER['REQUEST_METHOD'];
$uri = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
$uriParts = explode('/', trim($uri, '/')); // Explode a URL por "/"

// Se o caminho contiver prefixos, remova-os
$uri = str_replace('/approveapi/api', '', $uri);

switch ($uri) {
    case '/api.php/register':  // Rota de registro
        if ($requestMethod === 'POST') {
            registerUser(); // Chama a função de cadastro
        } else {
            http_response_code(405);
            echo json_encode(['error' => 'Método não permitido.']);
        }
        break;

    case '/api.php/login':  // Rota de login
        if ($requestMethod === 'POST') {
            loginUser(); // Chama a função de login
        } else {
            http_response_code(405);
            echo json_encode(['error' => 'Método não permitido.']);
        }
        break;

    case '/api.php/materias':  // Rota de matérias
        if ($requestMethod === 'GET') {
            getMaterias(); // Chama a função de listar as matérias
        } else {
            http_response_code(405);
            echo json_encode(['error' => 'Método não permitido.']);
        }
        break;
    case '/api.php/subconteudos':  // Rota para listar subconteúdos
            if ($requestMethod === 'GET') {
                getSubconteudos(); // Chama a função para obter os subconteúdos
            } else {
                http_response_code(405);
                echo json_encode(['error' => 'Método não permitido.']);
            }
            break;
    case '/api.php/videoaulas':
                if ($requestMethod === 'GET') {
                    getVideoaulas(); // Chama a função para buscar vídeoaulas
                } else {
                    http_response_code(405);
                    echo json_encode(['error' => 'Método não permitido.']);
                }
                break;
    case '/api.php/questionarios':
                    if ($requestMethod === 'GET') {
                        getQuestionarios(); // Obtém os questionários por subconteudo_id
                    } else {
                        http_response_code(405);
                        echo json_encode(['error' => 'Método não permitido.']);
                    }
                    break;
    case '/api.php/perguntas':
                    if ($requestMethod === 'GET') {
                        getPerguntas(); // Obtém as perguntas por questionario_id
                    } else {
                        http_response_code(405);
                        echo json_encode(['error' => 'Método não permitido.']);
                    }
                    break;
    case '/api.php/alternativas':
                    if ($requestMethod === 'GET') {
                        getAlternativas(); // Obtém as alternativas por pergunta_id
                    } else {
                        http_response_code(405);
                        echo json_encode(['error' => 'Método não permitido.']);
                    }
                    break;
    case '/api.php/correcoes':
                    if ($requestMethod === 'GET') {
                        getCorrecoes(); // Obtém as correções por pergunta_id
                    } else {
                        http_response_code(405);
                        echo json_encode(['error' => 'Método não permitido.']);
                    }
                    break;
    case '/api.php/total-respostas':
                        if ($requestMethod === 'GET') {
                            getTotalRespostas(); // Obtem o total de respostas de um questionário para um usuário
                        } else {
                            http_response_code(405);
                            echo json_encode(['error' => 'Método não permitido.']);
                        }
                        break;
    case '/api.php/adicionar-resposta':
                        if ($requestMethod === 'POST') {
                            adicionarRespostaUsuario(); // Insere uma resposta do usuário
                        } else {
                            http_response_code(405);
                            echo json_encode(['error' => 'Método não permitido.']);
                        }
                        break;
    case '/api.php/pontuacoes':
                        if ($requestMethod === 'GET') {
                            getPontuacaoUsuario(); // Obtém os pontos de um usuário
                        } else if ($requestMethod === 'PUT') {
                            atualizarPontuacaoUsuario(); // Atualiza os pontos de um usuário
                        } else if ($requestMethod === 'POST') {
                            criarPontuacaoUsuario(); // Cria uma nova pontuação para um usuário
                        } else {
                            http_response_code(405);
                            echo json_encode(['error' => 'Método não permitido.']);
                        }
                        break;
    case '/api.php/adicionar-resposta-questionario':
                        if ($requestMethod === 'POST') {
                            adicionarRespostaQuestionario(); // Insere a resposta de um usuário a um questionário
                        } else {
                            http_response_code(405);
                            echo json_encode(['error' => 'Método não permitido.']);
                        }
                        break;
                    default:
                        http_response_code(404);
                        echo json_encode(['error' => 'Rota não encontrada.']);
                        break;
                }
                
            
   


function getTotalRespostas() {
    global $conexao;

    $usuario_id = isset($_GET['usuario_id']) ? intval($_GET['usuario_id']) : null;
    $questionario_id = isset($_GET['questionario_id']) ? intval($_GET['questionario_id']) : null;

    if (is_null($usuario_id) || is_null($questionario_id)) {
        http_response_code(400);
        echo json_encode(['error' => 'Parâmetros usuario_id e questionario_id são obrigatórios.']);
        return;
    }

    $sql = "SELECT COUNT(*) AS total FROM respostas_questionarios WHERE usuario_id = ? AND questionario_id = ?";
    $stmt = mysqli_prepare($conexao, $sql);
    mysqli_stmt_bind_param($stmt, 'ii', $usuario_id, $questionario_id);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);

    if ($row = mysqli_fetch_assoc($result)) {
        http_response_code(200);
        echo json_encode(['total' => $row['total']]);
    } else {
        http_response_code(404);
        echo json_encode(['error' => 'Nenhuma resposta encontrada.']);
    }

    mysqli_stmt_close($stmt);
}

// Função para inserir uma resposta do usuário
function adicionarRespostaUsuario() {
    global $conexao;

    $inputData = json_decode(file_get_contents('php://input'), true);

    if (!isset($inputData['usuario_id'], $inputData['pergunta_id'], $inputData['alternativa_id'], $inputData['correta'])) {
        http_response_code(400);
        echo json_encode(['error' => 'Dados incompletos.']);
        return;
    }

    $sql = "INSERT INTO respostas_usuarios (usuario_id, pergunta_id, alternativa_id, correta) VALUES (?, ?, ?, ?)";
    $stmt = mysqli_prepare($conexao, $sql);
    mysqli_stmt_bind_param($stmt, 'iiii', $inputData['usuario_id'], $inputData['pergunta_id'], $inputData['alternativa_id'], $inputData['correta']);

    if (mysqli_stmt_execute($stmt)) {
        http_response_code(201);
        echo json_encode(['message' => 'Resposta adicionada com sucesso.']);
    } else {
        http_response_code(500);
        echo json_encode(['error' => 'Erro ao adicionar a resposta.']);
    }

    mysqli_stmt_close($stmt);
}

// Função para obter a pontuação de um usuário
function getPontuacaoUsuario() {
    global $conexao;

    $usuario_id = isset($_GET['usuario_id']) ? intval($_GET['usuario_id']) : null;

    if (is_null($usuario_id)) {
        http_response_code(400);
        echo json_encode(['error' => 'O parâmetro usuario_id é obrigatório.']);
        return;
    }

    $sql = "SELECT pontos FROM pontuacoes WHERE usuario_id = ?";
    $stmt = mysqli_prepare($conexao, $sql);
    mysqli_stmt_bind_param($stmt, 'i', $usuario_id);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);

    if ($row = mysqli_fetch_assoc($result)) {
        http_response_code(200);
        echo json_encode(['pontos' => $row['pontos']]);
    } else {
        http_response_code(404);
        echo json_encode(['error' => 'Nenhuma pontuação encontrada.']);
    }

    mysqli_stmt_close($stmt);
}

// Função para atualizar a pontuação de um usuário
function atualizarPontuacaoUsuario() {
    global $conexao;

    $inputData = json_decode(file_get_contents('php://input'), true);

    if (!isset($inputData['usuario_id'], $inputData['pontos'])) {
        http_response_code(400);
        echo json_encode(['error' => 'Dados incompletos.']);
        return;
    }

    $sql = "UPDATE pontuacoes SET pontos = ? WHERE usuario_id = ?";
    $stmt = mysqli_prepare($conexao, $sql);
    mysqli_stmt_bind_param($stmt, 'ii', $inputData['pontos'], $inputData['usuario_id']);

    if (mysqli_stmt_execute($stmt)) {
        http_response_code(200);
        echo json_encode(['message' => 'Pontuação atualizada com sucesso.']);
    } else {
        http_response_code(500);
        echo json_encode(['error' => 'Erro ao atualizar a pontuação.']);
    }

    mysqli_stmt_close($stmt);
}

// Função para criar a pontuação de um usuário
function criarPontuacaoUsuario() {
    global $conexao;

    $inputData = json_decode(file_get_contents('php://input'), true);

    if (!isset($inputData['usuario_id'], $inputData['pontos'])) {
        http_response_code(400);
        echo json_encode(['error' => 'Dados incompletos.']);
        return;
    }

    $sql = "INSERT INTO pontuacoes (usuario_id, pontos) VALUES (?, ?)";
    $stmt = mysqli_prepare($conexao, $sql);
    mysqli_stmt_bind_param($stmt, 'ii', $inputData['usuario_id'], $inputData['pontos']);

    if (mysqli_stmt_execute($stmt)) {
        http_response_code(201);
        echo json_encode(['message' => 'Pontuação criada com sucesso.']);
    } else {
        http_response_code(500);
        echo json_encode(['error' => 'Erro ao criar a pontuação.']);
    }

    mysqli_stmt_close($stmt);
}

// Função para inserir uma resposta de questionário
function adicionarRespostaQuestionario() {
    global $conexao;

    $inputData = json_decode(file_get_contents('php://input'), true);

    if (!isset($inputData['usuario_id'], $inputData['questionario_id'])) {
        http_response_code(400);
        echo json_encode(['error' => 'Dados incompletos.']);
        return;
    }

    $sql = "INSERT INTO respostas_questionarios (usuario_id, questionario_id) VALUES (?, ?)";
    $stmt = mysqli_prepare($conexao, $sql);
    mysqli_stmt_bind_param($stmt, 'ii', $inputData['usuario_id'], $inputData['questionario_id']);

    if (mysqli_stmt_execute($stmt)) {
        http_response_code(201);
        echo json_encode(['message' => 'Resposta de questionário adicionada com sucesso.']);
    } else {
        http_response_code(500);
        echo json_encode(['error' => 'Erro ao adicionar a resposta do questionário.']);
    }

    mysqli_stmt_close($stmt);
}

function getCorrecoes() {
    global $conexao;

    $pergunta_id = isset($_GET['pergunta_id']) ? intval($_GET['pergunta_id']) : null;

    if (is_null($pergunta_id)) {
        http_response_code(400);
        echo json_encode(['error' => 'O parâmetro pergunta_id é obrigatório.']);
        return;
    }

    $sql = "SELECT * FROM correcoes WHERE pergunta_id = ?";
    $stmt = mysqli_prepare($conexao, $sql);
    mysqli_stmt_bind_param($stmt, 'i', $pergunta_id);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);

    if (mysqli_num_rows($result) > 0) {
        $correcoes = [];
        while ($row = mysqli_fetch_assoc($result)) {
            $correcoes[] = $row;
        }
        http_response_code(200);
        echo json_encode(['correcoes' => $correcoes]);
    } else {
        http_response_code(404);
        echo json_encode(['error' => 'Nenhuma correção encontrada.']);
    }
}


function getAlternativas() {
    global $conexao;

    $pergunta_id = isset($_GET['pergunta_id']) ? intval($_GET['pergunta_id']) : null;

    if (is_null($pergunta_id)) {
        http_response_code(400);
        echo json_encode(['error' => 'O parâmetro pergunta_id é obrigatório.']);
        return;
    }

    $sql = "SELECT * FROM alternativas WHERE pergunta_id = ?";
    $stmt = mysqli_prepare($conexao, $sql);
    mysqli_stmt_bind_param($stmt, 'i', $pergunta_id);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);

    if (mysqli_num_rows($result) > 0) {
        $alternativas = [];
        while ($row = mysqli_fetch_assoc($result)) {
            $alternativas[] = $row;
        }
        http_response_code(200);
        echo json_encode(['alternativas' => $alternativas]);
    } else {
        http_response_code(404);
        echo json_encode(['error' => 'Nenhuma alternativa encontrada.']);
    }
}


function getPerguntas() {
    global $conexao;

    $questionario_id = isset($_GET['questionario_id']) ? intval($_GET['questionario_id']) : null;

    if (is_null($questionario_id)) {
        http_response_code(400);
        echo json_encode(['error' => 'O parâmetro questionario_id é obrigatório.']);
        return;
    }

    $sql = "SELECT * FROM perguntas WHERE questionario_id = ?";
    $stmt = mysqli_prepare($conexao, $sql);
    mysqli_stmt_bind_param($stmt, 'i', $questionario_id);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);

    if (mysqli_num_rows($result) > 0) {
        $perguntas = [];
        while ($row = mysqli_fetch_assoc($result)) {
            $perguntas[] = $row;
        }
        http_response_code(200);
        echo json_encode(['perguntas' => $perguntas]);
    } else {
        http_response_code(404);
        echo json_encode(['error' => 'Nenhuma pergunta encontrada.']);
    }
}


function getQuestionarios() {
    global $conexao;

    $subconteudo_id = isset($_GET['subconteudo_id']) ? intval($_GET['subconteudo_id']) : null;

    if (is_null($subconteudo_id)) {
        http_response_code(400);
        echo json_encode(['error' => 'O parâmetro subconteudo_id é obrigatório.']);
        return;
    }

    $sql = "SELECT * FROM questionarios WHERE subconteudo_id = ?";
    $stmt = mysqli_prepare($conexao, $sql);
    mysqli_stmt_bind_param($stmt, 'i', $subconteudo_id);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);

    if (mysqli_num_rows($result) > 0) {
        $questionarios = [];
        while ($row = mysqli_fetch_assoc($result)) {
            $questionarios[] = $row;
        }
        http_response_code(200);
        echo json_encode(['questionarios' => $questionarios]);
    } else {
        http_response_code(404);
        echo json_encode(['error' => 'Nenhum questionário encontrado.']);
    }
}


function getVideoaulas() {
    global $conexao;

    // Verifica se o `subconteudo_id` foi passado na query string
    $subconteudo_id = isset($_GET['subconteudo_id']) ? intval($_GET['subconteudo_id']) : null;

    if (is_null($subconteudo_id)) {
        http_response_code(400);
        echo json_encode(['error' => 'O parâmetro subconteudo_id é obrigatório.']);
        return;
    }

    // Consulta no banco de dados
    $sql = "SELECT * FROM videoaulas WHERE subconteudo_id = ?";
    $stmt = mysqli_prepare($conexao, $sql);
    mysqli_stmt_bind_param($stmt, 'i', $subconteudo_id);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);

    if (mysqli_num_rows($result) > 0) {
        $videoaulas = [];

        while ($row = mysqli_fetch_assoc($result)) {
            $videoaulas[] = [
                'videoaula_id' => $row['videoaula_id'],
                'titulo' => $row['titulo'],
                'url' => $row['url'],
                'subconteudo_id' => $row['subconteudo_id'],
            ];
        }

        http_response_code(200);
        echo json_encode(['videoaulas' => $videoaulas]);
    } else {
        // Nenhum resultado encontrado
        http_response_code(404);
        echo json_encode(['error' => 'Nenhuma vídeoaula encontrada para o subconteúdo especificado.']);
    }

    mysqli_free_result($result);
    mysqli_stmt_close($stmt);
}


function getSubconteudos() {
    global $conexao;

    // Verifica se foi enviado um filtro via query string
    $materia_id = isset($_GET['materia_id']) ? intval($_GET['materia_id']) : null;

    // Base da consulta
    $sql = "SELECT * FROM subconteudos";
    $params = [];

    // Adiciona condição de filtro caso exista
    if (!is_null($materia_id)) {
        $sql .= " WHERE materia_id = ?";
        $params[] = $materia_id;
    }

    $stmt = mysqli_prepare($conexao, $sql);

    // Vincula parâmetros à consulta, caso existam
    if (!empty($params)) {
        mysqli_stmt_bind_param($stmt, str_repeat('i', count($params)), ...$params);
    }

    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);

    if (mysqli_num_rows($result) > 0) {
        $subconteudos = [];

        while ($row = mysqli_fetch_assoc($result)) {
            $subconteudos[] = [
                'subconteudo_id' => $row['subconteudo_id'],
                'nome_subconteudo' => $row['nome_subconteudo'],
                'materia_id' => $row['materia_id']
            ];
        }

        http_response_code(200);
        echo json_encode(['subconteudos' => $subconteudos]);
    } else {
        // Nenhum resultado encontrado
        http_response_code(404);
        echo json_encode(['error' => 'Nenhum subconteúdo encontrado.']);
    }

    mysqli_free_result($result);
    mysqli_stmt_close($stmt);
}



// Função de cadastro de usuário
function registerUser() {
    global $conexao;

    // Captura os dados JSON da requisição
    $inputData = json_decode(file_get_contents('php://input'), true);

    // Verifica se os dados necessários estão presentes
    if (!isset($inputData['name'], $inputData['email'], $inputData['password'])) {
        http_response_code(400);
        echo json_encode(['error' => 'Dados incompletos.']);
        return;
    }

    $name = trim($inputData['name']);
    $email = trim($inputData['email']);
    $password = $inputData['password'];

    // Hash da senha
    $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

    // Inserir no banco de dados
    $sql = "INSERT INTO usuarios (username, email, password) 
            VALUES (?, ?, ?)";
    $stmt = mysqli_prepare($conexao, $sql);
    mysqli_stmt_bind_param($stmt, 'sss', $name, $email, $hashedPassword);

    if (mysqli_stmt_execute($stmt)) {
        http_response_code(201);
        echo json_encode(['message' => 'Usuário cadastrado com sucesso.']);
    } else {
        http_response_code(500);
        echo json_encode(['error' => 'Erro ao cadastrar usuário.']);
    }

    mysqli_stmt_close($stmt);
}


// Função de login de usuário
function loginUser() {
    global $conexao;

    session_start(); // Inicia a sessão

    // Captura os dados JSON da requisição
    $inputData = json_decode(file_get_contents('php://input'), true);

    // Verifica se os dados necessários estão presentes
    if (!isset($inputData['email'], $inputData['password'])) {
        http_response_code(400);
        echo json_encode(['error' => 'Dados incompletos.']);
        return;
    }

    $email = trim($inputData['email']);
    $password = $inputData['password'];

    // Consulta o banco de dados para verificar o usuário
    $sql = "SELECT * FROM usuarios WHERE email = ?";
    $stmt = mysqli_prepare($conexao, $sql);
    mysqli_stmt_bind_param($stmt, 's', $email);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);

    if (mysqli_num_rows($result) < 1) {
        // Se o usuário não for encontrado
        http_response_code(404);
        echo json_encode(['error' => 'Usuário não encontrado.']);
        return;
    }

    // Obter os dados do usuário
    $user = mysqli_fetch_assoc($result);

    // Verificar se a senha fornecida corresponde ao hash armazenado
    if (password_verify($password, $user['password'])) {
        // Iniciar a sessão do usuário
        $_SESSION['email'] = $user['email'];
        $_SESSION['username'] = $user['username'];
        $_SESSION['id'] = $user['id'];

        http_response_code(200);
        echo json_encode([
            'message' => 'Login bem-sucedido',
            'user' => [
                'email' => $user['email'],
                'username' => $user['username'],
                'id' => $user['id']
            ]
        ]);
    } else {
        // Senha incorreta
        http_response_code(401);
        echo json_encode(['error' => 'Senha incorreta.']);
    }

    mysqli_stmt_close($stmt);
}


// Função para obter as matérias
function getMaterias() {
    global $conexao;

    // Consulta no banco de dados para pegar as matérias
    $sql = "SELECT * FROM materias";
    $result = mysqli_query($conexao, $sql);

    if (mysqli_num_rows($result) > 0) {
        $materias = [];
        
        while ($row = mysqli_fetch_assoc($result)) {
            $materias[] = [
                'id' => $row['id'],
                'materias_nome' => $row['materias_nome'],
            ];
        }

        // Retorna a lista de matérias em formato JSON
        http_response_code(200);
        echo json_encode(['materias' => $materias]);
    } else {
        // Se não encontrar nenhuma matéria
        http_response_code(404);
        echo json_encode(['error' => 'Nenhuma matéria encontrada.']);
    }

    mysqli_free_result($result);
}  

?>