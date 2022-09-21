<?php
require_once("../dataaccess/generalDAL.php");

function GetUser($username)
{
  $connection = DB_OpenConnection();
  $strsql = "select id, password from rss_users where username = '".$username."'";
  $resultset = mysql_query($strsql, $connection);
  DB_CloseConnection($connection);
  return $resultset;  
}


function GetUserOutlets($userid)
{
  $connection = DB_OpenConnection();
  $strsql = "select * from rss_custom_outlets where user_id = '".$userid."' order by display_column, display_order";
  $resultset = mysql_query($strsql, $connection);
  DB_CloseConnection($connection);
  return $resultset;  
}

function GetOutlet($outletid)
{
  $connection = DB_OpenConnection();
  $strsql = "select * from rss_custom_outletsrss where outlet_id = '".$userid."'";
  $resultset = mysql_query($strsql, $connection);
  DB_CloseConnection($connection);
  return $resultset;  
}
?>