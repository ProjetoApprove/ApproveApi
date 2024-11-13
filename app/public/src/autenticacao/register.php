<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Approve - Cadastro</title>
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
                <form id="registerForm" autocomplete="off">
                    <h1 class="registerH1">CADASTRO</h1>
                    <div class="inputBox">
                        <label for="name">NOME</label>
                        <input type="text" id="name" name="name" placeholder="DIGITE O SEU NOME" required />
                    </div>
                    <div class="inputBox">
                        <label for="email">EMAIL</label>
                        <input type="email" id="email" name="email" placeholder="DIGITE O SEU EMAIL" required />
                    </div>
                    <div class="inputBox">
                        <label for="password">SENHA</label>
                        <input type="password" id="password" name="password" placeholder="DIGITE A SUA SENHA" required />
                    </div>
                    <button type="submit" class="btn">CADASTRAR</button>
                    <div class="registerLink">
                        <p>Já possui uma conta?<a href="login.php" class="cadastr"> Entrar</a></p>
                    </div>
                </form>
            </div>
            <img class="img2" src="../../assets/img/muie2.png" alt="" />
        </div>
        <div class="footerHome">
            <p class="footerHomeP">APPROVE ® 2024</p>
        </div> 
    </div>
    <?php include ('../../assets/components/acbbotao.php'); ?>
    <script src="../../assets/js/acessibilidade.js"></script>

    <!-- JavaScript para enviar os dados do formulário em JSON -->
    <script>
        document.getElementById('registerForm').addEventListener('submit', function(event) {
            event.preventDefault(); // Evita o envio tradicional do formulário

            // Coleta os dados do formulário
            const formData = new FormData(this);
            const name = formData.get('name');
            const email = formData.get('email');
            const password = formData.get('password');
            
            // Empacota os dados em um objeto
            const data = {
                name: name,
                email: email,
                password: password
            };

            // Envia os dados para a API via fetch
            fetch('http://localhost/approveapi/api/api.php/register', { // Ajuste a URL conforme sua estrutura local
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(data)
            })
            .then(response => response.json())
            .then(data => {
                if (data.message) {
                    alert(data.message); // Exibe uma mensagem de sucesso
                    window.location.href = 'login.php'; // Redireciona para o login
                } else {
                    alert(data.error); // Exibe o erro caso ocorra
                }
            })
            .catch(error => {
                console.error('Erro ao enviar dados:', error);
                alert('Ocorreu um erro. Tente novamente.');
            });
        });
    </script>

</body>
</html>
