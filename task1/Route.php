<?php

class Route
{
    public $route;
    public $action = false;
    public $tableRoutes = ['auth', 'profile'];

    public function __construct()
    {
        if ($_SERVER['REQUEST_URI'] == '/') {
            header("Location: /index.php?r=auth");
            exit();
        }
        $this->route = $_GET['r'];
        $this->action = $_GET['action'];
    }

    public function run()
    {
        if (in_array($this->route, $this->tableRoutes)) {
            $nameFile = ucfirst($this->route) . "Controller";
            $controller = ROOT . "/controller/" . $nameFile . ".php";

            if (file_exists($controller)) {
                include_once $controller;
                $controllerObject = new $nameFile();
                if ($this->action) {
                    $action = ($this->action . 'Action');
                } else {
                    $action = 'indexAction';
                }
                if (method_exists($controllerObject, $action)) {
                    $controllerObject->$action();
                } else {
                    throw new \Exception("Not method <b>$controller::$action</b>", 404);
                }
            } else {
                throw new \Exception("Not controller <b>$controller</b>", 404);
            }
        } else {
            header($_SERVER["SERVER_PROTOCOL"] . " 404 Not Found");
            throw new \Exception("Страница не найдена");
        }
    }
}