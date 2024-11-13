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
    case '/api.php/subconteudos':  // Rota de subconteúdos
            if ($requestMethod === 'GET') {
                getSubconteudos(); // Chama a função de listar os subconteúdos
            } else {
                http_response_code(405);
                echo json_encode(['error' => 'Método não permitido.']);
            }
            break;
    case '/api.php/videoaulas':  
                if ($requestMethod === 'GET') {
                    getVideoaulas(); // Chama a função de listar as videoaulas
                } else {
                    http_response_code(405);
                    echo json_encode(['error' => 'Método não permitido.']);
                }
                break;
        
            // Rota de alternativas
    case '/api.php/alternativas':  
                if ($requestMethod === 'GET') {
                    getAlternativas(); // Chama a função de listar as alternativas
                } else {
                    http_response_code(405);
                    echo json_encode(['error' => 'Método não permitido.']);
                }
                break;
        
            // Rota de perguntas
    case '/api.php/perguntas':  
                if ($requestMethod === 'GET') {
                    getPerguntas(); // Chama a função de listar as perguntas
                } else {
                    http_response_code(405);
                    echo json_encode(['error' => 'Método não permitido.']);
                }
                break;
        
            // Rota de questionarios
    case '/api.php/questionarios':  
                if ($requestMethod === 'GET') {
                    getQuestionarios(); // Chama a função de listar os questionarios
                } else {
                    http_response_code(405);
                    echo json_encode(['error' => 'Método não permitido.']);
                }
                break;
    case '/api.php/correcoes':  // Rota de correções
                    if ($requestMethod === 'GET') {
                        getCorrecoes(); // Chama a função de listar as correções
                    } else {
                        http_response_code(405);
                        echo json_encode(['error' => 'Método não permitido.']);
                    }
                    break;
    
        
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
        // Senha correta, retornar os dados do usuário (não deve ser em texto claro)
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

function getSubconteudos() {
    global $conexao;

    // Consulta no banco de dados para pegar os subconteúdos
    $sql = "SELECT * FROM subconteudos";
    $result = mysqli_query($conexao, $sql);

    if (mysqli_num_rows($result) > 0) {
        $subconteudos = [];
        
        while ($row = mysqli_fetch_assoc($result)) {
            $subconteudos[] = [
                'subconteudo_id' => $row['subconteudo_id'],
                'nome' => $row['nome'],
                'materia_id' => $row['materia_id'],
            ];
        }

        // Retorna a lista de subconteúdos em formato JSON
        http_response_code(200);
        echo json_encode(['subconteudos' => $subconteudos]);
    } else {
        // Se não encontrar nenhum subconteúdo
        http_response_code(404);
        echo json_encode(['error' => 'Nenhum subconteúdo encontrado.']);
    }

    mysqli_free_result($result);
}

function getVideoaulas() {
    global $conexao;

    $sql = "SELECT * FROM videoaulas";
    $result = mysqli_query($conexao, $sql);

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
        http_response_code(404);
        echo json_encode(['error' => 'Nenhuma videoaula encontrada.']);
    }

    mysqli_free_result($result);
}

// Função para obter as alternativas
function getAlternativas() {
    global $conexao;

    $sql = "SELECT * FROM alternativas";
    $result = mysqli_query($conexao, $sql);

    if (mysqli_num_rows($result) > 0) {
        $alternativas = [];

        while ($row = mysqli_fetch_assoc($result)) {
            $alternativas[] = [
                'alternativa_id' => $row['alternativa_id'],
                'texto' => $row['texto'],
                'correta' => $row['correta'],
                'pergunta_id' => $row['pergunta_id'],
            ];
        }

        http_response_code(200);
        echo json_encode(['alternativas' => $alternativas]);
    } else {
        http_response_code(404);
        echo json_encode(['error' => 'Nenhuma alternativa encontrada.']);
    }

    mysqli_free_result($result);
}

// Função para obter as perguntas
function getPerguntas() {
    global $conexao;

    $sql = "SELECT * FROM perguntas";
    $result = mysqli_query($conexao, $sql);

    if (mysqli_num_rows($result) > 0) {
        $perguntas = [];

        while ($row = mysqli_fetch_assoc($result)) {
            $perguntas[] = [
                'pergunta_id' => $row['pergunta_id'],
                'enunciado' => $row['enunciado'],
                'questionario_id' => $row['questionario_id'],
            ];
        }

        http_response_code(200);
        echo json_encode(['perguntas' => $perguntas]);
    } else {
        http_response_code(404);
        echo json_encode(['error' => 'Nenhuma pergunta encontrada.']);
    }

    mysqli_free_result($result);
}

// Função para obter os questionarios
function getQuestionarios() {
    global $conexao;

    $sql = "SELECT * FROM questionarios";
    $result = mysqli_query($conexao, $sql);

    if (mysqli_num_rows($result) > 0) {
        $questionarios = [];

        while ($row = mysqli_fetch_assoc($result)) {
            $questionarios[] = [
                'questionario_id' => $row['questionario_id'],
                
                'subconteudo_id' => $row['subconteudo_id'],
            ];
        }

        http_response_code(200);
        echo json_encode(['questionarios' => $questionarios]);
    } else {
        http_response_code(404);
        echo json_encode(['error' => 'Nenhum questionário encontrado.']);
    }

    mysqli_free_result($result);
}

function getCorrecoes() {
    global $conexao;

    // Consulta no banco de dados para pegar as correções
    $sql = "SELECT * FROM correcoes";
    $result = mysqli_query($conexao, $sql);

    if (mysqli_num_rows($result) > 0) {
        $correcoes = [];

        while ($row = mysqli_fetch_assoc($result)) {
            $correcoes[] = [
                'correcao_id' => $row['correcao_id'],
                'pergunta_id' => $row['pergunta_id'],
                'texto' => $row['texto'],
            ];
        }

        // Retorna a lista de correções em formato JSON
        http_response_code(200);
        echo json_encode(['correcoes' => $correcoes]);
    } else {
        // Se não encontrar nenhuma correção
        http_response_code(404);
        echo json_encode(['error' => 'Nenhuma correção encontrada.']);
    }

    mysqli_free_result($result);
}



?>