<html>
<?php
include 'conexao.php';
include 'header.php';
?>

<?php
$query = "select id, nome, url, numero_pokedex from pokemon order by numero_pokedex asc;";
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
        <a href="pokemon_esp.php?id=<?php echo $row['id']; ?>" class="a-poke">
            <div class="item-pokemon">
                <img class="img-poke imagem" src="<?= $row['url'] ?>">
                <p class="text"><?= $row['nome'] ?></p>
                <p class="text">#<?= $row['numero_pokedex'] ?></p>
                <!-- <p class="text"><?= $row['id'] ?></p> -->
            </div>
        </a>
        <?php endwhile; ?>
    </div>
</body>
<?php
include 'footer.php';
?>

</html>