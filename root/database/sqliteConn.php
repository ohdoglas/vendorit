<?php 

// Caminho completo para o banco de dados
$dbFile = __DIR__ . '/../database/vendorit.sqlite';

try {
    // Conectando ao banco de dados SQLite
    $pdo = new PDO('sqlite:' . $dbFile);

    // Configurando o modo de erro do PDO para exceções
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    echo "Conexão estabelecida com sucesso!";
} catch (PDOException $e) {
    echo 'Erro de conexão: ' . $e->getMessage();
}

?>
