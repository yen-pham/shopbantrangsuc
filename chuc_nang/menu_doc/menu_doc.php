<?php 
include("ket_noi.php");
	$tv="select * from menu_doc order by id";
	$tv_1=mysqli_query($conn, $tv);
	echo "<div class='menu_doc' >";
	while($tv_2=mysqli_fetch_row($tv_1))
	{
		$link="?thamso=xuat_san_pham&id=".$tv_2[0];
		echo "<a href='$link'>";
			echo $tv_2[1];
		echo "</a>";
	}
	echo "</div>";
?>