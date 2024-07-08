<head>
<title>Home</title>
<style type="text/css">
@import url("template.css");

table {
	font-family: "Bauhaus 93";
	color: #FFF;
	border-right: 12;
}
</style>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body background="DesktopBackground/milkyway5.jpg">
<center><table border="2" height="189" width="1000" cellpadding="2"cellspacing"4">
<tr>
<td height="185"><center>This is cool boiiiiii</center></td>
</tr>
</table></center></br></br></br>
<center><table border="" height="27" width="1000" cellpadding="2"cellspacing"4">
<tr>
<td width="108" height="25" bgcolor="#1d1311"><center><a href="index.php">Home</a></center></td>
<td width="132" bgcolor="#1d1311"><center><a href="home.html">Menu</a></center></td>
<td width="153" bgcolor="#1d1311"><center><a href="home.html">Hotel hall</a></center></td>
<td width="154" bgcolor="#1d1311"><center><a href="home.html">Reservation</a></center></td>
<td width="145" bgcolor="#1d1311"><center><p><a href="home.html">About us</a></p></center></td>
<td width="138" bgcolor="#1d1311"><center><a href="home.html">Contact</a></center></td>
<td width="126" bgcolor="#1d1311"><center><a href="home.html">Login</a></center></td>

</tr>
</table></center>
<center><table border="" height="50" width="1000" cellpadding="2"cellspacing"4">
<tr><td><div class="row-bot">
		<div class="row-bot-bg">
			<div class="maincon">
				<div class="slider-wrapper">
					<div class="slider">
						<div id="slidercon">
							<div id="title">
								Delicious Experience
							</div>
							<?php
								include('connect.php');
								$result = $db->prepare("SELECT * FROM menu ORDER BY rand() LIMIT 4");
								$result->execute();
								for($i=0; $row = $result->fetch(); $i++){
							?>
							<div id="imgcon"><a rel="facebox" href="details.php?id=<?php echo $row['id']; ?>"><img src="Images/others/<?php echo $row['image']; ?>" width="150" height="150"></a></div>
							<?php
								}
							?>
							<div id="title">
								Online Status Inquiry
							</div>
							<form action="inquiry.php" method="post">
							<input type="text" name="res" placeholder="Enter Reservation ID" style="padding-left: 7px; float: left; margin-left: 10px; margin-right: 10px; width: 196px;"><input type="submit" value="Find" style="float: left; width: 100px; height: 28px;" />
							</form>
						</div>
					</div>
				</div>
			</div>
		</div></td></tr>

</table></center>
</body>
</html>
