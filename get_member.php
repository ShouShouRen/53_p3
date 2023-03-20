<?php
  require_once("pdo.php");
  extract($_GET);
  $sql = "SELECT * FROM users WHERE id = ?";
  $stmt = $pdo->prepare($sql);
  $stmt->execute([$id]);
  $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
  echo json_encode($result);
?>