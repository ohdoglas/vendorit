<?php 
$autoloadPath = __DIR__ . '/../vendor/autoload.php';

if (!file_exists($autoloadPath)) {
    die("Arquivo não encontrado: $autoloadPath");
}

require $autoloadPath;

use Slim\Factory\AppFactory;
use Dotenv\Dotenv;

$dotenv = Dotenv::createImmutable(__DIR__ . '/../');
$dotenv->load();

$app = AppFactory::create();

$app->get('/vendorit', function ($request, $response, $args) {
    $response->getBody()->write("OK");
    return $response;
});

$app->run();
?>
