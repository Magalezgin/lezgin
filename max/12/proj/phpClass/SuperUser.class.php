<?php

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
      echo "Объект класса'".__CLASS__."'.
      name: '{$this->name}';
      login: '{$this->login}';
      password: '{$this->password}';
      role: '{$this->role}';
      <br>\n";
    }
  }
