<?php 
include("ket_noi.php");
	$id=$_GET['id'];
	$tv="select * from menu_ngang where id='$id'";
	$tv_1=mysqli_query($conn, $tv);
	$tv_2=mysqli_fetch_row($tv_1);
	echo "<h1>";
		echo $tv_2[1];
	echo "</h1>";
	echo $tv_2[2];
?>