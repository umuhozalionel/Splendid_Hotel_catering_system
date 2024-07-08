<link rel="icon" href="images/icons/logo.png" type="image/x-png">
 <link href="css/ddmenu/ddmenu.css" rel="stylesheet" type="text/css" />
  <link href="css/search.css" rel="stylesheet" type="text/css" />
    <script src="css/ddmenu/ddmenu.js" type="text/javascript"></script>
    </style>
<head>
<title>Splendid Hotel catering Online System</title>

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

<body background="DesktopBackground/milkyway8.jpg">
<?php
include('parents.php');
?>
<center><table><tr><td><form action="inquiry.php" method="post">
							<input type="text" name="res" placeholder="Enter Reservation ID" style="padding-left: 7px; float: left; margin-left: 10px; margin-right: 10px; width: 196px;"><input type="submit" value="Find" style="float: left; width: 100px; height: 28px;" />
							</form></td></tr></table></center>
<div class="row-bot">
		<div class="row-bot-bg">
			<div class="maincon">
				<div class="slider-wrapper" style="background-image:url(DesktopBackground/milkyway2.jpg); height:690px;>
					<div class="slider">
							<div id="title">
								<u>Delicious Experience<br>
                                Online Status Inquiry</u>
							</div>
							<?php
								include('connect.php');
								$result = $db->prepare("SELECT * FROM menu ORDER BY rand() LIMIT 20");
								$result->execute();
								for($i=0; $row = $result->fetch(); $i++){
							?>
							<div id="imgcon"><a rel="facebox" href="details.php?id=<?php echo $row['id']; ?>"><img src="imyaka/<?php echo $row['image']; ?>" width="150" height="150"></a></div>
							<?php
								}
							?></div>
                            <div id="footer">&copy;Copyright &amp; allright reserved By M.Lionel</div>

</body>
</html>
