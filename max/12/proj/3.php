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
class SuperUser extends User{
    public $role;

    function __construct($name,$login,$password,$role){
        parent::__construct($name,$login,$password);
        $this->role = $role;
        echo "Cоздан объект класса'".__CLASS__."'.
      role: '{$this->role}';
      <br>\n";
    }

    function showInfo(){
        echo "Объект класса '".__CLASS__."'.
      name: '{$this->name}';
      login: '{$this->login}';
      password: '{$this->password}';
      role: '{$this->role}';
      <br>\n";
    }
}
$user1 = new User("Maga","lezgin@mail.ru","228148");
$user2 = new User("Kolia","kolia@bk.ru", "228148");
$user3 = new User("Yra","segodna_svet_viklucili((@gmail.com","228148");

echo "<br>\n";

$user4 = new SuperUser("Da-Vinci","Vinci@reich.ru","Rim","main");
echo "<br>\n";

$user4->showInfo();
echo "<br>\n";

unset($user1,$user2,$user3,$user4);

?>
