<?php 
	if(!isset($bien_bao_mat)){exit();}
?>
<br><br>
<center>

	<div class="header-w3l">
			<h1> Login </h1>
		</div>
		<!--//header-->
		<!--main-->
		<div class="main-w3layouts-agileinfo">
	           <!--form-stars-here-->
						<div class="wthree-form">
							<h2>Fill out the form below to login</h2>
							<form method="post">
								<div class="form-sub-w3">
									<input type="text" name="ky_danh" placeholder="Username " required="" />
								<div class="icon-w3">
									<i class="fa fa-user" aria-hidden="true"></i>
								</div>
								</div>
								<div class="form-sub-w3">
									<input type="password" name="mat_khau" placeholder="Password" required="" />
								<div class="icon-w3">
									<i class="fa fa-unlock-alt" aria-hidden="true"></i>
								</div>
								</div>
								
								<div class="clear"></div>
								<div class="submit-agileits">
								<input type="hidden" name="dang_nhap_quan_tri" value="dang_nhap_quan_tri" >
									<input type="submit" value="Login">
								</div>
							</form>

						</div>
				<!--//form-ends-here-->

		</div>
</center>
