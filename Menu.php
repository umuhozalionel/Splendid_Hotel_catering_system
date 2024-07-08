<link rel="icon" href="images/icons/logo.png" type="image/x-png">
 <link href="css/ddmenu/ddmenu.css" rel="stylesheet" type="text/css" />
<?php
function formatMoney($number, $fractional=false) {
		if ($fractional) {
			$number = sprintf('%.2f', $number);
		}
		while (true) {
			$replaced = preg_replace('/(-?\d+)(\d\d\d)/', '$1,$2', $number);
			if ($replaced != $number) {
				$number = $replaced;
			} else {
				break;
			}
		}
		return $number;
	}
?>
<html>
<head>
<title>plendid Hotel catering Online System</title>
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
<div class="slider-wrapper" style="background-image:url(Images/images.jpg)">
					<div class="slider">
						<div id="sliderconec">
							<div id="title" style="text-align:center;font-size: 18px;">
								Menu List
							</div>
							<div id="about" style="overflow: scroll; height: 390px;">
								
								<ul class="price-list p2">
									<strong style="font-size: 18px;">Specialty</strong>
									<?php
										include('connect.php');
										$id='specialty';
										$result = $db->prepare("SELECT * FROM menu WHERE mcat= :mmm");
										$result->bindParam(':mmm', $id);
										$result->execute();
										for($i=0; $row = $result->fetch(); $i++){
									?>
									<li><span>Rwf<?php $dsds=$row['price'];
									echo formatMoney($dsds, true);
									?></span><a rel="facebox" href="menudetails.php?id=<?php echo $row['id']; ?>"><?php echo $row['name']; ?></a></li>
									<?php
										}
									?>
								</ul>
								<ul class="price-list p2">
									<strong style="font-size: 18px;">Lunch and Dinner</strong>
									<br><strong style="font-size: 12px; font-style:italic;">( Combo 250 - 1 soup/3 main course/1 salad/1 desert/rice/soft drinks )</strong>
									<br><strong style="font-size: 12px; font-style:italic;">( Combo 315 - 1 soup/4 main course/1 salad/1 desert/rice/soft drinks )</strong>
									<br><strong style="font-size: 12px; font-style:italic;">( Combo 400 - 1 soup/4 main course/2 salad/2 desert/rice/soft drinks )</strong>
									<?php
										$id='lunch_and_dinner';
										$result = $db->prepare("SELECT * FROM menu WHERE mcat= :mmm");
										$result->bindParam(':mmm', $id);
										$result->execute();
										for($i=0; $row = $result->fetch(); $i++){
									?>
									<li><span><?php echo $row['price']; ?></span><a rel="facebox" href="menudetails.php?id=<?php echo $row['id']; ?>"><?php echo $row['name']; ?></a></li>
									<?php
										}
									?>
								</ul>
								<ul class="price-list p2">
									<strong style="font-size: 18px;">Merienda</strong>
									<br><strong style="font-size: 12px; font-style:italic;">( Combo 285 - 2 pasta/2 meat/3 bread/2 dessert/softdrinks )</strong>
									<?php
										$id='merienda';
										$result = $db->prepare("SELECT * FROM menu WHERE mcat= :mmm");
										$result->bindParam(':mmm', $id);
										$result->execute();
										for($i=0; $row = $result->fetch(); $i++){
									?>
									<li><span><?php echo $row['price']; ?></span><a rel="facebox" href="menudetails.php?id=<?php echo $row['id']; ?>"><?php echo $row['name']; ?></a></li>
									<?php
										}
									?>
								</ul>
							</div>
						</div>
					</div>
				</div>
                                   
 <div id="footer">
		<div id="footer">&copy;Copyright &amp; allright reserved By M.Lionel</div>
</html>
