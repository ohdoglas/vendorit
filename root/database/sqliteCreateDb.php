<?php 

if (!file_exists(__DIR__ .'/../database/vendorit.sqlite')) {
    $dbFile = __DIR__ . '/../database/vendorit.sqlite';

    try {
        $pdo = new PDO('sqlite:' . $dbFile);
        echo "Banco de dados criado com sucesso!";
    } catch (PDOException $e) {
        echo "Erro ao criar o banco de dados: " . $e->getMessage();
    }
} else {
    echo "Banco de dados já existe.";
}
?>
