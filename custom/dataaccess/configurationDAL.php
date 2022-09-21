<?php

////////////////////////////////////////
// GET USER ID
////////////////////////////////////////
function GetUserID()
{
  $connection = DB_OpenConnection();
  $strsql = "select id from rss_users where username = '".$_REQUEST['u']."' and password = '".$_REQUEST['pw']."'";
  $resultset = mysql_query($strsql, $connection);
	while ($row = mysql_fetch_assoc($resultset))
  	{
    		$output= $row['id'];
  	}
	if ($output == '')
		header('Location: http://www.readsomestuff.com');
	mysql_free_result($resultset);
  DB_CloseConnection($connection);
  return $output;  
}



////////////////////////////////////////
//GET EXISTING SETTINGS FOR USER
////////////////////////////////////////
function GetUserSettings($user)
{
  $connection = DB_OpenConnection();
  $strsql = "select u.style, u.level, u.numbercolumns, u.screenwidth from rss_custom_usersettings u where u.user_id = ".$user;
  $resultset = mysql_query($strsql, $connection);
  DB_CloseConnection($connection);
  return $resultset;  
}

////////////////////////////////////////
//GET EXISTING STYLE FOR USER
////////////////////////////////////////
function GetUserSettingsStyle($user)
{
  $connection = DB_OpenConnection();
  $strsql = "select u.style from rss_custom_usersettings u where u.user_id = ".$user;
  $resultset = mysql_query($strsql, $connection);
  while ($row = mysql_fetch_assoc($resultset)) 
  {
    $output= $row['style'];
  }
  if ($output== "")
    $output= "light-orange";
  mysql_free_result($resultset);
  DB_CloseConnection($connection);
  return $output;
}

////////////////////////////////////////
//GET EXISTING STYLE FOR USER
////////////////////////////////////////
function GetUserSettingsNumberColumns($user)
{
  $connection = DB_OpenConnection();
  $strsql = "select u.numbercolumns from rss_custom_usersettings u where u.user_id = ".$user;
  $resultset = mysql_query($strsql, $connection);
  while ($row = mysql_fetch_assoc($resultset)) 
  {
    $output = $row['numbercolumns'];
  }
  if ($output == "")
    $output = "3";
  mysql_free_result($resultset);
  DB_CloseConnection($connection);
  return $output ;
}

////////////////////////////////////////
//GET EXISTING STYLE FOR USER
////////////////////////////////////////
function GetUserSettingsScreenWidth($user)
{
  $connection = DB_OpenConnection();
  $strsql = "select u.screenwidth from rss_custom_usersettings u where u.user_id = ".$user;
  $resultset = mysql_query($strsql, $connection);
  while ($row = mysql_fetch_assoc($resultset)) 
  {
    $output = $row['screenwidth'];
  }
  if ($output == "")
    $output = "1000";
  mysql_free_result($resultset);
  DB_CloseConnection($connection);
  return $output ;
}

////////////////////////////////////////
//SAVE USER SETTINGS
////////////////////////////////////////
function SaveUserSettingsToDB($style, $numbercolumns, $screenwidth, $user)
{
  $connection = DB_OpenConnection();
  //SEE IF VALUE PREVIOUSLY EXISTED
  $strsql = "select * from rss_custom_usersettings u where u.user_id = ".$user;
  $resultset = mysql_query($strsql, $connection);
  if (mysql_num_rows($resultset) > 0)
  { //UPDATE
    $strsql = "UPDATE rss_custom_usersettings SET style = '".$style."', numbercolumns = ".$numbercolumns.", screenwidth = ".$screenwidth." WHERE user_id = ".$user;
  }
  else
  { //INSERT
    $strsql = "INSERT INTO rss_custom_usersettings (user_id, style, numbercolumns, screenwidth) VALUES (".$user.", '".$style."', ".$numbercolumns.", ".$screenwidth.")";
  }
  mysql_query($strsql);
  DB_CloseConnection($connection);
}

function GetColumnWidth($user)
{
  $screenwidth = GetUserSettingsScreenWidth($user);
  $numbercolumns = GetUserSettingsNumberColumns($user);
  $screenwidth = $screenwidth - 100;
  $output = round($screenwidth / $numbercolumns,0);
  return $output;
}

/////////////////////////////////////////////


////////////////////////////////////////
//CALLED FROM POPUP, USED TO POPULATE SAVED DATA
////////////////////////////////////////
function GetOutletConfiguration($outlet_id)
{
  $connection = DB_OpenConnection();
  $strsql = "select p.name, p.shared, p.totalitems, p.timerange, p.limitingtext from rss_custom_outlets p where p.outlet_id = '".$outlet_id."'";
  $resultset = mysql_query($strsql, $connection);
  DB_CloseConnection($connection);
  return $resultset;  
}

////////////////////////////////////////
//CALLED FROM POPUP, USED TO POPULATE SAVED DATA
////////////////////////////////////////
function GetOutletFeedConfiguration($outlet_id)
{
  $connection = DB_OpenConnection();
  $strsql = "select p.id, p.rssname, p.location from rss_custom_outletsrss p where p.outlet_id = '".$outlet_id."' order by p.id";
  $resultset = mysql_query($strsql, $connection);
  DB_CloseConnection($connection);
  return $resultset;  
}

