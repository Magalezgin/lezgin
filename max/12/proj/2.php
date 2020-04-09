<?php

class User{
    public $name;
    public $login;
    public $password;
    function __construct($name,$login,$password){
        $this->name=$name;
        $this->login=$login;
        $this->password=$password;
        echo "Созданный класс'".__CLASS__."'.
      name: '{$this->name}';
      login: '{$this->login}';
      password: '{$this->password}';
      <br>\n";
    }
    function __clone(){
        echo "Клон Класса '".__CLASS__."'.
      name: '{$this->name}';
      login: '{$this->login}';
      password: '{$this->password}';
      <br>\n";
    }
    function __destruct(){
        echo "Удаленный класс '".__CLASS__."'. name: {$this->name};<br>\n";
    }
    function showInfo(){
        echo "Объект класса'".__CLASS__."'.
      name: '{$this->name}';
      login: '{$this->login}';
      password: '{$this->password}';
      <br>\n";
    }
}
$user1 = new User("Maga","lezgin@mail.ru","228148");
$user2 = new User("Kolia","kolia@bk.ru", "228148");
$user3 = new User("Yra","segodna_svet_viklucili((@gmail.com","228148");
$user4 = clone $user1;

unset($user01,$user02,$user03,$user04);



?>