<?php
// Verifica se o arquivo .env existe
if (!file_exists(__DIR__ . '/../backend/.env')) {
    die('Arquivo .env não encontrado');
}

// Lê o arquivo .env
$conn = parse_ini_file(__DIR__ . '/../backend/.env');

// Define as variáveis de ambiente
foreach ($conn as $key => $value) {
    putenv("$key=$value");
}

// Obtém as variáveis de ambiente
$db_server = getenv('DB_SERVER');
$db_user = getenv('DB_USER');
$db_pass = getenv('DB_PASS');
$db_name = getenv('DB_NAME');

// Conecta ao banco de dados
$conn = mysqli_connect(
    $db_server,
    $db_user,
    $db_pass,
    $db_name
);

// Verifica se a conexão falhou
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

echo "Database connected successfully" . "<br>";
?>
