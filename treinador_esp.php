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
        <a class="a-back" href="treinador.php">
            <img class="img-back" src="./image/back_arrow.ico" alt="">
            <p class="text-voltar">voltar</p>
        </a>
    </div>

    <p class="title-nome">
        <?= $resultado['nome'] ?>
    </p>
    <img class="imagem-poke-esp" src="<?= $resultado['url'] ?>" alt="<?= $resultado['nome'] ?>">

    <div class="infos">
        <p class="text-infos treinador">Cidade:
            <?= $resultado['id_cidade'] ?>
        </p>

        <p class="text-infos treinador">Tipo do Treinador:
            <?= $resultado['id_classe'] ?>
        </p>

        <div class="pokemons-treinador">
            <?php
            $queryPok = "SELECT p.url as url, p.id as id FROM equipe AS e INNER JOIN pokemon AS p ON p.id_equipe = e.id WHERE e.id_treinador = $1;";
            $resultado = pg_query_params($pdo, $queryPok, array($id));
            if (!$resultado) {
                echo "Não foi possível executar a consulta";
                exit;
            }
            while ($row = pg_fetch_array($resultado, null, PGSQL_ASSOC)):
                ?>
                <a href="pokemon_esp.php?id=<?php echo $row['id']; ?>">
                    <img class="poke-treinador" src="<?= $row['url'] ?>" alt="">
                </a>
            <?php endwhile; ?>
        </div>

        <p class="title-infos">Mochila</p>
        <div class="itens-treinador">
            <?php
            $queryPok = "SELECT u.url, u.nome, u.quantidade
            FROM utilitario u
            INNER JOIN mochila mo ON mo.id = u.id_mochila
            INNER JOIN treinador t ON t.id = mo.id_treinador
            WHERE t.id = $1
            UNION
            SELECT s.url, s.nome, s.quantidade
            FROM seguravel s
            INNER JOIN mochila mo ON mo.id = s.id_mochila
            INNER JOIN treinador t ON t.id = mo.id_treinador
            WHERE t.id = $1
            UNION
            SELECT me.url, me.nome, me.quantidade
            FROM medicinal me
            INNER JOIN mochila mo ON mo.id = me.id_mochila
            INNER JOIN treinador t ON t.id = mo.id_treinador
            WHERE t.id = $1;";
            $resultado = pg_query_params($pdo, $queryPok, array($id));
            if (!$resultado) {
                echo "Não foi possível executar a consulta";
                exit;
            }
            if (pg_num_rows($resultado) == 0):
                ?>
                <p class="text-infos treinador center">Mochila vazia</p>
            <?php else: ?>
                <div class="itens-mochila">
                    <p class="text-infos treinador">
                        Nome -
                    </p>
                    <p class="text-infos treinador">
                        Quantidade
                    </p>
                </div>
                <?php while ($row = pg_fetch_array($resultado, null, PGSQL_ASSOC)): ?>
                    <div class="itens-mochila">
                        <img class="img-item" src="<?= $row['url'] ?>">
                        <p class="text-infos treinador">
                            <?= $row['nome'] ?> -
                        </p>
                        <p class="text-infos treinador">
                            <?= $row['quantidade'] ?>
                        </p>
                    </div>
                <?php endwhile; ?>
            <?php endif; ?>
        </div>
    </div>
</body>
<?php
include 'footer.php';
?>

</html>