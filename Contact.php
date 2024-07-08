<head>
<title>contact-us</title>
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
</table>
</center>
<center>
<div class="slider-wrapper" style="height:350px; background-color:#600;">
  <table height="50" width="1000" cellpadding="2"cellspacing"4" "#00CC66">
    <center>
          <u>
          <h3 style="color:#FFF; font-family:'Old English Text MT'; font-size:20px;">Our Contact</h3>
          </u>
      </center>
    <tr>
      <td style="color:#FFF;"><center>
        Address: Nyamabuye, Muhanga City<br>
        Tel No: +250725455749<br>
        E-mail: lionemu06@yahoo.fr, muhozalionel@gmail.com<br>
        Facebook:  facebook.com/muhoza.lionel<br>
        Whatsapp:+250725455749<br>
      </center></td>
      <td  style="color:#FFF;"><center>
	  <u>Leave your Comment or Opinion please!!!</u>
        <form action="savecomment.php" method="post">
            Subject:<br>
            <select name="subject" style="width: 205px; padding:3px 0;">
              <option>Food</option>
              <option>Services</option>
            </select>
            <br>
            E-mail:<br>
            <input type="text" method="post" name="name" style="width: 210px; padding:3px 0;" id="name" placeholder="Type your e-mail or name">
            <br>
            Type Your Comment:<br>
            <textarea name="comment" style="width: 210px; padding:3px 0; height: 42px;" placeholder="Type your idea please.."></textarea>
            <br><br>
            <input name="submit" type="submit" style="width: 210px;" value="Submit" />
          </form>
      </center></td>
    </tr>
  </table>
 </div><br>
		 <div id="footer">&copy;Copyright &amp; allright reserved By M.Lionel</div>
</body>
</html>