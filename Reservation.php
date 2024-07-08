
<?php
include('connect.php');
?>
<html>
<head>
<title>Reservation</title>
<link rel="icon" type="image/png" href="images/favicon.png" />
<link href="css/style.css" media="screen" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="tcal.css" />
<script type="text/javascript" src="tcal.js"></script>
<script type="text/javascript">
function validateForm()
{
if (document.personal.condition.checked == false)
{
alert ('pls. agree the term and condition of this site');
return false;
}
else
{
return true;
}
}
</script>
<SCRIPT language=Javascript>
      <!--
      function isNumberKey(evt)
      {
         var charCode = (evt.which) ? evt.which : event.keyCode
         if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;

         return true;
      }
      //-->
   </SCRIPT>
<!--sa poip up-->
<link href="admin/src/facebox.css" media="screen" rel="stylesheet" type="text/css" />
<script src="admin/lib/jquery.js" type="text/javascript"></script>
<script src="admin/src/facebox.js" type="text/javascript"></script>
<script type="text/javascript">
  jQuery(document).ready(function($) {
    $('a[rel*=facebox]').facebox({
      loadingImage : 'admin/src/loading.gif',
      closeImage   : 'admin/src/closelabel.png'
    })
  })
</script>
</head>
<body>
<?php
include('parent.php');
?>
	
<div class="slider-wrapper" style="background-image:url(DesktopBackground/milkyway2.jpg); height:600">
<div id="slidercon">

<center>			<marquee behavior="alternate">
					<h1 style="color:#FFFFFF; font-family:'Bauhaus 93';">Booking Form</h1>
					</marquee>
							<form action="part2.php" method="get" name="personal" onSubmit="return validateForm()">
								<?php
								function createRandomPassword() {
									$chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ023456789";
									srand((double)microtime()*1000000);
									$i = 0;
									$pass = '' ;
									while ($i <= 7) {

										$num = rand() % 33;

										$tmp = substr($chars, $num, 1);

										$pass = $pass . $tmp;

										$i++;

									}
									return $pass;
								}
								$finalcode='RS-'.createRandomPassword();
								?>
								<input type="hidden" name="resid" value="<?php echo $finalcode ?>" />
								<dl style="margin-left: 10px;">
									<dd>
										First Name:<br>
										<input type="text" name="name" required="required" maxlength="50" />
									</dd>
									<dd>
										Last Name:<br>
										<input type="text" name="lname" required="required" maxlength="50" />
									</dd>
									<dd>
										Address:<br>
										<input type="text" name="address" required="required" maxlength="100" />
									</dd>
									<dd>
										Contact:<br>
										<input type="text" name="cnum" onKeyPress="return isNumberKey(event)" required="required" maxlength="11" />
									</dd>
									<dd>
										Date:<br>
										<input type="text" name="d" class="tcal" required="required" />
									</dd>
									<dd>
										Motif:<br>
										<input type="text" name="motif" required="required" maxlength="20" />
									</dd>
									<dd>
										Type Of Occasion:<br>
										<input type="text" name="toc" required="required" maxlength="30" />
									</dd>
									<dd>
										Type Of Reservation:<br>
										<select name="tre">
											<option value="catering">Catering</option>
										</select>
									</dd>
									<dd>
										<span style="width: 17px;">&nbsp;</span>
										<input type="checkbox" name="condition" value="checkbox" style="width: 13px;" /> I agree the <a href="terms_condition.php">terms and condition</a> of this site
									</dd>
									<dd>
										<span>&nbsp;</span>
										<input type="submit" value="Reserve" />
									</dd>
								</dl>
							</form></center></div>
</center>
 <div>
		 <div id="footer">&copy;Copyright &amp; allright reserved By M.Lionel</div>
</body>
</html>
