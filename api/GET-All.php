<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  // $data = json_decode(file_get_contents('php://input'),true);
  // $info=$data["infouser"];
  $conn = new mysqli("localhost", "root", "", "claim");
  mysqli_set_charset($conn,"utf8");
  // echo "check".$data["infouser"]."<br>";
//   foreach ($info as $key => $value) {
//     $name = $value['user'];
//     $pw = $value['pass'];
//
//   $result = $conn->query("SELECT * FROM info_user WHER Username = '".$name."' and Password = '".$pw."' ");
//   $row = msqli_fetch_assoc($result);
//   echo $row['Level'];
// }

  $result = $conn->query("SELECT * FROM info_shop ");
  $outp = array();
  while($row = $result->fetch_assoc()){
    array_push($outp, $row);
  }

  $res['info_shop'] = $outp;
  //$outp = $result->fetch_all(MYSQLI_ASSOC);
  header("Content-type: application/json");
  echo json_encode($res);
  die();

}//GET METHOD

?>