////////////////////////////////////////
//CALLED FROM POPUP, USED TO POPULATE SAVED DATA
////////////////////////////////////////
function GetOutletRSS($outlet_id)
{
  $connection = DB_OpenConnection();
  $strsql = "select p.id, p.rssname, p.location from rss_custom_outletsrss p where p.outlet_id = '".$outlet_id."' order by p.id";
  $resultset = mysql_query($strsql, $connection);
  DB_CloseConnection($connection);
  return $resultset;  
}


////////////////////////////////////////
//CALLED FROM POPUP, SAVES PORTLET AND FEEDS
////////////////////////////////////////
function SaveOutlet()
{
  

  $outlet_id = $_GET['outlet_id'];
  $user = $_GET['user'];
  $name = $_GET['name'];
  $shared = $_GET['shared'];
  $total_items = $_GET['total_items'];
  $timerange = $_GET['timerange'];
  $limitingtext = $_GET['limitingtext'];
  $numrss = $_GET['numrss'];
 
  $connection = DB_OpenConnection();

  $strsql = "UPDATE rss_custom_outlets SET name = '".$name."', totalitems = ".$total_items.", shared = '".$shared."', timerange = ".$timerange.", limitingtext = '".$limitingtext."' WHERE outlet_id = '".$outlet_id."'";
  mysql_query($strsql);

  $status = $status.$strsql."|";

  $intcount = 1;
  while ($intcount <= $numrss)
  {
    $rssname = $_GET['rss'.$intcount.'_rssname'];
    $location = $_GET['rss'.$intcount.'_location'];
    $location = str_replace("|","&",$location);
    $id = $_GET['rss'.$intcount.'_id'];
 
   $strsql = "UPDATE rss_custom_outletsrss SET rssname = '".$rssname."', location = '".$location."' WHERE outlet_id = '".$outlet_id."' and id = ".$id;
    mysql_query($strsql);

    $status = $status.$strsql."|";
    $intcount = $intcount + 1;
  }

  DB_CloseConnection($connection);

  return $status;
}


////////////////////////////////////////
//DELETES PORTLET
////////////////////////////////////////
function DBDeleteOutlet($outlet_id)
{
  $connection = DB_OpenConnection();
  $strsql = "delete from rss_custom_outletsrss where outlet_id = '".$outlet_id."'";
  mysql_query($strsql);
  $strsql = "delete from rss_custom_outlets where outlet_id = '".$outlet_id."'";
  mysql_query($strsql);
  DB_CloseConnection($connection);
}

////////////////////////////////////////
// RETURN THE MATCHING FEEDS
////////////////////////////////////////
function DBSearchFeeds($search_text)
{
  $connection = DB_OpenConnection();
  $strsql = "select id, rssname, location from rss_custom_outletsrss where rssname like '%".$search_text."%' group by rssname, location";
  $resultset = mysql_query($strsql, $connection);
  return $resultset;
}

////////////////////////////////////////
// RETURN THE MATCHING FEEDS
////////////////////////////////////////
function DBSearchFeedsById($id)
{
  $connection = DB_OpenConnection();
  $strsql = "select * from rss_custom_outletsrss where id like '%".$id."%'";
  $resultset = mysql_query($strsql, $connection);
  return $resultset;
}


////////////////////////////////////////
//SAVE NEW RSS FEED
////////////////////////////////////////
function InsertRss($name, $location)
{
  $outlet_id = $_GET['outlet_id'];
 
  $connection = DB_OpenConnection();
  $strsql = "INSERT INTO rss_custom_outletsrss (outlet_id, rssname, location) VALUES ('".$outlet_id."', '".$name."', '".$location."')";
  mysql_query($strsql);

  $strsql = "SELECT MAX(ID) as maxid from rss_custom_outletsrss";
  $resultset = mysql_query($strsql, $connection);
  while ($row = mysql_fetch_assoc($resultset)) 
  {
    $maxid = $row['maxid'];
  }
  mysql_free_result($resultset);
  DB_CloseConnection($connection);
  return $maxid;
}


////////////////////////////////////////
//DELETES RSS FEED
////////////////////////////////////////
function DBDeleteRSS($rss_id)
{
  $connection = DB_OpenConnection();
  $strsql = "delete from rss_custom_outletsrss where id = ".$rss_id;
  mysql_query($strsql);
  DB_CloseConnection($connection);
}

////////////////////////////////////////
// SAVE NEW CREATED FEED
////////////////////////////////////////
function DBCreateFeedFromWeb($outlet_id, $name, $location)
{
  $connection = DB_OpenConnection();
  $strsql = "insert into rss_custom_outletsrss (outlet_id, rssname, location) values ('".$outlet_id."', '".$name."', '".$location."')";
  mysql_query($strsql);
  DB_CloseConnection($connection);
}

////////////////////////////////////////
// SAVE NEW CREATED FEED
////////////////////////////////////////
function DBCreateFeedFromURL($outlet_id, $location)
{
  $connection = DB_OpenConnection();
  $strsql = "insert into rss_custom_outletsrss (outlet_id, rssname, location) values ('".$outlet_id."', '', '".$location."')";
  mysql_query($strsql);
  DB_CloseConnection($connection);
}

////////////////////////////////////////
// GETS A USERS NAME AND EMAIL
////////////////////////////////////////
function GetUserInfo($user)
{
  $connection = DB_OpenConnection();

  $strsql = "select name, email from rss_users where id = ".$user;
  $resultset = mysql_query($strsql, $connection);
    
  DB_CloseConnection($connection);

  return $resultset;
}
?>
