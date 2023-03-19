<?php
  session_start();
  $captcha = "";
  for($i = 0; $i < 4; $i++){
    $char = chr(rand(48,122));
    while(!ctype_alnum($char)){
      $char = chr(rand(48,122));
    }
    $captcha .= $char;
  }
  $captcha = preg_replace("/[a-zA-Z0-9]/","",$captcha);
  $captcha_stored = implode("",array_sort(str_split($captcha)));
  $_SESSION["captcha"] = $captcha_stored;
  $image = imagecreatetruecolor(100,50);
  
?>