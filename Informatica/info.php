<?php
$servername = "localhost";
$username = "id11240790_carnet";
$password = "12345678";
$database = "id11240790_informacion";



// Create connection
$conn = new mysqli($servername, $username, $password, $database);
// // Check connection
// if ($conn->connect_error) {
//   die("Connection failed: " . $conn->connect_error);
// }
// echo "Funciona";

//Toma de datos
$carnet = $_POST['carnet'];

$sql = "INSERT INTO carnet(carnet1) VALUES (".$carnet.")";
$ejecutuar = $conn->query($sql) or trigger_error($conn->error."[$sql]");
?>
