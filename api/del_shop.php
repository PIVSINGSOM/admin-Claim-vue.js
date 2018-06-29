<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {

  $data = json_decode(file_get_contents('php://input'),true);
  $info=$data["infoInsert"];
  foreach ($info as $key => $value) {
    $id = $value['ShopId'];
    $conn = new mysqli("localhost", "root", "", "claim");
    mysqli_set_charset($conn,"utf8");
    $sql = "DELETE FROM `info_shop` WHERE ShopID = '".$id."' ";
    $conn->query($sql);
  }

}//POST METHOD

?>
