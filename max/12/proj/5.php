<?php
abstract class UserAbstract{
    abstract function showInfo();
}





class User extends  UserAbstract{
    public $name;
    public $login;
    public $password;
    static public $countUser=0;

    function __construct($name,$login,$password){
        $this->name=$name;
        $this->login=$login;
        $this->password=$password;
        ++self::$countUser;

        echo "Создан объект" .self::$countUser. " класса '".__CLASS__."'.
      name: '{$this->name}';
      login: '{$this->login}';
      password: '{$this->password}';
      <br>\n";
    }

    function __clone(){  // Клон
        echo "Клон класса '".__CLASS__."'.
      name: '{$this->name}';
      login: '{$this->login}';
      password: '{$this->password}';
      <br>\n";
    }

    function __destruct(){  // Деструктор
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
    static public $countSuperUser;

    function __construct($name,$login,$password,$role){
        parent::__construct($name,$login,$password);
        $this->role = $role;
        ++self::$countSuperUser;

        echo "Создан объект ".self::$countSuperUser." класса '".__CLASS__."'.
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

echo "Создано ".User::$countUser." объектов класса User_be<br>\n";
echo "Создано ".SuperUser::$countSuperUser." объектов класса SuperUser_be<br>\n";
echo "<br>\n";

unset($user1,$user2,$user3,$user4);
?>
