<html>
<?php
include 'conexao.php';
include 'header.php';
?>

<?php
$query = "SELECT nome, url,numero_pokedex FROM pokemon ORDER BY numero_pokedex;";
$resultado = pg_query($pdo, $query);

if (!$resultado) {
    echo "Não foi possível executar a query";
    exit;
}
?>

<body>
    <h3>Pokemons</h3>

    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <ul class="carousel-indicators">
            <?php for ($i = 0; $i < pg_num_rows($resultado); $i++) : ?>
                <li data-target="#myCarousel" data-slide-to="<?= $i ?>" <?= $i === 0 ? 'class="active"' : '' ?>></li>
            <?php endfor; ?>
        </ul>

        <div class="carousel-inner">
            <?php $contador = 0; ?>
            <?php while ($row = pg_fetch_array($resultado, null, PGSQL_ASSOC)) : ?>
                <div class="carousel-item <?= $contador === 0 ? 'active' : '' ?>">
                    <img src="<?= $row['url'] ?>">
                    <h3><?= $row['nome'] ?></h3>
                </div>
                <?php $contador++; ?>
            <?php endwhile; ?>
        </div>

        <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#myCarousel" data-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

<?php
include 'footer.php';
?>

</html>