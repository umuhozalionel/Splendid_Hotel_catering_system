<?php
	include('connect.php');
	$id=$_GET['id'];
	$result = $db->prepare("SELECT * FROM functionhall WHERE id= :userid");
	$result->bindParam(':userid', $id);
	$result->execute();
	for($i=0; $row = $result->fetch(); $i++){
?>
<img src="images/hall/<?php echo $row['picture']; ?>" width="500" border="2" style="padding-right:2;">
Description : <strong><?php echo $row['description']; ?></strong><br>
<?php
	}
?>