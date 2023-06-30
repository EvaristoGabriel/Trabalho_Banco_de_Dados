<html>
<?php
include 'conexao.php';
include 'header.php';
?>

<?php
$id = $_GET['id'];
$query = "select * from treinador where id =$id;";
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
    <img class="imagem-poke-esp" src="<?= $resultado['url'] ?>" alt="<?= $resultado['nome'] ?>">

    <div class="infos">
        <p class="text-infos treinador">Cidade: <?= $resultado['id_cidade'] ?></p>

        <p class="text-infos treinador">Tipo do Treinador: <?= $resultado['id_classe'] ?></p>

        <div class="pokemons-treinador">
            <?php
            $queryPok = "SELECT p.url as url, p.id as id FROM equipe AS e INNER JOIN pokemon AS p ON p.id_equipe = e.id WHERE e.id_treinador = $1;";
            $resultado = pg_query_params($pdo, $queryPok, array($id));
            if (!$resultado) {
                echo "Não foi possível executar a consulta";
                exit;
            }
            while ($row = pg_fetch_array($resultado, null, PGSQL_ASSOC)) :
            ?>
            <a href="pokemon_esp.php?id=<?php echo $row['id']; ?>">
                <img class="poke-treinador" src="<?= $row['url'] ?>" alt="">
            </a>
            <?php endwhile; ?>
        </div>
    </div>
</body>
<?php
include 'footer.php';
?>

</html>