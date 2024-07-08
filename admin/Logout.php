<html>
<head>
<title>Logout</title>
</head>

<body>
<marquee behavior="alternate"><h1>You Have alrady Logged Out</h1></marquee>
<center><table style="color:#093; font-size:18px; font-family:'Showcard Gothic';">
<tr>
<td><a href="../Index.php" <?php
session_start();
	//require_once('auth.php');
	session_destroy();
	header("location: ../loginform.php");

?>>Back</a></td></tr></table></center>
</body>
</html>