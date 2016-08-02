<?php
include_once 'classes/config.php';
include_once 'classes/controller.php';

$sendData = new Controller($dsn, $db_user, $db_pass);
$sendData->insertData();

?>