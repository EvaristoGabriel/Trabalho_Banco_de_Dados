<html>
<?php
include 'conexao.php';
include 'header.php';
?>

<?php
$query = "SELECT nome, url FROM treinador;";
$resultadoTreinador = pg_query($pdo, $query);
if (!$resultadoTreinador) {
    echo "Não foi possível executar a query";
    exit;
}

$query = "SELECT nome, url,numero_pokedex FROM pokemon ORDER BY numero_pokedex;";
$resultado = pg_query($pdo, $query);

if (!$resultado) {
    echo "Não foi possível executar a query";
    exit;
}

$query = "SELECT u.nome AS utilitario_nome, u.url AS utilitario_url,
s.nome AS seguravel_nome, s.url AS seguravel_url,
me.nome AS medicinal_nome, me.url AS medicinal_url
FROM mochila m
LEFT JOIN utilitario u ON u.id_mochila = m.id
LEFT JOIN seguravel s ON s.id_mochila = m.id
LEFT JOIN medicinal me ON me.id_mochila = m.id;
";
$resultadoitens = pg_query($pdo, $query);

if (!$resultado) {
    echo "Não foi possível executar a query";
    exit;
}

?>


<body>
    <h3>Pokemons</h3>

    <div id="myCarousel1" class="carousel slide" data-ride="carousel">
        <ul class="carousel-indicators">
            <?php for ($i = 0; $i < ceil(pg_num_rows($resultado) / 3); $i++) : ?>
                <li data-target="#myCarousel" data-slide-to="<?= $i ?>" <?= $i === 0 ? 'class="active"' : '' ?>></li>
            <?php endfor; ?>
        </ul>

        <div class="carousel-inner">
            <?php $contador = 0; ?>
            <?php while ($row1 = pg_fetch_array($resultado, null, PGSQL_ASSOC)) : ?>
                <?php if ($contador % 3 === 0) : ?>
                    <div class="carousel-item <?= $contador === 0 ? 'active' : '' ?>">
                        <div class="row">
                        <?php endif; ?>

                        <div class="col-md-4 centralizer">
                            <img class="img-carousel-mine" src="<?= $row1['url'] ?>">
                            <h3><?= $row1['nome'] ?></h3>
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
    </div>
    <h3>Treinadores</h3>

    <div id="myCarousel2" class="carousel slide" data-ride="carousel">
        <ul class="carousel-indicators">
            <?php for ($i = 0; $i < ceil(pg_num_rows($resultadoTreinador) / 3); $i++) : ?>
                <li data-target="#myCarousel" data-slide-to="<?= $i ?>" <?= $i === 0 ? 'class="active"' : '' ?>></li>
            <?php endfor; ?>
        </ul>

        <div class="carousel-inner">
            <?php $contador = 0; ?>
            <?php while ($row1 = pg_fetch_array($resultadoTreinador, null, PGSQL_ASSOC)) : ?>
                <?php if ($contador % 3 === 0) : ?>
                    <div class="carousel-item <?= $contador === 0 ? 'active' : '' ?>">
                        <div class="row">
                        <?php endif; ?>

                        <div class="col-md-4 centralizer">
                            <img class="img-carousel-mine" src="<?= $row1['url'] ?>">
                            <h3><?= $row1['nome'] ?></h3>
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
    </div>

    <h3>Itens</h3>

    <div id="myCarousel3" class="carousel slide" data-ride="carousel">
        <ul class="carousel-indicators">
            <?php for ($i = 0; $i < ceil(pg_num_rows($resultadoitens) / 3); $i++) : ?>
                <li data-target="#myCarousel" data-slide-to="<?= $i ?>" <?= $i === 0 ? 'class="active"' : '' ?>></li>
            <?php endfor; ?>
        </ul>

        <div class="carousel-inner">
            <?php $contador = 0; ?>
            <?php while ($row1 = pg_fetch_array($resultadoitens, null, PGSQL_ASSOC)) :?>
                <?php if ($contador % 3 === 0) : ?>
                    <div class="carousel-item <?= $contador === 0 ? 'active' : '' ?>">
                        <div class="row">
                        <?php endif; ?>

                        <div class="col-md-4 centralizer">
                            <img class="img-carousel-mine" src="<?= $row1['url'] ?>">
                            <h3><?= $row1['nome'] ?></h3>
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
    </div>


    <?php
    include 'footer.php';
    ?>

</html>