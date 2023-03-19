<?php
require_once("pdo.php");
session_start();
$max = 3;
if(isset($_SESSION["attempts"])){
  $_SESSION["attempts"] = 0;
}
if($_SESSION["attempts"] === $max){
  $_SERVER["attempts"] = 0;
  header("Location: login_failed.php");
  exit;
}
?>