<?php
  $filename=$_GET["name"];
  $filepath='upload/'.time().$filename;
  $fileData=file_get_contents('php://input');
  $fhandle=fopen($filepath, 'wb');
  fwrite($fhandle, $fileData);
  fclose($fhandle);
  echo($filepath);
?>