<?php 
include("ket_noi.php");
	$tv="select id,ten,loai_menu from menu_ngang order by id";
	$tv_1=mysqli_query($conn, $tv);
	echo "<div class='menu_ngang' >";
	echo "<a href='index.php'>Trang chủ</a>";
	while($tv_2=mysqli_fetch_row($tv_1))
	{
		if($tv_2[2]==""){$link_menu="?thamso=xuat_mot_tin&id=".$tv_2[0];}
		if($tv_2[2]=="san_pham"){$link_menu="?thamso=xuat_san_pham_2";}
		echo "<a href='$link_menu'>";
			echo $tv_2[1];
		echo "</a>";
	}
	echo "</div>";
?>