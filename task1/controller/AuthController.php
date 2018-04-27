<?php
include_once ROOT . '/model/User.php';

class AuthController
{
    public $model;

    public function __construct()
    {
        $this->model = new User();
    }

    public function indexAction()
    {
        if (isset($_SESSION['nameUser'])) {
            header("Location: /index.php?r=profile");
            exit();
        }

        if ($this->model->authorization()) {
            header("Location: /index.php?r=profile");
            exit();
        }
        require_once ROOT . "/view/login.php";
    }


    public function logoutAction()
    {
        $this->model->loguot();
    }
}