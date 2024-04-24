<?php

declare(strict_types=1);

error_reporting(E_ALL);

define('BASEPATH', __DIR__);
$autoloader = require __DIR__ . '/../vendor/autoload.php';

$dotenv = Dotenv\Dotenv::createImmutable(__DIR__, '.env');
$dotenv->safeLoad();

require('Providers/Router.php');

$router = new App\Providers\Router();

