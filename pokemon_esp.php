<html>
<?php
include 'conexao.php';
include 'header.php';
?>

<?php
$id = $_GET['id'];
$query = "select * from pokemon where id =$id;";
$resultado = pg_query($pdo, $query);

if (!$resultado) {
    echo "Não foi possível executar a query pokemon";
    exit;
}
$resultado = pg_fetch_array($resultado, null, PGSQL_ASSOC);
?>

<body>
    <div class="back">
        <a class="a-back" href="pokemon.php">
            <img class="img-back" src="./image/back_arrow.ico" alt="">
            <p class="text-voltar">voltar</p>
        </a>
    </div>

    <p class="title-nome"><?= $resultado['nome'] ?></p>
    <p class="title-nome">#<?= $resultado['numero_pokedex'] ?></p>
    <img class="imagem-poke-esp" src="<?= $resultado['url'] ?>" alt="<?= $resultado['nome'] ?>">
    <div class="infos">
        <p class="text-infos">Nível: <?= $resultado['nivel'] ?></p>

        <p class="text-infos">HP: <?= $resultado['hp'] ?></p>
        <div class="progress">
            <div class="progress-bar bg-info" role="progressbar" style="width: <?= ($resultado['hp'] / 700) * 100 ?>%;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="700"></div>
        </div>

        <p class="text-infos">Ataque Físico: <?= $resultado['ataque_fisico'] ?></p>
        <div class="progress">
            <div class="progress-bar bg-info" role="progressbar" style="width: <?= ($resultado['ataque_fisico'] / 700) * 100 ?>%;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="700"></div>
        </div>

        <p class="text-infos">Defesa Física: <?= $resultado['defesa_fisico'] ?></p>
        <div class="progress">
            <div class="progress-bar bg-info" role="progressbar" style="width: <?= ($resultado['defesa_fisico'] / 700) * 100 ?>%;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="700"></div>
        </div>

        <p class="text-infos">Ataque Especial: <?= $resultado['ataque_special'] ?></p>
        <div class="progress">
            <div class="progress-bar bg-info" role="progressbar" style="width: <?= ($resultado['ataque_special'] / 700) * 100 ?>%;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="700"></div>
        </div>

        <p class="text-infos">Defesa Especial: <?= $resultado['defesa_special'] ?></p>
        <div class="progress">
            <div class="progress-bar bg-info" role="progressbar" style="width: <?= ($resultado['defesa_special'] / 700) * 100 ?>%;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="700"></div>
        </div>

        <p class="text-infos">Velocidade: <?= $resultado['speed'] ?></p>
        <div class="progress">
            <div class="progress-bar bg-info" role="progressbar" style="width: <?= ($resultado['speed'] / 700) * 100 ?>%;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="700"></div>
        </div>

        <p class="text-infos">Experiencia: <?= $resultado['experiencia'] ?></p>
        <div class="progress">
            <div class="progress-bar bg-info progress-bar-striped" role="progressbar" style="width: <?= ($resultado['experiencia'] / 1125) * 100 ?>%;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="1125"></div>
        </div>

        <p class="text-infos">Status: <?= $resultado['status'] ?></p>

        <p class="text-infos">Habilidade: <?= $resultado['id_habilidade'] ?></p>

        <p class="text-infos">Equipe: <?= $resultado['id_equipe'] ?></p>

        <p class="text-infos">Natureza: <?= $resultado['id_nature'] ?></p>

    </div>
</body>
<?php
include 'footer.php';
?>

</html>