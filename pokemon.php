<html>
<?php
include 'conexao.php';
include 'header.php';
?>

<?php
$query = "select nome, url,numero_pokedex from pokemon order by numero_pokedex asc;";
$resultado = pg_query($pdo, $query);

if (!$resultado) {
    echo "Não foi possível executar a query pokemon";
    exit;
}
?>

<body>
    <div class="pokemons">
        <?php
        while ($row = pg_fetch_array($resultado, null, PGSQL_ASSOC)) : ?>
            <div class="item-pokemon">
                <img class="img-poke" src="<?= $row['url'] ?>">
                <p><?= $row['nome'] ?></p>
                <p><?= $row['numero_pokedex'] ?></p>
            </div>
        <?php endwhile; ?>
    </div>
</body>
<?php
include 'footer.php';
?>

</html>