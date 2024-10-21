<?php
try {
    // Conexão com o banco de dados SQLite
    $pdo = new PDO('sqlite:C:\Users\dughlaisdd\Desktop\PDV-ERP\Proejto\vendorit\root\database\vendorit.sqlite');
    
    // Configurar o PDO para lançar exceções em caso de erro
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    
    $pdo->exec("CREATE TABLE IF NOT EXISTS usuarios (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nome VARCHAR(255) NOT NULL,
        username VARCHAR(45) NOT NULL,
        senha VARCHAR(255) NOT NULL,
        role VARCHAR(25) NOT NULL,
        created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
    )");


    $pdo->exec("CREATE TABLE IF NOT EXISTS fornecedores (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nome VARCHAR(255) NOT NULL,
        contato VARCHAR(255) DEFAULT NULL,
        cnpj VARCHAR(18) DEFAULT NULL,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    )");


    $pdo->exec("CREATE TABLE IF NOT EXISTS produtos (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nome VARCHAR(50) NOT NULL,
        descricao TEXT DEFAULT NULL,
        preco DECIMAL(10,2) DEFAULT NULL,
        estoque INTEGER DEFAULT NULL,
        barcode VARCHAR(100) DEFAULT NULL,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    )");


    $pdo->exec("CREATE TABLE IF NOT EXISTS vendas (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        produto_id INTEGER DEFAULT NULL,
        quantidade INTEGER DEFAULT NULL,
        valor DECIMAL(10,2) DEFAULT NULL,
        data_venda TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        FOREIGN KEY (produto_id) REFERENCES produtos(id) ON UPDATE CASCADE
    )");

    echo "Tabelas criadas com sucesso!";
} catch (PDOException $e) {
    echo "Erro ao criar tabelas: " . $e->getMessage();
}
?>
