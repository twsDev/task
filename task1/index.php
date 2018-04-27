<?php
session_start();
define('ROOT', dirname(__FILE__));

include_once 'Route.php';
$route = new Route();
$route->run();