<?php
//	$userid = '65';
?>
<html>
<head>
	<title>Read Some Stuff</title>
</head>
<body>
<?php 
//if ($userid != 0)
//{
?>
<form action="home.php" method="post" id="myform" name="myform">
<input type="hidden" value="<?php echo $_REQUEST['u']; ?>" name="u" id="u"></input>
<input type="hidden" value="<?php echo $_REQUEST['p']; ?>" name="pw" id="pw"></input>
</form>

<script language="javascript">
document.myform.submit();
</script>
<?php
//}
?>

</body>
</html>

