<?php

namespace App\Controllers;

use App\Models\DB;
use App\Providers\Router;
use Firebase\JWT\JWT;
use Firebase\JWT\Key;

class ProductsController
{
    public function show()
    {
        $router = new Router();

        if (isset($_COOKIE['token'])) {
            $decoded = JWT::decode($_COOKIE['token'], new Key($_ENV['JWT_KEY'], 'HS256'));
        } else {
            header('location:login');
        }

        return $router->view_display('products.php');
    }

    public function index(){
        
    }
}
