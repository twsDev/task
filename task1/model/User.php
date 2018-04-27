<?php

class User
{
    public function authorization()
    {
        if ($_POST['name'] && $_POST['password']) {

            if (!isset($_SESSION['countAuth'])) {
                $_SESSION['countAuth'] = 1;
            }

            if ($this->blockedAuth()) {
                return false;
            }

            $arrCredentials = $this->getUsers();

            if (array_key_exists($_POST['name'], $arrCredentials) && $arrCredentials[$_POST['name']] == md5($_POST['password'])) {
                $_SESSION['nameUser'] = $_POST['name'];
                unset($_SESSION['countAuth'], $_SESSION['message']);
                return true;
            } else {
                $_SESSION['countAuth'] = $_SESSION['countAuth'] + 1;
                $this->countAuth();
                if (!$this->blockedAuth()) {
                    $_SESSION['message'] = 'Неверные данные';
                }
            }
        }
        return false;
    }

    private function blockedAuth()
    {
        if (isset($_SESSION['timer']) && $_SESSION['timer'] >= time()) {
            $seconds = $_SESSION['timer'] - time();
            $_SESSION['message'] = "Попробуйте еще раз через {$seconds} секунд";
            unset($_SESSION['countAuth']);
            return true;
        }
        return false;
    }

    private function getUsers()
    {
        $result = [];
        foreach (file(ROOT . "/model/base.txt") as $value) {
            $loginPassword = explode('|', $value);
            $result[$loginPassword[0]] = trim($loginPassword[1]);
        }
        return $result;
    }

    private function countAuth()
    {
        if ($_SESSION['countAuth'] > 3) {
            $_SESSION['timer'] = strtotime('+5 minute');
            return true;
        }
        return false;
    }

    public function loguot()
    {
        unset($_SESSION['message'], $_SESSION['nameUser'], $_SESSION['countAuth']);
        header("Location: /index.php?r=auth");
        exit();
    }
}