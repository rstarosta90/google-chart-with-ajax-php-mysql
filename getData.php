<?php
include_once 'classes/config.php';
include_once 'classes/controller.php';

$Data = new Controller($dsn, $db_user, $db_pass);
$Data->getData();

?>