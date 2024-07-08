<head>
<title>Home</title>
<link rel="icon" type="image/png" href="images/favicon.png" />
<link href="css/style.css" media="screen" rel="stylesheet" type="text/css" />
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
session_start();
	$link = mysql_connect('localhost','root',"");
	$db = mysql_select_db("lionel_catering_system", $link);
if(isset($_SESSION['USERNAME']))
{
header("location: admin/index.php");
}
include('parent.php');
?><div>
<div class="slider-wrapper" style="background-image:url(DesktopBackground/milkyway2.jpg);">
					<div class="slider">
						<div id="slidercon" style="height: 200px; margin-top: 110px;">
							<div id="title">
								Administrator Login Form
							</div>
							<form action="login.php" method="post">									
Username:<br><input type="text" name="uname" /><br>					
Password:<br><input type="password" name="pword" /><br><br>
									
<input type="submit" value="Login" />
								
							</form></td></tr></table></center>
							</td></tr>

</table>
  <div><br>
		<div id="footer">&copy;Copyright &amp; allright reserved By M.Lionel</div>
</body>
</html>
