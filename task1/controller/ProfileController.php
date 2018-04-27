<?php

class ProfileController
{
    public function indexAction()
    {
        if (!$_SESSION['nameUser']) {
            header("Location: /index.php?r=auth");
            exit();
        }
        require_once ROOT . "/view/profile.php";
    }
}