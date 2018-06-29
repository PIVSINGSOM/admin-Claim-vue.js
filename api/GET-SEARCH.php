<?php
if ($_SERVER['REQUEST_METHOD'] === 'GET') {
  if(isset($_GET["text"])){
    $text = $_GET["text"];
  }
  $conn = new mysqli("localhost", "root", "", "claim");
  mysqli_set_charset($conn,"utf8");
  $result = $conn->query("SELECT * FROM info_shop WHERE Name like '".$text."%' or Address like '".$text."%' or Status like '".$text."%' or ReceiveDate like '".$text."%' ");
  $outp = array();
  while($row = $result->fetch_assoc()){
    array_push($outp, $row);
  }

  $res['resultSearch'] = $outp;
  //$outp = $result->fetch_all(MYSQLI_ASSOC);
  header("Content-type: application/json");
  echo json_encode($res);
  die();

}//GET METHOD

?>
