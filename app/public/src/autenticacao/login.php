<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Approve - Login</title>
    <link rel="shortcut icon" href="../../assets/img/favicon.png" type="image/png">
    <link rel="stylesheet" href="../../assets/css/reset.css">
    <link rel="stylesheet" href="../../assets/css/autenticacao.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Rakkas&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap" rel="stylesheet">
</head>
<body>
<div class="englobaTudoCadastro">
    <div class="containerCadastro">
        <div class="wrapper">
            <form id="loginForm">
                <h1>LOGIN</h1>
                <div class="inputBox">
                    <label for="email">EMAIL</label>
                    <input
                        type="email"
                        id="email"
                        name="email"
                        placeholder="DIGITE O SEU EMAIL"
                        required
                    />
                    <box-icon type="solid" name="user"></box-icon>
                </div>
                <div class="inputBox">
                    <label for="password">SENHA</label>
                    <input
                        type="password"
                        id="password"
                        name="password"
                        placeholder="DIGITE A SUA SENHA"
                        required
                    />
                    <box-icon type="solid" name="lock-alt"></box-icon>
                </div>
                <button type="submit" class="btn">ENTRAR</button>
                <div class="registerLink">
                    <p>Não possui conta?<a href="register.php" class="cadastr"> Cadastre-se</a></p>
                </div>
            </form>
        </div>
        <img class="img" src="../../assets/img/muie.png" alt="Imagem de Login"> 
    </div>
    <div class="footerHome">
        <p class="footerHomeP">APPROVE ® 2024</p>
    </div> 
</div>

<?php include ('../../assets/components/acbbotao.php'); ?>
<script src="../../assets/js/acessibilidade.js"></script>

<script>
    // Função para fazer a requisição de login via API
    document.getElementById('loginForm').addEventListener('submit', async function(event) {
        event.preventDefault(); // Previne o comportamento padrão de envio do formulário

        const email = document.getElementById('email').value;
        const password = document.getElementById('password').value;

        const data = {
            email: email,
            password: password
        };

        try {
            const response = await fetch('http://localhost/approveapi/api/api.php/login', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(data)
            });

            const result = await response.json();

            if (response.ok) {
                // Login bem-sucedido, redirecionar ou mostrar mensagem
                alert('Login bem-sucedido!');
                window.location.href = '../funcoes/home.php'; // Redireciona para a página de home
            } else {
                // Se houve erro (senha incorreta ou usuário não encontrado)
                alert(result.error || 'Erro no login');
            }
        } catch (error) {
            // Em caso de falha na requisição
            console.error('Erro na requisição:', error);
            alert('Ocorreu um erro. Tente novamente mais tarde.');
        }
    });
</script>

</body>
</html>