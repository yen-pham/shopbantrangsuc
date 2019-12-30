<?php 
	if(!isset($bien_bao_mat)){exit();}
?>
<style type="text/css" >
	a.lk_1{font-size:22px;text-decoration:none;color:blue;margin-right:30px}
	a.lk_2{font-size:22px;text-decoration:none;color:white;margin-right:30px}
	a.lk_1:hover {color:red}
	@import url(https://fonts.googleapis.com/css?family=Roboto);
body {
  margin: 0;
  font-family: "Roboto", "Helvetica Neue", "Helvetica", "Arial", sans-serif;

}
section#nav-test {
  
  display: flex;
  justify-content: center;
  align-items: center;
}
section#nav-test #nav-container {
  position: relative;
  margin: 60px auto;
  box-sizing: border-box;
}
section#nav-test #nav-container ul {
  display: flex;
  background: #323639;
  box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.14), 0 1px 5px 0 rgba(0, 0, 0, 0.12), 0 3px 1px -2px rgba(0, 0, 0, 0.2);
  padding-left: 30px;
  padding-right: 30px;
  margin: 0;
}
section#nav-test #nav-container ul li {
  display: flex;
  align-items: center;
  min-height: 48px;
  margin-left: 60px;
  cursor: pointer;
  user-select: none;
}
section#nav-test #nav-container ul li:hover {
  border-bottom :3px solid #ed6a1a;
}
section#nav-test #nav-container ul li:first-child {
  margin-left: 0;
}
section#nav-test #nav-container ul li a {
  color: #f1f1f1;
}
section#nav-test #nav-container #line {
  position: absolute;
  bottom: 0;
  height: 2px;
  background-color:;
  transition: all 150ms ease-in-out;
}
section#nav-test h1 {
  margin-top: 30px;
  font-weight: 500;
  color: #212121;
}
html, body {

  /* display: flex;
  flex-flow: row wrap;
  justify-content: center;
  align-items: center;
  overflow: hidden; */
}
.button {
  font-family: 'Space Mono', monospace;
  letter-spacing: 1px;
  background: none;
  color: white;
  position: relative;
  outline: none;
  border: none;
  height: 50px;
  width: 190px;
  font-size: 14px;
  z-index: 2;
  transition: 0.01s 0.23s ease-out all;
  overflow: hidden;
}
.button:before {
  content: '';
  position: absolute;
  left: 0;
  top: 0;
  height: 100%;
  width: 55%;
  background: #202020;
  z-index: -1;
  transition: 0.3s ease-in all;
}
.button:after {
  content: '';
  position: absolute;
  left: -5%;
  top: 5%;
  height: 90%;
  width: 5%;
  background: white;
  z-index: -1;
  transition: 0.4s 0.02s ease-in all;
}
.button:hover {
  cursor: pointer;
  color: transparent;
}
.button:hover:before {
  left: 100%;
  width: 25%;
}
.button:hover:after {
  left: 100%;
  width: 70%;
}
.button:hover .icon-right.after:after {
  left: -80px;
  color: white;
  transition: 0.2s 0.2s ease all;
}
.button:hover .icon-right.after:before {
  left: -104px;
  top: 14px;
  opacity: 0.2;
  color: white;
}
.icon-right {
  position: absolute;
  top: 0;
  right: 0;
}
.icon-right:after {
  font-family: "FontAwesome";
  content: '\2192';
  font-size: 24px;
  display: inline-block;
  position: relative;
  top: 26px;
  transform: translate3D(0, -50%, 0);
}
.icon-right.after:after {
  left: -250px;
  color: black;
  transition: 0.15s 0.25s ease left, 0.5s 0.05s ease color;
}
.icon-right.after:before {
  content: 'thoat';
  position: absolute;
  left: -230px;
  top: 14px;
  opacity: 0;
  transition: 0.2s ease-in all;
}


</style>
<br>

<div class="form_quan_ly">
<center>
<a href="index.php" style="font-size:72px;color:white;text-decoration:none" >Quản trị cửa hàng</a>
</center>
<br><br>

<section id="nav-test">
<div id="nav-container" >
	<button  onclick="window.location.href = '?thamso=thoat';" class="explore button">Thoát<span class="icon-right"></span><span class="icon-right after"></span></button>

<ul >
<li class="nav-li active-nav"><a href="index.php">Trang chủ</a></li>
<li class="nav-li"><a href="?thamso=menu_doc">Menu dọc</a ></li>
<li class="nav-li"><a href="?thamso=menu_ngang">Menu ngang</a></li>
<li class="nav-li"><a href="?thamso=san_pham">Sản phẩm</a></li>
<li class="nav-li"><a href="?thamso=hoa_don">Hóa đơn</a></li>
</ul>

<div id="line" style="width: 43px; margin-left: 30px;"></div>
</div>
</section>
<br><br>

	<?php 
	include("chuc_nang/quan_tri_2/dieu_huong.php");
?>


<br><br>


</div>