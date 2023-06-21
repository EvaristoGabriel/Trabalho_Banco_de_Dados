<html>
<?php
include 'conexao.php';
include 'header.php';
?>

<?php
$query = "SELECT nome, url FROM treinador;";
$resultadoTreinador = pg_query($pdo, $query);
if (!$resultadoTreinador) {
    echo "Não foi possível executar a query treinador";
    exit;
}

$query = "SELECT nome, url,numero_pokedex FROM pokemon ORDER BY numero_pokedex;";
$resultado = pg_query($pdo, $query);

if (!$resultado) {
    echo "Não foi possível executar a query pokemon";
    exit;
}

$query = "SELECT u.nome AS nome, u.url AS url,
s.nome AS nome, s.url AS url,
me.nome AS nome, me.url AS url
FROM mochila m
RIGHT JOIN utilitario u ON u.id_mochila = m.id
RIGHT JOIN seguravel s ON s.id_mochila = m.id
RIGHT JOIN medicinal me ON me.id_mochila = m.id;
";
$resultadoitens = pg_query($pdo, $query);

if (!$resultadoitens) {
    echo "Não foi possível executar a query itens";
    exit;
}

?>


<body>
    <h3 class="h3-title">Pokémons</h3>
    <div id="myCarousel1" class="carousel slide carouselTam" data-ride="carousel">
        <a class="a" href="./pokemon.php">
            <div class="carousel-inner">
                <?php $contador = 0; ?>
                <?php while ($row1 = pg_fetch_array($resultado, null, PGSQL_ASSOC)) : ?>
                    <?php if ($contador % 3 === 0) : ?>
                        <div class="carousel-item <?= $contador === 0 ? 'active' : '' ?>">
                            <div class="row">
                            <?php endif; ?>

                            <div class="col-md-4 centralizer">
                                <img class="img-carousel-mine" src="<?= $row1['url'] ?>">
                                <h3 class="name"><?= $row1['nome'] ?></h3>
                            </div>

                            <?php if ($contador % 3 === 2 || $contador === pg_num_rows($resultado) - 1) : ?>
                            </div>
                        </div>
                    <?php endif; ?>

                    <?php $contador++; ?>
                <?php endwhile; ?>
            </div>

            <a class="carousel-control-prev" href="#myCarousel1" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#myCarousel1" data-slide="next">
                <span class="carousel-control-next-icon"></span>
            </a>
        </a>
    </div>
    <h3 class="h3-title">Treinadores</h3>

    <div id="myCarousel2" class="carousel slide carouselTam" data-ride="carousel">
        <a class="a" href="./treinador.php">
            <div class="carousel-inner">
                <?php $contador = 0; ?>
                <?php while ($row1 = pg_fetch_array($resultadoTreinador, null, PGSQL_ASSOC)) : ?>
                    <?php if ($contador % 3 === 0) : ?>
                        <div class="carousel-item <?= $contador === 0 ? 'active' : '' ?>">
                            <div class="row">
                            <?php endif; ?>

                            <div class="col-md-4 centralizer">
                                <img class="img-carousel-mine" src="<?= $row1['url'] ?>">
                                <h3 class="name"><?= $row1['nome'] ?></h3>
                            </div>

                            <?php if ($contador % 3 === 2 || $contador === pg_num_rows($resultadoTreinador) - 1) : ?>
                            </div>
                        </div>
                    <?php endif; ?>

                    <?php $contador++; ?>
                <?php endwhile; ?>
            </div>

            <a class="carousel-control-prev" href="#myCarousel2" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#myCarousel2" data-slide="next">
                <span class="carousel-control-next-icon"></span>
            </a>
        </a>
    </div>

    <h3 class="h3-title">Itens</h3>
    <div id="myCarousel3" class="carousel slide carouselTam" data-ride="carousel">
        <a class="a" href="./itens.php">
            <div class="carousel-inner">
                <?php $contador = 0; ?>
                <?php
                // echo (pg_num_rows($resultadoitens));
                while ($row1 = pg_fetch_array($resultadoitens, null, PGSQL_ASSOC)) : ?>
                    <?php if ($contador % 3 === 0) : ?>
                        <div class="carousel-item <?= $contador === 0 ? 'active' : '' ?>">
                            <div class="row">
                            <?php endif; ?>

                            <div class="col-md-4 centralizer">
                                <img class="img-carousel-mine" src="<?= $row1['url'] ?>" alt="<?= $row1['nome'] ?>">
                                <h3 class="name"><?= $row1['nome'] ?></h3>
                            </div>

                            <?php if ($contador % 3 === 2 || $contador === pg_num_rows($resultadoitens) - 1) : ?>
                            </div>
                        </div>
                    <?php endif; ?>

                    <?php $contador++; ?>
                <?php endwhile; ?>
            </div>

            <a class="carousel-control-prev" href="#myCarousel3" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#myCarousel3" data-slide="next">
                <span class="carousel-control-next-icon"></span>
            </a>
        </a>
    </div>
</body>

<?php
include 'footer.php';
?>

</html>