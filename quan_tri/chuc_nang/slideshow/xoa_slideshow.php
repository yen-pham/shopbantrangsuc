<?php 
	if(!isset($bien_bao_mat)){exit();}
?>
<?php 
	$id=$_GET['id'];	
	$tv="select * from slideshow where id='$id' ";
	$tv_1=mysqli_query($conn, $tv);
	$tv_2=mysqli_fetch_row($tv_1);

	$link_hinh="../hinh_anh/slideshow/".$tv_2[1];
	if(is_file($link_hinh))	
	{
		unlink($link_hinh);
	}
	
	$tv="DELETE FROM slideshow WHERE id = $id ";
	mysql_query($tv);
?>