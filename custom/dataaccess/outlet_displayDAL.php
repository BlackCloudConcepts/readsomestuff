<?php 
function GetOutletPosition($user)
{
  $connection = DB_OpenConnection();
  $outlet_order = "";

  $strsql = "select * from rss_custom_outlets where user_id = ".$user." order by display_column, display_order";
  $resultset = mysql_query($strsql, $connection);
  $lastcolumn = 0;
  $nextcolumn = 1;
  while ($row = mysql_fetch_assoc($resultset)) 
  {
    if ($row['display_column'] != $lastcolumn)
    {
      // CHECK IF COLUMN IS EQUAL TO THE EXPECTED NEXT COLUMN
      if ($row['display_column'] != $nextcolumn)
      {
        // IF NOT THE EXPECTED NEXT COLUMN THEN ADD A BLANK COLUMN
        while ($row['display_column'] != $nextcolumn)
        {
          $outlet_order = $outlet_order.";";
          $nextcolumn = $nextcolumn + 1;
        }
      }
      if (str_replace(";","",$outlet_order) != "")
      {
        $outlet_order = $outlet_order.";";
      }
      $outlet_order = $outlet_order.$row['outlet_id'];
      $nextcolumn = $nextcolumn + 1;
    }
    else
    {
      if ($outlet_order != "")
      {
        $outlet_order = $outlet_order.",";
      }
      $outlet_order = $outlet_order.$row['outlet_id'];
    }
    $lastcolumn = $row['display_column'];
  }
  
  DB_CloseConnection($connection);
  mysql_free_result($resultset);

  return $outlet_order;
}

/////////////////////////////////////////////////////////
// Returns the name of the outlet
/////////////////////////////////////////////////////////
function GetOutletName($outlet_id)
{
  $connection = DB_OpenConnection();
  $strsql = "select p.name from rss_custom_outlets p where p.outlet_id = '".$outlet_id."'";
  $resultset = mysql_query($strsql, $connection);
  while ($row = mysql_fetch_assoc($resultset)) 
  {
    $outlet_name = $row['name'];
  }
  mysql_free_result($resultset);
  DB_CloseConnection($connection);
  return $outlet_name; 
}

/////////////////////////////////////////////////////////
// Returns the name of the outlet
/////////////////////////////////////////////////////////
function GetOutletNumberItems($outlet_id)
{
  $connection = DB_OpenConnection();
  $strsql = "select p.totalitems from rss_custom_outlets p where p.outlet_id = '".$outlet_id."'";
  $resultset = mysql_query($strsql, $connection);
  while ($row = mysql_fetch_assoc($resultset)) 
  {
    $outlet_totalitems = $row['totalitems'];
  }
  mysql_free_result($resultset);
  DB_CloseConnection($connection);
  return $outlet_totalitems; 
}


////////////////////////////////////////
//SAVES THE PORTLETS ORDER ON THE PAGE
////////////////////////////////////////
function SaveOutletOrder($order, $user)
{
  $connection = DB_OpenConnection();

  //SPLIT ON SEMICOLON TO SEPERATE INTO COLUMNS
  $arrcolumns = explode(";",$order);
  $columnnum = 0;
  foreach($arrcolumns as $arrcolumn)
  {
    $columnnum = $columnnum + 1;
    //SPLIT ON COMMA TO SEPERATE INTO ORDER
    $arroutlets = explode(",",$arrcolumn);
    $ordernum = 0;
    foreach($arroutlets as $outlet)
    {
      $ordernum = $ordernum + 1;
      $strsql = "update rss_custom_outlets set display_column = '".$columnnum."', display_order = '".$ordernum."' where outlet_id = '".$outlet."'";
      mysql_query($strsql);
    }
  }

  DB_CloseConnection($connection);
}

////////////////////////////////////////
//INSERTS A NEW PORTLET INTO DATABASE
////////////////////////////////////////
function AddNewOutlet($outlet_id, $user)
{
  $connection = DB_OpenConnection();
  $strsql = "insert into rss_custom_outlets(outlet_id, user_id, name, shared, totalitems, timerange, limitingtext) values('".$outlet_id."','".$user."','new', 'Yes', 10, 1, '')";
  mysql_query($strsql);
  DB_CloseConnection($connection);
}
?>
