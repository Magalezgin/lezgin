<?php
class User{
    public $name;
    public $login;
    public $password;

    function showInfo(){
        echo "name: '{$this->name}'; login: '{$this->login}'; password: '{$this->password}';<br>\n";
    }
}

$user1 = new User;
$user1 -> name = "Maga";
$user1 -> login = "lezgin@mail.ru";
$user1 -> password =  "228148" ;

$user2 = new User;
$user2 -> name = "Kolia";
$user2 -> login = "kolia@bk.ru";
$user2 -> password = "228148";

$user3 = new User;
$user3 -> name = "Yra";
$user3 -> login = "segodna_svet_viklucili((@gmail.com";
$user3 -> password = "228148";

$content.=$user1 -> showInfo();
$content.=$user2 -> showInfo();
$content.=$user3 -> showInfo();

?>
