<?php
if ($_SERVER['REQUEST_METHOD'] === 'GET') {
  if(isset($_GET["id"])){
    $id = $_GET["id"];
  }
  $conn = new mysqli("localhost", "root", "", "claim");
  mysqli_set_charset($conn,"utf8");
  $result = $conn->query("SELECT * FROM info_acces WHERE ShopID = '".$id."' ");
  $outp = array();
  while($row = $result->fetch_assoc()){
    array_push($outp, $row);
  }

  $res['modelishere'] = $outp;
  //$outp = $result->fetch_all(MYSQLI_ASSOC);
  header("Content-type: application/json");
  echo json_encode($res);
  die();

}//GET METHOD

?>
