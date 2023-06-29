<html>
<?php
include 'conexao.php';
include 'header.php';
?>

<?php
$query = "select nome, url from treinador;";
$resultado = pg_query($pdo, $query);

if (!$resultado) {
    echo "Não foi possível executar a query treinador";
    exit;
}
?>

<body>
    <div class="pokemons">
        <?php
        while ($row = pg_fetch_array($resultado, null, PGSQL_ASSOC)) : ?>
        <a href="" class="a-poke">
            <div class="item-pokemon">
                <img class="img-poke imagem" src="<?= $row['url'] ?>">
                <p class="text"><?= $row['nome'] ?></p>
            </div>
        </a>
        <?php endwhile; ?>
    </div>
</body>
<?php
include 'footer.php';
?>

</html>