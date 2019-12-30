<style>
* {
  list-style-type: none;
  /* margin: 5px; */
}
body {
  font-family: sans-serif;
  color: #333;
}

.menu_ngang ul {
  list-style-type: none;
  margin: 0;
  padding :10px;
  /* padding: 0px px 0px 0px; */
  overflow: hidden;
  background-color: #e9d8f4;

}
.menu_ngang  li {
  display: inline-block;
  color: black;
  text-align: center;
  padding: 0px 0px 0px 0px;
  text-decoration: none;
  margin-left:79px;
  
}
.menu_ngang ul li a {
	display: block;
  color: #772A5D;
  text-align: center;
  padding: 0px 0px 0px 0px;
  text-decoration: none;
  font-family:Tahoma;
}
.menu_ngang ul li a:hover {
  color: #D75FAD;
  /* background-color: #db7093; */
  font-weight: bold;E745AE
  /* padding: 10px 10px 10px 10px; */
}
</style>
<?php 
include("ket_noi.php");
	$tv="select id,ten,loai_menu from menu_ngang order by id";
	$tv_1=mysqli_query($conn, $tv);
	echo "<div class='menu_ngang' >";
	echo "<ul> <li>";
	echo "<a href='index.php'>Home</a></li>";
	while($tv_2=mysqli_fetch_row($tv_1))
	{
		if($tv_2[2]==""){$link_menu="?thamso=xuat_mot_tin&id=".$tv_2[0];}
		if($tv_2[2]=="san_pham"){$link_menu="?thamso=xuat_san_pham_2";}
		echo "<li><a href='$link_menu'>";
			echo $tv_2[1];
		echo "</a></li>";
	}
	echo "</ul>";
	echo "</div>";
?>