<html>
<head>
<title>Hall</title>
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
include('parent.php');
?>
<div class="slider-wrapper" style="background-image:url(Images/Hall/Copy%20of%20IMAG0002.JPG); height:400px;">
					<div class="slider">
						<div id="slidercon" style="height: 359px; margin-top: 52px;">
							<div id="title">
								Function Hall
							</div>
							<?php
								include('connect.php');
								$result = $db->prepare("SELECT * FROM functionhall ORDER BY rand() LIMIT 4");
								$result->execute();
								for($i=0; $row = $result->fetch(); $i++){
							?>
							<div id="imgcon"><a rel="facebox" href="functionhalldetails.php?id=<?php echo $row['id']; ?>"><img src="images/hall/<?php echo $row['picture']; ?>" width="150" height="150"></a></div>
							<?php
								}
							?>
						</div>
					</div>
				</div>
  <div id="footer">&copy;Copyright &amp; allright reserved By M.Lionel</div>
</body>
</html>
