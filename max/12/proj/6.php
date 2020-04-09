<?php

spl_autoload_register(function($class){
    include "phpClass/$class.class.php";
});
$user1 = new User("Maga","lezgin@mail.ru","228148");
$user2 = new User("Kolia","kolia@bk.ru", "228148");
$user3 = new User("Yra","segodna_svet_viklucili((@gmail.com","228148");

echo "<br>\n";

$user4 = new SuperUser("Da-Vinci","Vinci@reich.ru","Rim","main");
echo "<br>\n";

$user4->showInfo();
echo "<br>\n";

echo "Создан ".User::$countUser." объекст класса User_be<br>\n";
echo "Создан ".SuperUser::$countSuperUser." Объект класса SuperUser_be<br>\n";
echo "<br>\n";

unset($user1,$user2,$user3,$user4);

?>
