<?php
function Login()
{
echo "<table cellspacing='0' cellpadding='3' border='0'>";
	$login_successful = false;
	if ($_POST["username"] != "")
	{
		// find password for this user
		$rs = GetUser($_POST["username"]);
		while ($row = mysql_fetch_assoc($rs)) 
		{
			$password = $row['password'];
			$id = $row['id'];
			$arr = explode(":", $password);
			$joomla_password = $arr[0];
			$joomla_salt = $arr[1];
		}
		// get md5 hash based on salt
		$new_password = JUserHelper::getCryptedPassword($_POST["password"],$joomla_salt,'md5-hex', false);
		
		// compare db value with generated value
		if ($joomla_password == $new_password)
		{
			$login_successful = true;
			// Display Outlet Names
		}
		else
			echo "<tr><td></td><td>Login Failed. Try Again.</td></tr>";
	}
	?>

	<?php
	// Display Login Form
	if (!$login_successful)
	{
	?>
		<form name="loginform" method="post" action="index.php">
		<tr><td class="mylink">User Name</td><td><input type="text" name="username" id="username"></input></td></tr>
		<tr><td class="mylink">Password</td><td><input type="password" name="password" id="password"></input></td></tr>
		<tr><td></td><td><input type="submit" name="submit" id="submit" value="Login"></input></td></tr>
		</form>
	<?php
	}
echo "</table>";
	if ($login_successful)
		return $id;
	else
		return 0;
}
?>	