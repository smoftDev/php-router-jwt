<?php

namespace App\Controllers;

use App\Models\DB;
use App\Providers\Router;
use Firebase\JWT\JWT;
// use App\Models\JWT;

class AuthController
{
    private $db;

    public function __construct()
    {
        $this->db = new DB();
    }

    public function show()
    {
        $router = new Router();

        return $router->view_display('login.php');
    }

    public function login()
    {
        $data = (object)$_POST;
        $condition = 'login="' . $data->login . '" AND mp="' . sha1($data->password) . '"';
        $user = $this->db->select('utilisateur2', $condition);

        if (!empty($user)) {
            $token = JWT::encode(
                array(
                    'iat'        =>    time(),
                    'nbf'        =>    time(),
                    'exp'        =>    time() + 3600,
                    'data'    => array(
                        'id_user'    =>    $user['id_user'],
                        'login'    =>    $user['login']
                    )
                ),
                $_ENV['JWT_KEY'],
                'HS256'
            );
            setcookie("token", $token, time() + 3600, "/", "", true, true);
            header('location:products');
        } else {
            echo 'err';
        }
    }

    public function logout()
    {
        setcookie("token", "", time() - 3600,  "/", "", true, true);
        header('location: /');
    }
}
