<?php 
	if(!isset($bien_bao_mat)){exit();}
	$tv="select * from banner limit 0,1 ";
	$tv_1=mysqli_query($conn, $tv);
	$tv_2=mysqli_fetch_row($tv_1);
	$rong=$tv_2[2];
	$cao=$tv_2[3];
	$ten_anh=$tv_2[1];
	$link_hinh="".$tv_2[1];	
?>
<form action="" method="post" enctype="multipart/form-data" >
	<table width="990px" >
		<tr>
			<td colspan="2" ><b style="color:blue;font-size:20px" >Sửa banner</b></td>
		</tr>
		<tr>
			<td colspan="2" valign="top" >
				<br><br>
				<img src="<?php echo $link_hinh; ?>" width="<?php echo $rong; ?>" height="<?php echo $cao; ?>" > 
				<br><br><br>
				<input type="file" name="hinh_anh" >
				<input type="hidden" name="ten_anh" value="<?php echo $ten_anh; ?>" >
				<br><br><br>
			</td>
		</tr>
		<tr>
			<td width="200px" >Rộng : </td>
			<td width="790px" >
				<input style="width:400px;margin-top:3px;margin-bottom:3px;" name="rong" value="<?php echo $rong; ?>" >
			</td>
		</tr>
		<tr>
			<td>Cao : </td>
			<td>
				<input style="width:400px;margin-top:3px;margin-bottom:3px;" name="cao" value="<?php echo $cao; ?>" >
			</td>
		</tr>		
		<tr>
			<td>&nbsp;</td>
			<td>
				<br>
				<input type="submit" name="bieu_mau_sua_banner" value="Sửa banner" style="width:200px;height:50px;font-size:24px" >
			</td>
		</tr>
	</table>
</form>