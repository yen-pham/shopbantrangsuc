<style>

/* Khung chứa thumbnail */
  table tr td a  {
    
    overflow: hidden; 
    border: 1px solid #e5e5e5; 
}
 
/* Thumbnail */
table tr td a img {
    
    transition-duration: 0.5s;
        /* Safari & Google Chrome */
        -webkit-transition-duration: 0.5s; 
        /* Mozilla Firefox */
        -moz-transition-duration: 0.5s; 
        /* Opera */
        -o-transition-duration: 0.5s;
        /* IE 9 */
        -ms-transition-duration: 0.5s;
}
         
/* Hover chuột vào thumbnail */
table tr td a img:hover {
    transform: scale(1.2);
        /* Safari & Google Chrome */
        -webkit-transform: scale(1.2);
        /* Mozilla Firefox */
        -moz-transform: scale(1.2); 
        /* Opera */
        -o-transform: scale(1.2);
        /* IE 9 */
        -ms-transform: scale(1.2);
    cursor: pointer; 
}
</style>
<br><br>
Sản phẩm của chúng tôi 
<br><br>
<?php 
	include("ket_noi.php");	
	$tv="select id,ten,gia,hinh_anh,thuoc_menu from san_pham where trang_chu='co' order by sap_xep_trang_chu desc limit 0,15";
	$tv_1=mysqli_query($conn, $tv);

	echo "<table>";
	while($tv_2=mysqli_fetch_row($tv_1))
	{
		echo "<tr>";
			for($i=1;$i<=3;$i++)
			{
				echo "<td align='center' width='215px' valign='top' >";
					if($tv_2!=false)
					{
						$link_anh="hinh_anh/san_pham/".$tv_2[3];
						$link_chi_tiet="?thamso=chi_tiet_san_pham&id=".$tv_2[0];
						$gia=$tv_2[2];
						$gia=number_format($gia,0,",",".");
						echo "<a href='$link_chi_tiet' >";
							echo "<img src='$link_anh' width='150px' >";
						echo "</a>";
						echo "<br>";
						echo "<br>";
						echo "<a href='$link_chi_tiet' >";
							echo $tv_2[1];
						echo "</a>";
						echo "<div style='margin-top:5px' >";						
						echo $gia;
						echo "</div>";
						echo "<br>";
					}
					else 
					{
						echo "&nbsp;";
					}
				echo "</td>";
				if($i!=3)
				{
					$tv_2=mysqli_fetch_row($tv_1);
				}
			}
		echo "</tr>";
	}
	echo "</table>";
?>