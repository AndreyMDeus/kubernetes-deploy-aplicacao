<?php
$servername = "conexao-mysql";
$username = "root";
$password = "Abc123456";
$database = "clientes";

// Criar conexão

$link = new mysqli($servername, $username, $password, $database);

/* check connection */
if (mysqli_connect_errno()) {
    printf("Falha na conexão: %s\n", mysqli_connect_error());
    exit();
}

?>
