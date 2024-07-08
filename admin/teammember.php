<?php
	require_once('auth.php');
?>
<html>
<head>
<title>
::.Splendid Catering Administration.::
</title>
<!-- CSS Style -->
<link rel="stylesheet" href="admin.css">
<!--sa poip up-->
<script src="dng_comedor.js" type="text/javascript" charset="utf-8"></script>
<script src="js/application.js" type="text/javascript" charset="utf-8"></script>
<link href="src/facebox.css" media="screen" rel="stylesheet" type="text/css" />
<script src="lib/jquery.js" type="text/javascript"></script>
<script src="src/facebox.js" type="text/javascript"></script>
<script type="text/javascript">
  jQuery(document).ready(function($) {
    $('a[rel*=facebox]').facebox({
      loadingImage : 'src/loading.gif',
      closeImage   : 'src/closelabel.png'
    })
  })
</script>
</head>
<body>
	<div>
		<center><marquee behavior="alternate"><p style="font-family:'Bauhaus 93'">Welcome Administartor In Your Panel</p></marquee></center>
</div>
<div class="container  clearfix">
		<div class="one-third1 column">
			<ul>
				<li><a href="index.php"><img alt="" src="img/home.png"><span>Reservation</span></a></li>
				<li><a href="menu.php"><img alt="" src="img/page.png"><span>Menu</span></a></li>
				<li><a href="menuorders.php"><img alt="" src="img/menuorder.png"><span>Menu Orders</span></a></li>
				<li><a href="suggestions.php"><img alt="" src="img/mesage.png"><span>Messages</span></a></li>
				<li><a href="team.php"><img alt="" src="img/team.png"><span>Team</span></a></li>
				<li><a href="teammember.php"><img alt="" src="img/user.png"><span>Team Member</span></a></li>
				<?php 
				$jhjh=$_SESSION['POWER'];
				if($jhjh==1){
				?>
				<li><a href="adminaccount.php"><img alt="" src="img/userpic.png"><span>Admin-Maintenance</span></a></li>
				<?php
				}
				?>
				<li><a href="../index.php"><img alt="" src="img/logout.png"><span>Logout</span></a></li>
			</ul>
</div>
        <img src="../Images/Hall/bbq-catering-2.jpg" width="656" height="381">
  <center>
<div class="two-thirds1 column">
            
			<center><a rel="facebox" href="addteammember.php"> Add Team </a></center>
			<center>
			  <table width="929" id="resultTable">
                <thead>
                  <tr>
                    <th width="234" bgcolor="#FFFFFF"> Team Name </th>
                    <th width="282" bgcolor="#FFFFFF"> Team Member </th>
                    <th width="341" bgcolor="#FFFFFF"> Action </th>
                  </tr>
                </thead>
                <tbody>
                  <?php
							include('../connect.php');
							$result = $db->prepare("SELECT * FROM catering_member");
							$result->execute();
							for($i=0; $row = $result->fetch(); $i++){
						?>
                  <tr class="record">
                    <td bgcolor="#FFFFFF"><?php echo $row['ct_name']; ?></td>
                    <td bgcolor="#FFFFFF"><?php echo $row['ctm_member']; ?></td>
                    <td bgcolor="#FFFFFF"><a rel="facebox" href="editteammember.php?id=<?php echo $row['ctm_id']; ?>"> Edit </a> | <a href="#" id="<?php echo $row['ctm_id']; ?>" class="delbutton" title="Click To Delete">Delete</a></td>
                  </tr>
                  <?php
							}
						?>
                </tbody>
              </table>
			</center>
			</div>
		</div>
	</div>
	 <center><div id="footer">&copy;Copyright &amp; allright reserved By M.Lionel</div></center>
		<script src="js/jquery.js"></script>
  <script type="text/javascript">
$(function() {


$(".delbutton").click(function(){

//Save the link in a variable called element
var element = $(this);

//Find the id of the link that was clicked
var del_id = element.attr("id");

//Built a url to send
var info = 'id=' + del_id;
 if(confirm("Sure you want to delete this update? There is NO undo!"))
		  {

 $.ajax({
   type: "GET",
   url: "deleteteammember.php",
   data: info,
   success: function(){
   
   }
 });
         $(this).parents(".record").animate({ backgroundColor: "#fbc7c7" }, "fast")
		.animate({ opacity: "hide" }, "slow");

 }

return false;

});

});
</script>
</center>
</body>
</html>