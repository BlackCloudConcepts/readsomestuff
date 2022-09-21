<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<title>Read Some Stuff Mobile</title>
<?php 

require_once("dataaccess/dataaccess.php");
require_once("joomla_functions/joomla_functions.php");
require_once("php/login.php");
require_once("php/outlets.php");
?>

<style>
.mylink {
  font-size:10pt;
  color:#000000;
  font-family: "verdana","arial";
}

a.mylink {
  font-size:10pt;
  color:#000000;
  font-family: "verdana","arial";
}

.rowon {
  background:#eeeeee;
}

.rowoff {
  background:#ffffff;
}
</style>
</head>
<body>
<table cellspacing="0" cellpadding="0" border="0" width="100%">
<tr>
<td align="left" style="background-image:url('images/rsslogo_mobile_bg.png');background-repeat:repeat-x;">
<img src="images/rsslogo_mobile.png" border="0"/>
</td>
</tr>
<tr>
<td>
<?php
$userid = 0;
$userid = Login();
if ($userid != 0)
{
	ShowOutlets($userid);
}
?>
</td>
</tr>
</table>

</body>
</html>
