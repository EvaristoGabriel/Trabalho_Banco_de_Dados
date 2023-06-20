<?php
// ini_set('display_errors', 1);                   
    $server = $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
    $nome = 'testepoke';
    $user = 'postgres';
    $porta = 5432;
    $password = '1234';

    $string = "host=localhost port=5432 dbname=$nome user=$user password=$password";
    $pdo = pg_connect($string);
    
    if (!$pdo) {
        $error = pg_last_error();
        echo "Erro de conexão: $error";
        exit();
    }else {
        $query = "SELECT EXISTS (
            SELECT FROM pg_tables
            WHERE  schemaname = 'public'
            AND    tablename = 'pokemon'
         );";
         $result = pg_query($pdo, $query);
         $table_exists = pg_fetch_result($result, 0);
         if(!$table_exists) {
             
             $query = file_get_contents('createTables.sql');
             $result = pg_query($pdo, $query);
             if (!$result) {
                 $error = pg_last_error($pdo);
                 echo "Erro ao criar tabela: $error";
                } else {
                    echo "Tabela criada com sucesso!";
                }
            }
        }
    ?>

