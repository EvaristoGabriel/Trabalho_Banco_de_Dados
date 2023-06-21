<html>
<?php
include 'conexao.php';
include 'header.php';
?>

<?php
$query = "select nome, url,descricao from seguravel;";
$resultadoSeg = pg_query($pdo, $query);

if (!$resultadoSeg) {
    echo "Não foi possível executar a query seguravel";
    exit;
}
$query = "select nome, url,descricao from medicinal;";
$resultadoMed = pg_query($pdo, $query);

if (!$resultadoMed) {
    echo "Não foi possível executar a query medicinal";
    exit;
}
$query = "select nome, url,descricao from utilitario;";
$resultadoUti = pg_query($pdo, $query);

if (!$resultadoUti) {
    echo "Não foi possível executar a query utilitario";
    exit;
}

?>

<body>
    <div class="table-container">
        <table>
            <thead>
                <tr>
                    <td></td>
                    <td class="title">Nome</td>
                    <td class="title">Descricao</td>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td colspan="3" class="colspan">Seguráveis</td>
                </tr>
                <?php while ($row = pg_fetch_array($resultadoSeg, null, PGSQL_ASSOC)) : ?>
                    <tr>
                        <td><img src="<?= $row['url'] ?>"></td>
                        <td><?= $row['nome'] ?></td>
                        <td><?= $row['descricao'] ?></td>
                    </tr>
                <?php endwhile; ?>
                <tr>
                    <td colspan="3" class="colspan" >Medicinais</td>
                </tr>
                <?php while ($row = pg_fetch_array($resultadoMed, null, PGSQL_ASSOC)) : ?>
                    <tr>
                        <td><img src="<?= $row['url'] ?>"></td>
                        <td><?= $row['nome'] ?></td>
                        <td><?= $row['descricao'] ?></td>
                    </tr>
                <?php endwhile; ?>
                <tr>
                    <td colspan="3" class="colspan" >Utilitários</td>
                </tr>
                <?php while ($row = pg_fetch_array($resultadoUti, null, PGSQL_ASSOC)) : ?>
                    <tr>
                        <td><img src="<?= $row['url'] ?>"></td>
                        <td><?= $row['nome'] ?></td>
                        <td><?= $row['descricao'] ?></td>
                    </tr>
                <?php endwhile; ?>
            </tbody>
        </table>
    </div>
</body>
<?php
include 'footer.php';
?>

</html>