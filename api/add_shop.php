<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {

  $data = json_decode(file_get_contents('php://input'),true);
  $info=$data["infoInsert"];
  foreach ($info as $key => $value) {
    $name = $value['AddName'];
    $addr = $value['Addplace'];
    $conn = new mysqli("localhost", "root", "", "claim");
    mysqli_set_charset($conn,"utf8");
    $sql = "INSERT INTO `info_shop` (`ShopID`, `Name`, `Address`, `ReceiveDate`, `Status`) VALUES (NULL, '".$name."', '".$addr."', NOW(), 'Nromal');";
    $conn->query($sql);
  }

}//POST METHOD

?>
