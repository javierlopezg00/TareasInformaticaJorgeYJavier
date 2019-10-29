<?php 

$servername = "localhost";
$username = "id11240790_carnet";
$password = "12345678";
$database = "id11240790_informacion";



// Create connection
$conn = new mysqli($servername, $username, $password, $database);

 ?>


<!DOCTYPE html>
<html>
<head>
	<title>mostrar datos</title>
</head>
<body>

<br>

	<table border="1" >
		<tr>
			<td>Carnet</td>	
		</tr>

		<?php 
		$sql="SELECT * from carnet";
		$result=mysqli_query($conn,$sql);

		while($mostrar=mysqli_fetch_array($result)){
		 ?>

		<tr>
			<td><?php echo $mostrar['carnet1'] ?></td>
		</tr>
	<?php 
	}
	 ?>
	</table>

</body>
</html>