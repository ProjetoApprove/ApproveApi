<?php
// Recuperar o id da matéria na URL
if (isset($_GET['id'])) {
    $materia_id = (int) $_GET['id'];  // Converte para inteiro
} else {
    // Se o id não for encontrado na URL, você pode definir um valor padrão ou retornar um erro.
    $materia_id = null;
    echo "Erro: ID da matéria não encontrado.";
    exit;
}
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
                <h1 class="materiaH1">Materia ID: <?php echo htmlspecialchars($materia_id); ?></h1>

                <div class="grid-container" id="subconteudos-container">
                    <!-- Os subconteúdos serão inseridos aqui via JavaScript -->
                </div>
            </div>
        </div>
    </div>

    <script>
        // Recuperar o materia_id da URL (passado pelo PHP)
        const materiaId = <?php echo $materia_id; ?>;
        
        // Função para buscar os subconteúdos da API
        function fetchSubconteudos() {
            fetch('http://localhost/approveapi/api/api/subconteudos')  // URL da sua API
                .then(response => response.json())    // Converte a resposta em JSON
                .then(data => {
                    // Filtra os subconteúdos pelo materia_id
                    const subconteudosFiltrados = data.filter(subconteudo => subconteudo.materia_id === materiaId);

                    // Pega o container onde os subconteúdos serão exibidos
                    const container = document.getElementById('subconteudos-container');

                    // Se não houver subconteúdos para esta matéria
                    if (subconteudosFiltrados.length === 0) {
                        container.innerHTML = '<p>Nenhum subconteúdo encontrado para esta matéria.</p>';
                        return;
                    }

                    // Limpar o container antes de adicionar os novos subconteúdos
                    container.innerHTML = '';

                    // Adicionar cada subconteúdo ao container
                    subconteudosFiltrados.forEach(subconteudo => {
                        const item = document.createElement('a');
                        item.classList.add('subconteudoA');
                        item.href = `escolha.php?subconteudo_id=${subconteudo.subconteudo_id}`;

                        const divItem = document.createElement('div');
                        divItem.classList.add('grid-item');

                        const imgIcon = document.createElement('img');
                        imgIcon.src = `../../assets/img/icons/icon${materiaId}.svg`;  // Usando o ícone baseado no materia_id
                        imgIcon.alt = "Ícone";
                        imgIcon.classList.add('svg-icon');

                        const pText = document.createElement('p');
                        pText.classList.add('subconteudoP');
                        pText.textContent = subconteudo.nome;

                        // Montando o item
                        divItem.appendChild(imgIcon);
                        divItem.appendChild(pText);
                        item.appendChild(divItem);

                        // Adicionar o item ao container
                        container.appendChild(item);
                    });
                })
                .catch(error => {
                    console.error('Erro ao buscar os subconteúdos:', error);
                });
        }

        // Chama a função para carregar os subconteúdos
        fetchSubconteudos();
    </script>
</body>
</html>
