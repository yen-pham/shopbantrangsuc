<?php 
	if(!isset($bien_bao_mat)){exit();}
?>
<?php 
	$id=$_GET['id'];
	$tv="select * from hoa_don where id='$id' ";
	$tv_1=mysqli_query($conn, $tv);
	$tv_2=mysqli_fetch_row($tv_1);
	$ten_nguoi_mua=$tv_2[1];
	$email=$tv_2[2];
	$dien_thoai=$tv_2[4];
	$dia_chi=$tv_2[3];
	$noi_dung=$tv_2[5];
	$hang_duoc_mua=$tv_2[6];
	$link_dong="?thamso=hoa_don&&trang=".$_GET['trang'];
	$link_xoa="?xoa_hoa_don_o_trang_chi_tiet=co&id=".$id."&trang=".$_GET['trang'];
?>

<table width="990px" style="color:white;" >
	<tr>
		<td width="250px" ><b style="color:blue;font-size:20px" >Sản phẩm được đặt hàng </b><br><br> </td>	
		<td width="740px" align="right" >
			<a href="<?php echo $link_dong; ?>" class="lk_a1" style="margin-right:30px" >Đóng</a>
		</td>		
	</tr>
	<tr style="color:white;">
		<td align="left" colspan="2" >
			<table width="880px" style="color:white;" >
				<tr style="color:yellow;">
					<td width="100px">STT</td>
					<td width="300px" >Tên</td>
					<td width="180px">Giá bán</td>
					<td width="100px" >Số lượng</td>
					<td width="200px">Tổng cộng</td>
				</tr>
				<?php 
					$m=explode("[|||||]",$hang_duoc_mua);	
					$tong_lon=0;
					for($i=0;$i<count($m);$i++)
					{
						if(isset($m[$i]))
						{
							if($m[$i]!="")
							{
								$stt=$i+1;
								$m_2=explode("[|||]",$m[$i]);
								$id_sp=$m_2[0];
								$sl_sp=$m_2[1];
								$tv_sp="select id,ten,gia from san_pham where id='$id_sp' ";
								$tv_sp_1=mysqli_query($conn, $tv_sp);
								$tv_sp_2=mysqli_fetch_row($tv_sp_1);
								$ten=$tv_sp_2[1];
								$gia=(float)$tv_sp_2[2];
								$gia_duoc_dinh_dang=number_format("$gia",2, ',', '.');
								$tong=(float)$gia*$sl_sp;
								$tong_duoc_dinh_dang=number_format("$tong",2, ',', '.');
								$tong_lon=$tong_lon+$tong;
								if($sl_sp!=0)
								{
								?>
									<tr>
										<td><?php echo $stt; ?></td>
										<td><?php echo $ten; ?></td>
										<td><?php echo $gia_duoc_dinh_dang; ?></td>
										<td><?php echo $sl_sp; ?></td>
										<td><?php echo $tong_duoc_dinh_dang; ?></td>
									</tr>
								<?php
								}								
							}
						}
					}
				?>
				<tr>
					<td colspan="5">
						<br><br>
						Tổng tiền của đơn hàng là : 
						<?php 
							$tong_lon_duoc_dinh_dang=number_format($tong_lon,0,",",".");
							echo "<b>".$tong_lon_duoc_dinh_dang."</b>";
						?>
						<br><br>
					</td>
				</tr>
			</table>
		</td>		
	</tr>

</table>
<br><br>
<table width="990px" style="color:white;">
	<tr>
		<td width="180px" ><b style="color:blue;font-size:20px" >Thông tin người mua</b><br><br> </td>
		<td width="810px" align="right" >
			&nbsp;
		</td>
	</tr>
	<tr height="30px" >
		<td >Tên người mua : </td>
		<td >
			<?php echo $ten_nguoi_mua; ?>
		</td>
	</tr>
	<tr height="30px" >
		<td >Email : </td>
		<td >
			<?php echo $email; ?>
		</td>
	</tr>		
	<tr height="30px" >
		<td >Điện thoại : </td>
		<td >
			<?php echo $dien_thoai; ?>
		</td>
	</tr>
	<tr height="30px" >
		<td valign="top" >Địa chỉ : </td>
		<td >
			<?php echo $dia_chi; ?>
		</td>
	</tr>
	<tr height="30px" >
		<td valign="top" >Nội dung : </td>
		<td >
			<?php echo $noi_dung; ?>
		</td>
	</tr>
	
	<tr height="30px" >
		<td>&nbsp;</td>
		<td>
			<a href="<?php echo $link_xoa; ?>" class="lk_a1" >Xóa</a>
		</td>
	</tr>
</table>
