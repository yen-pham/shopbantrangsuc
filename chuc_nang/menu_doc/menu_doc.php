<div class='menu_doc' style="margin-right:5px;">
<div class="container1">
<nav>
		<ul class="mcd-menu">
			<?php 
			include("ket_noi.php");
				$tv="select * from menu_doc order by id";
				$tv_1=mysqli_query($conn, $tv);
				
				while($tv_2=mysqli_fetch_row($tv_1))
				{
					$link="?thamso=xuat_san_pham&id=".$tv_2[0];
					echo "<li><a href='$link' ><i class=\"fa fa-diamond\" aria-hidden=\"true\"></i><strong>";
						echo $tv_2[1];
					echo "</a></li></strong>";
				}
			
?>

		</ul>
	</nav>
</div>
</div>