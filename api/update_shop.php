<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {

  $data = json_decode(file_get_contents('php://input'),true);
  $info=$data["infoInsert"];
  foreach ($info as $key => $value) {
    $id = $value['ShopId'];
    $name = $value['AddName'];
    $addr = $value['Addplace'];
    $conn = new mysqli("localhost", "root", "", "claim");
    mysqli_set_charset($conn,"utf8");
    $sql = "UPDATE `info_shop` SET `Name` = '".$name."', `Address` = '".$addr."'  WHERE `ShopID` = '".$id."';";
    $conn->query($sql);
  }

}//POST METHOD

?>
