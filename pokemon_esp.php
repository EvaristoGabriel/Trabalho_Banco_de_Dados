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

    <div class="tipos">
        <?php
        $id = $_GET['id'];
        $query = "select * from pokemon_tipo where id_pokemon =$id;";
        $resultadoType = pg_query($pdo, $query);

        if (!$resultadoType) {
            echo "Não foi possível executar a query Tipo";
            exit;
        }
        while ($row = pg_fetch_array($resultadoType, null, PGSQL_ASSOC)) :
        ?>
            <p class="Tipo <?= $row['id_tipo'] ?>"><?= $row['id_tipo'] ?></p>
        <?php endwhile; ?>
    </div>


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
        <?php
        $aux = $resultado['id_habilidade'];
        $query = "select * from habilidade where id =$aux;";
        $resultadoHab = pg_query($pdo, $query);

        if (!$resultadoHab) {
            echo "Não foi possível executar a query pokemon";
            exit;
        }
        $resultadoHab = pg_fetch_array($resultadoHab, null, PGSQL_ASSOC);

        $aux = $resultado['id_nature'];
        $query = "select * from nature where id =$aux;";
        $resultadoNat = pg_query($pdo, $query);

        if (!$resultadoNat) {
            echo "Não foi possível executar a query pokemon";
            exit;
        }
        $resultadoNat = pg_fetch_array($resultadoNat, null, PGSQL_ASSOC);
        ?>
        <p class="text-infos">Status: <?= $resultado['status'] ?></p>

        <p class="text-infos">Habilidade: <?= $resultadoHab['nome'] ?></p>

        <p class="text-infos">Equipe: <?= $resultado['id_equipe'] ?></p>

        <p class="text-infos">Natureza: <?= ucfirst($resultadoNat['nome']) ?></p>

        <p class="title-infos">Ataques</p>

        <div class="pokemons-treinador">
            <?php
            $queryPok = "SELECT ";
            $resultado = pg_query_params($pdo, $queryPok, array($id));
            if (!$resultado) {
                echo "Não foi possível executar a consulta";
                exit;
            }
            while ($row = pg_fetch_array($resultado, null, PGSQL_ASSOC)) :
            ?>
            <?php endwhile; ?>
        </div>
    </div>
</body>
<?php
include 'footer.php';
?>

</html>