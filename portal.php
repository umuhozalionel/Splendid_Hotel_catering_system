<html>
<head>
<link href="css/style.css" media="screen" rel="stylesheet" type="text/css" /><!--sa poip up-->
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



<script language="javascript">
function Clickheretoprint()
{ 
  var disp_setting="toolbar=yes,location=no,directories=yes,menubar=yes,"; 
      disp_setting+="scrollbars=yes,width=700, height=400, left=100, top=25"; 
  var content_vlue = document.getElementById("content").innerHTML; 
  
  var docprint=window.open("","",disp_setting); 
   docprint.document.open(); 
   docprint.document.write('</head><body onLoad="self.print()" style="width: 700px; font-size:11px; font-family:arial; font-weight:normal;">');          
   docprint.document.write(content_vlue); 
   docprint.document.close(); 
   docprint.focus(); 
}
</script>
</head>
<body bgcolor="#FF3300">
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
<center><h2 style="font-family:Broadway; color:#FFFFFF">Splendid <br>
Hotel & Catering<br>
Nyamabuye, Muhanga City<br>
Tel. No. +250725455749<br /></h2></center>
<div style="text-align:center; color:#FFFF00; font-style:italic;">(Your Reservation is Approved. The management will call you On The address you gave us thanks....!!!.)</div>
</div><br><br>
<?php
include('connect.php');
$res=$_GET['res'];
$cat=$_GET['mcat'];
$result = $db->prepare("SELECT * FROM reservation WHERE res_id= :userid");
	$result->bindParam(':userid', $res);
	$result->execute();
	for($i=0; $row = $result->fetch(); $i++){
?>
<div style="float:left; width:45%;line-height:20px;font-size:14px;">
Reservation ID:<strong><?php echo $row['res_id']; ?></strong><br>
First Name:<strong><?php echo $row['firstname']; ?></strong><br>
Last Name:<strong><?php echo $row['lastname']; ?></strong><br>
Address:<strong><?php echo $row['address']; ?></strong><br>
Contact:<strong><?php echo $row['contact']; ?></strong><br>
Date:<strong><?php echo $row['date']; ?></strong><br>
Time:<strong><?php echo $row['time']; ?></strong><br>
Motif:<strong><?php echo $row['motif']; ?></strong><br>
</div>
<div style="float: right; width: 50%; text-align: right; line-height: 20px; height: 162px;font-size:14px; margin-right:12px;">
Type of Occasion:<strong><?php echo $row['type_events']; ?></strong><br>
Type of Reservation:<strong><?php 
echo $row['type_res']; 
$dsdssd=$row['type_res'];
?></strong><br>
Type of Catering:<strong><?php echo $cat; ?></strong><br>
No. Of Pax:<strong><?php echo $row['pax']; ?></strong><br>
Venue:<strong><?php echo $row['venueaddress']; ?></strong><br>

Combo: <strong><?php
$id=$row['combo'];
if ($id!='0'){
$result = $db->prepare("SELECT * FROM combo WHERE id= :asas");
	$result->bindParam(':asas', $id);
	$result->execute();
	for($i=0; $rows = $result->fetch(); $i++){
	echo $rows['comboname'].'-'.$rows['combolist'];
	$sdsds=$rows['comboname'];
	}
}
if ($id=='0'){
$sdsds=0;
if($cat!='specialty'){
?>
<a rel="facebox" style="font-size:14px;" href="combo.php?id=<?php echo $cat ?>&res=<?php echo $res ?>&addddd=<?php echo $_GET['additional'] ?>">Select Combo</a>
<?php
}
if($cat=='specialty'){
echo 'Not Available';
}
}
?></strong><br>
Payable Amount:&nbsp;
<strong>Rwf<?php
if($cat!='specialty'){
$sdrwer=$row['res_id'];
$p=$row['pax'];
$pr=$sdsds;
$total=$p*$pr;
$dfdfdfdfdfddffdfd=$_GET['additional'];

$sdsdsdsd=$total*$dfdfdfdfdfddffdfd;
$WATAMOVE=$total+$sdsdsdsd;
if ($dsdssd!='functionroom') {
$dsd=$WATAMOVE;
echo formatMoney($dsd, true);

		$sql = "UPDATE reservation 
        SET amount=?
		WHERE res_id=?";
$q = $db->prepare($sql);
$q->execute(array($dsd,$sdrwer));

}
if ($dsdssd=='functionroom') {
$bbbb=$total+3000;
echo formatMoney($bbbb, true);

		$sql = "UPDATE reservation 
        SET amount=?
		WHERE res_id=?";
$q = $db->prepare($sql);
$q->execute(array($bbbb,$sdrwer));
}
}
if($cat=='specialty'){

	$arara=$row['res_id'];
	$resultas = $db->prepare("SELECT sum(price) FROM menu_res WHERE res_id= :a");
	$resultas->bindParam(':a', $arara);
	$resultas->execute();
	for($i=0; $rowas = $resultas->fetch(); $i++){
	$fgfg=$rowas['sum(price)'];
		if ($dsdssd!='functionroom') {
		$asasdd=$fgfg;
		echo formatMoney($asasdd, true);

				$sql = "UPDATE reservation 
				SET amount=?
				WHERE res_id=?";
		$q = $db->prepare($sql);
		$q->execute(array($asasdd,$arara));

		}
		if ($dsdssd=='functionroom') {
		$asasdd=$fgfg+3000;
		echo formatMoney($asasdd, true);

				$sql = "UPDATE reservation 
				SET amount=?
				WHERE res_id=?";
		$q = $db->prepare($sql);
		$q->execute(array($asasdd,$arara));

		}
	}
}
?>
</strong>
<br><br>
<br><br>
</div>
<?php
	$resulta = $db->prepare("SELECT * FROM menu_res WHERE res_id= :asas");
	$resulta->bindParam(':asas', $res);
	$resulta->execute();
	$rowa = $resulta->fetch(PDO::FETCH_NUM);
	if($rowa == 0) {
	?>
	
<a rel="facebox" style="font-size:14px;" href="menuboard.php?id=<?php echo $cat ?>&res=<?php echo $res ?>&gfgfgfgfgfgf=<?php echo $_GET['additional'] ?>">pls select menu</a>
	<?php
	}
?>

<?php
	}
?>

<table id="resultTable" width="1336" style="font-size:14px; font-family:arial; font-weight:normal; background-color:#CCCCCC">
<thead>
	<tr>
		<th width="726" style="text-align:left;"><u> Type Of Menu </u></th>
		<th width="598" style="text-align:left;"> <u>Menu</u> </th>
	</tr>
</thead>
<tbody>
<?php
	$result = $db->prepare("SELECT * FROM menu_res WHERE res_id= :asas");
	$result->bindParam(':asas', $res);
	$result->execute();
	for($i=0; $rowas = $result->fetch(); $i++){
		$menu=$rowas['menu'];
		$results = $db->prepare("SELECT * FROM menu WHERE id= :ll");
		$results->bindParam(':ll', $menu);
		$results->execute();
		for($i=0; $rowass = $results->fetch(); $i++){
			?>
			<tr class="record">
			<td><?php echo $rowass['scat']; ?></td>
			<td><?php echo $rowass['name']; ?></td>
			</tr>
			<?php
		}
	}
?>
</tbody>
</table>
</div>
<div style="text-align:center; margin-top:100px;">
<?php
if($rowa != 0) {
?>
<a href="index.php" style="font-size:20px; text-decoration:none; color:#FFFFFF; padding: 10px; border:1px solid grey; background-color:#333333; margin-top:40px;">Finish</a>
<?php }
?>
</div>
</body>
</html>