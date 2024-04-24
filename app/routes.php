<?php
$router->add('/',function(){
   $controller = new App\Controllers\AuthController();
   echo $controller->show();
});

$router->add('/products',function() use ($router){
    $controller = new App\Controllers\ProductsController();
    echo $controller->show();
});

$router->add('/authenticate',function() use ($router){
    $controller = new App\Controllers\AuthController();
    echo $controller->login();
});

$router->add('/logout',function() use ($router){
    $controller = new App\Controllers\AuthController();
    echo $controller->logout();
});
