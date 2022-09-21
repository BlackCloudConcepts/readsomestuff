<?php
require_once("../../../dataaccess/generalDAL.php");
require_once("../../../dataaccess/configurationDAL.php");

$CURRENTSTYLE = $_GET['currentstyle'];

//CALL THE PROPER FUNCTION BASED ON THE ACTION PASSED INTO THE AJAX CALL
$action = $_GET['action'];
switch ($action)
{
	case "getoutletsettingswindow":
    	GetOutletSettingsWindow($CURRENTSTYLE);
    	break;
    case "saveoutlet":
    	SaveOutletSettings();
    	break;
    case "deleteoutlet":
    	DeleteOutlet();
    	break;
    case "searchfeeds":
    	SearchFeeds();
    	break;
    case "addrss":
    	AddRss();
    	break;
    case "deleterss":
    	DeleteRSS();
    	break;
    case "createfeedfromweb":
    	CreateFeedFromWeb();
    	break;
  	case "createfeedfromurl":
    	CreateFeedFromURL();
    	break;
}


//////////////////////////////////////////////
//GETS THE HTML FOR THE PORTLET SETTINGS POPUP WINDOW
//////////////////////////////////////////////
function GetOutletSettingsWindow($CURRENTSTYLE)
{
  $outlet_id = $_GET['outlet_id'];

  //GET OUTLET INFO FROM DB
  $resultset_outlets = GetOutletConfiguration($outlet_id);
  CheckResultSet($resultset_outlets);
  while ($row_outlets = mysql_fetch_assoc($resultset_outlets)) 
  {
    $name = $row_outlets['name'];
    $shared = $row_outlets['shared'];
    $totalitems = $row_outlets['totalitems'];
    $timerange = $row_outlets['timerange'];
    $limitingtext = $row_outlets['limitingtext'];
  }
  mysql_free_result($resultset_outlets);

  //GET OUTLET RSS INFO FROM DB
  $resultset_outletsrss = GetOutletRSS($outlet_id);
  CheckResultSet($resultset_outletsrss);
  
  $stroutput = $name."|";

  $stroutput = $stroutput."<table cellspacing='0' cellpadding='0' border='0' width='800'>";
  $stroutput = $stroutput."<tr><td colspan='4' class='jqmConfirmTitle' bgcolor='#AD3F01'><font color='#ffffff'><b>&nbsp;Outlet Setup</b></font></td></tr>";
  $stroutput = $stroutput."<tr><td height='3'></td></tr>";

  $stroutput = $stroutput."<tr><td class='jqmConfirmTitle' width='150'><b>Outlet Name</b></td><td colspan='3' valign='top'>";
  $stroutput = $stroutput."<input type='text' id='name' size='50' value='".$name."' class='myTextboxBlack'></input>";
  $stroutput = $stroutput."&nbsp;<a href='#' id='helpoutletname' onclick=\"javascript:ShowHelp('helpoutletname')\"><img src='custom/images/orange_help.png' border='0'/></a>";
  $stroutput = $stroutput."</td></tr>";

  $stroutput = $stroutput."<tr><td height='5'></td></tr>";
  
  $stroutput = $stroutput."<tr><td colspan='4' class='jqmConfirmTitle' bgcolor='#AD3F01'><font color='#ffffff'><b>&nbsp;Add New RSS Feed (use one of the following methods)</b></font></td></tr>";
  $stroutput = $stroutput."<tr><td height='3'></td></tr>";


  //SEARCH
  $stroutput = $stroutput."<tr><td colspan='4'><b>Method 1 - Search Feeds Previously Defined By Other Read Some Stuff Users</b></td></tr>";
  $stroutput = $stroutput."<tr><td height='2'></td></tr>";
  $stroutput = $stroutput."<tr><td>&nbsp;<i>Keyword</i></td></tr>";
  $stroutput = $stroutput."<tr><td><input type='text' name='search_text' id='search_text' class='myTextboxBlack' size='25'></input></td>";
  $stroutput = $stroutput."<td></td><td valign='top'><a href='#' onclick='javascript:SearchFeeds();'><img src='portlets/css/images/_search.jpg' title='Search' border='0'/></a>";
  $stroutput = $stroutput."&nbsp;<a href='#' id='helpsearchrss' onclick=\"javascript:ShowHelp('helpsearchrss')\"><img src='custom/images/orange_help.png' border='0'/></a>";
  $stroutput = $stroutput."</td></tr><tr><td colspan='4'><div id='search_results'></div></td></tr>";

  $stroutput = $stroutput."<tr><td height='5'></td></tr>";

  $stroutput = $stroutput."<tr bgcolor='#e0e0e0'><td colspan='4' height='1'></td></tr>";

  $stroutput = $stroutput."<tr><td height='5'></td></tr>";

  //CREATE FROM WEB
  $stroutput = $stroutput."<tr><td colspan='4'><b>Method 2 - Create Feeds From Sites Based On Your Keyword</b></td></tr>";
  $stroutput = $stroutput."<tr><td height='2'></td></tr>";
  $stroutput = $stroutput."<tr><td>&nbsp;<i>Create From</i></td><td>&nbsp;<i>Keyword</i></td></tr>";
  $stroutput = $stroutput."<tr><td><select name='create_from' id='create_from' class='myTextboxBlack'>";
  $stroutput = $stroutput."<option value='weather'>Weather (enter zip code as keyword)</option>";
  $stroutput = $stroutput."<option value='googlenews'>Google News</option>";
  $stroutput = $stroutput."<option value='youtube'>YouTube</option>";
  $stroutput = $stroutput."<option value='delicious'>Delicious</option>";
  $stroutput = $stroutput."<option value='digg'>Digg</option>";
  $stroutput = $stroutput."<option value='twitter'>Twitter</option>";
  $stroutput = $stroutput."</select></td>";
  $stroutput = $stroutput."<td><input type='text' name='create_keyword' id='create_keyword' class='myTextboxBlack' size='25'></input></td>";
  $stroutput = $stroutput."<td><a href='#' onclick='javascript:CreateFeedFromWeb();'><img src='portlets/css/images/_createfeed.jpg' title='Search' border='0'/></a>";
  $stroutput = $stroutput."&nbsp;<a href='#' id='helpfeedfromweb' onclick=\"javascript:ShowHelp('helpfeedfromweb')\"><img src='custom/images/orange_help.png' border='0'/></a>";
  $stroutput = $stroutput."</td></tr><tr><td></td><td colspan='2'><div id='search_results'></div></td></tr>";

  $stroutput = $stroutput."<tr><td height='5'></td></tr>";

  $stroutput = $stroutput."<tr bgcolor='#e0e0e0'><td colspan='4' height='1'></td></tr>";

  $stroutput = $stroutput."<tr><td height='5'></td></tr>";

  //CREATE NEW FEED BASED ON URL
  $stroutput = $stroutput."<tr><td colspan='4'><b>Method 3 - Create Feeds By RSS Feed URL</b></td></tr>";
  $stroutput = $stroutput."<tr><td height='2'></td></tr>";
  $stroutput = $stroutput."<tr><td colspan='2'>&nbsp;<i>Feed URL Location</i></td></tr>";
  $stroutput = $stroutput."<tr><td colspan='2'><input type='text' id='urllocation' name='urllocation' class='myTextboxBlack' size='65'></input></td><td>";
  $stroutput = $stroutput."<a href='#' onclick='javascript:CreateFeedFromURL();' class='jqmConfirmTitle'><img src='portlets/css/images/_addnewrssfeed.jpg' title='Add New RSS Feed' border='0'/></a>";  
  $stroutput = $stroutput."&nbsp;<a href='#' id='helpnewfeed' onclick=\"javascript:ShowHelp('helpnewfeed')\"><img src='custom/images/orange_help.png' border='0'/></a>";
  $stroutput = $stroutput."</td></tr><tr><td height='5'></td></tr>";

  $stroutput = $stroutput."<tr><td colspan='4' class='jqmConfirmTitle' bgcolor='#AD3F01'><font color='#ffffff'><b>&nbsp;Current Feeds For This Outlet</b></font></td></tr>";

  $stroutput = $stroutput."<tr><td height='5'></td></tr>";

  $stroutput = $stroutput."<tr><td></td><td class='jqmConfirmTitle'><b>Name</b></td><td class='jqmConfirmTitle'><b>URL Location</b></td><td class='jqmConfirmTitle'><b>Delete RSS</b></td></tr>";

  //LOOP THRU FEEDS
  $intcount = 0;
  while ($row_outletsrss = mysql_fetch_assoc($resultset_outletsrss)) 
  {
    $intcount = $intcount + 1;

    $location = $row_outletsrss['location'];
    $rssname = $row_outletsrss['rssname'];
    $id = $row_outletsrss['id'];

    $stroutput = $stroutput."<tr><td class='jqmConfirmTitle'><b>Feed ".$intcount."</b></td>";
    $stroutput = $stroutput."<td><input type='text' id='rss".$intcount."_rssname' size='25' value='".$rssname."' class='myTextboxBlack'></input></td>";
    $stroutput = $stroutput."<td><input type='text' id='rss".$intcount."_location' size='50' value='".$location."' class='myTextboxBlack'></input></td>";
    $stroutput = $stroutput."<td><a href='javascript:DeleteFeed(\"".$id."\",\"".$outlet_id."\");' class='jqmConfirmTitle'><img src='custom/css/images/_deletefeed.jpg' title='Delete Feed' border='0'/></a></td></tr>";
 
    //HIDDEN FIELD TO STORE RSS ID
    $stroutput = $stroutput."<input type='hidden' id='rss".$intcount."_id' value='".$id."'></input>";

    $stroutput = $stroutput."<tr><td height='5'></td></tr>";
  }
  mysql_free_result($resultset_outletsrss);
  
  $stroutput = $stroutput."<tr><td colspan='2'><span id='newrss' class='jqmConfirmTitle'></span></td></tr>";

  $stroutput = $stroutput."<tr><td height='5'></td></tr>";

  $stroutput = $stroutput."<tr><td colspan='4' class='jqmConfirmTitle' bgcolor='#AD3F01'><font color='#ffffff'><b>&nbsp;Filter Your Results</b></font></td></tr>";

  $stroutput = $stroutput."<tr><td height='5'></td></tr>";
  
  //TOTAL ITEMS
  $stroutput = $stroutput."<tr><td class='jqmConfirmTitle'><b>Total Items</b></td><td>";
  $stroutput = $stroutput."<select id='total_items' class='myTextboxBlack'>";
  if ($totalitems == 5)
    $stroutput = $stroutput."<option value='5' selected>5</option>";
  else
    $stroutput = $stroutput."<option value='5'>5</option>";
  if ($totalitems == 10)
    $stroutput = $stroutput."<option value='10' selected>10</option>";
  else
    $stroutput = $stroutput."<option value='10'>10</option>";
  if ($totalitems == 15)
    $stroutput = $stroutput."<option value='15' selected>15</option>";
  else
    $stroutput = $stroutput."<option value='15'>15</option>";
  $stroutput = $stroutput."</select>";
  $stroutput = $stroutput."&nbsp;<a href='#' id='helptotalitems' onclick=\"javascript:ShowHelp('helptotalitems')\"><img src='custom/images/orange_help.png' border='0'/></a>";
  $stroutput = $stroutput."</td></tr>";

  //LIMITING TEXT
  $stroutput = $stroutput."<tr><td class='jqmConfirmTitle'><b>Containing Word/Phrase</b></td><td colspan='3'>";
  $stroutput = $stroutput."<input type='text' id='limitingtext' size='50' value='".$limitingtext."' class='myTextboxBlack'></input>";
  $stroutput = $stroutput."&nbsp;<a href='#' id='helplimitingtext' onclick=\"javascript:ShowHelp('helplimitingtext')\"><img src='custom/images/orange_help.png' border='0'/></a>";
  $stroutput = $stroutput."</td></tr>";

  //TIME RANGE
  $stroutput = $stroutput."<tr><td class='jqmConfirmTitle'><b>Time Range</b></td><td>";
  $stroutput = $stroutput."<select id='timerange' class='myTextboxBlack'>";
  if ($timerange == 1)
  {
    $stroutput = $stroutput."<option value='1' selected>Last Day</option>";
    $stroutput = $stroutput."<option value='2'>Last 2 Days</option>";
    $stroutput = $stroutput."<option value='7'>Last 7 Days</option>";
    $stroutput = $stroutput."<option value='30'>Last 30 Days</option>";
    $stroutput = $stroutput."</select>";
  }
  else if ($timerange == 2)
  {
    $stroutput = $stroutput."<option value='1'>Last Day</option>";
    $stroutput = $stroutput."<option value='2' selected>Last 2 Days</option>";
    $stroutput = $stroutput."<option value='7'>Last 7 Days</option>";
    $stroutput = $stroutput."<option value='30'>Last 30 Days</option>";
    $stroutput = $stroutput."</select>";
  }
  else if ($timerange == 7)
  {
    $stroutput = $stroutput."<option value='1'>Last Day</option>";
    $stroutput = $stroutput."<option value='2'>Last 2 Days</option>";
    $stroutput = $stroutput."<option value='7' selected>Last 7 Days</option>";
    $stroutput = $stroutput."<option value='30'>Last 30 Days</option>";
    $stroutput = $stroutput."</select>";
  }
  else if ($timerange == 30)
  {
    $stroutput = $stroutput."<option value='1'>Last Day</option>";
    $stroutput = $stroutput."<option value='2'>Last 2 Days</option>";
    $stroutput = $stroutput."<option value='7'>Last 7 Days</option>";
    $stroutput = $stroutput."<option value='30' selected>Last 30 Days</option>";
    $stroutput = $stroutput."</select>";
  }
  else
  {
    $stroutput = $stroutput."<option value='1'>Last Day</option>";
    $stroutput = $stroutput."<option value='2'>Last 2 Days</option>";
    $stroutput = $stroutput."<option value='7'>Last 7 Days</option>";
    $stroutput = $stroutput."<option value='30'>Last 30 Days</option>";
    $stroutput = $stroutput."</select>";
  }
  $stroutput = $stroutput."&nbsp;<a href='#' id='helptimerange' onclick=\"javascript:ShowHelp('helptimerange')\"><img src='custom/images/orange_help.png' border='0'/></a>";
  $stroutput = $stroutput."</td></tr>";

  //SHARED
  $stroutput = $stroutput."<input type='hidden' name='shared' id='shared' value='Yes'></input>";
//  $stroutput = $stroutput."<tr><td class='jqmConfirmTitle'><b>Shared Portlet</b></td><td>";
//  $stroutput = $stroutput."<select id='shared' class='myTextboxBlack'>";
//  if ($shared == "Yes")
//  {
//    $stroutput = $stroutput."<option value='Yes' selected>Yes</option>";
//  }
//  else
//  {
//    $stroutput = $stroutput."<option value='Yes'>Yes</option>";
//  }
//  if ($shared == "No")
//  {
//    $stroutput = $stroutput."<option value='No' selected>No</option>";
//  }
//  else
//  {
//    $stroutput = $stroutput."<option value='No'>No</option>";
//  }
//  $stroutput = $stroutput."</select>";
//  $stroutput = $stroutput."</td></tr>";

//  $stroutput = $stroutput."<tr><td height='5'></td></tr>";

  //HIDDEN VARIABLES
  $stroutput = $stroutput."<input type='hidden' id='outlet_id' value='".$outlet_id."'></input>";
  $stroutput = $stroutput."<input type='hidden' id='numrss' value='".$intcount."'></input>";

  $stroutput = $stroutput."<tr><td></td><td>";
  $stroutput = $stroutput."<a href='#' id='saveoutlet' onclick=\"javascript:SaveOutlet('true');\"><img src='custom/css/images/_saveoutlet.jpg' title='Save Outlet' border='0'/></a></td>";
  $stroutput = $stroutput."<td><a href='javascript:DeleteOutlet(\"".$outlet_id."\");' class='jqmConfirmTitle'><img src='custom/css/images/_deleteoutlet.jpg' title='Delete Outlet' border='0'/></a>";
  $stroutput = $stroutput."</td></tr>";
  $stroutput = $stroutput."</table>";
  
  echo $stroutput;
}

//////////////////////////////////////////////
//SAVES THE POPUP FORM
//////////////////////////////////////////////
function SaveOutletSettings()
{ 
  $outlet_id = $_GET['outlet_id'];
  $name = $_GET['name'];
  
  $status = SaveOutlet();

  echo $outlet_id."|".$name."|".$status;
}



function DeleteOutlet()
{
  $outlet_id = $_GET['outlet_id'];
  DBDeleteOutlet($outlet_id);
  echo "done";
}


//////////////////////////////////////////////
//FIND EXISTING FEEDS
//////////////////////////////////////////////
function SearchFeeds()
{
  $search_text = $_GET['search_text'];
  $resultset = DBSearchFeeds($search_text);
  $numresults = 0;
  $output = "<select name='existing_feeds' id='existing_feeds' style='width:600px' class='myTextboxBlack'>";
  while ($row = mysql_fetch_assoc($resultset)) 
  {
    $numresults = $numresults + 1;
    $output = $output."<option value='".$row['id']."'>".$row['rssname']." - ".$row['location']."</option>";
  }
  $output = $output."</select>&nbsp;&nbsp;<a href='#' onclick='javscript:AddRss();'><img src='custom/css/images/_addfeed.jpg' title='Add Feed' border='0'/></a>";
  if ($numresults == 0)
  {
    echo "No matching feeds were found.";
  }
  else
  {
    echo $output;
  }
}

//////////////////////////////////////////////
//INSERT NEW RSS SECTION
//////////////////////////////////////////////
function AddRss()
{
  $erssid = $_GET['erssid'];
  $resultset = DBSearchFeedsById($erssid);
  $name = "";
  $location = "";
  while ($row = mysql_fetch_assoc($resultset)) 
  {
    $name = $row['rssname'];
    $location = $row['location'];
  }

  //SAVE TO DATABASE
  $maxid = InsertRss($name, $location);

  //DISPLAY NEW SECTION ON POPUP
  $intcount = $_GET['numrss'];
  $intcount = $intcount + 1;

  $stroutput = "";
  $stroutput = $stroutput."<table cellspacing='2' cellpadding='0' border='0'>";
  $stroutput = $stroutput."<tr><td class='jqmAlertTitle' colspan='2' align='center'><b>Define New RSS Feed<b></td></tr>";

  $stroutput = $stroutput."<tr><td class='jqmAlertTitle' width='100'><b>Feed ".$intcount."</b></td><td width='300'>";
  $stroutput = $stroutput."<input type='text' id='rss".$intcount."_location' size='50' value=''></input>";
  $stroutput = $stroutput."</td></tr>";
 
  $stroutput = $stroutput."<tr><td class='jqmAlertTitle'>&nbsp;&nbsp;Containing</td><td>";
  $stroutput = $stroutput."<input type='text' id='rss".$intcount."_containing' size='50' value=''></input>";
  $stroutput = $stroutput."</td></tr>";

  $stroutput = $stroutput."<tr><td class='jqmAlertTitle'>&nbsp;&nbsp;From</td><td>";
  $stroutput = $stroutput."<select id='rss".$intcount."_timeperiod'>";
  $stroutput = $stroutput."<option value='Last Day'>Last Day</option>";
  $stroutput = $stroutput."<option value='Last 2 Days'>Last 2 Days</option>";
  $stroutput = $stroutput."<option value='Last 7 Days'>Last 7 Days</option>";
  $stroutput = $stroutput."<option value='Last 30 Days'>Last 30 Days</option>";
  $stroutput = $stroutput."</select>";
  $stroutput = $stroutput."</td></tr>";
  $stroutput = $stroutput."</table>";
  
  $stroutput = $stroutput."<input type='hidden' id='rss".$intcount."_id' value='".$maxid."'></input>";


  echo $stroutput;
  //echo $maxid;
}

function DeleteRSS()
{
  $currentstyle = $_GET['currentstyle'];
  $rss_id = $_GET['rss_id'];
  DBDeleteRSS($rss_id);
  //echo GetPopupHTML($currentstyle);
  echo GetOutletSettingsWindow($currentstyle);
 
}

//////////////////////////////////////////////
//CREATES A NEW FEED FROM THE WEB
//////////////////////////////////////////////
function CreateFeedFromWeb()
{
  $outlet_id = $_GET['outlet_id'];
  $create_keyword = $_GET['create_keyword'];
  $create_from = $_GET['create_from'];

  $name = "";
  $location = "";
  
  switch ($create_from)
  {
    case "weather":
      $name = "Weather (".$create_keyword.")";
      $location = "http://rss.weather.com/weather/rss/local/".$create_keyword."?cm_ven=LWO&cm_cat=rss&par=LWO_rss";
      break;
    case "googlenews":
      $name = "Google News (".$create_keyword.")";
      $location = "http://news.google.com/news?pz=1&ned=us&hl=en&q=".$create_keyword."&output=rss";
      break;
    case "youtube":
      $name = "YouTube (".$create_keyword.")";
      $location = "http://gdata.youtube.com/feeds/base/videos?q=".$create_keyword."&client=ytapi-youtube-search&alt=rss&v=2";
      break;
    case "delicious":
      $name = "Delicious (".$create_keyword.")";
      $location = "http://feeds.delicious.com/v2/rss/tag/".$create_keyword;
      break;
    case "digg":
      $name = "Digg (".$create_keyword.")";
      $location = "http://digg.com/rss_search?s=".$create_keyword;
      break;
    case "twitter":
      $name = "Twitter (".$create_keyword.")";
      $location = "http://search.twitter.com/search.atom?q=".$create_keyword;
      break;
  }

  DBCreateFeedFromWeb($outlet_id, $name, $location);
}

//////////////////////////////////////////////
//CREATES A NEW FEED FROM THE WEB
//////////////////////////////////////////////
function CreateFeedFromURL()
{
  $outlet_id = $_GET['outlet_id'];
  $urllocation = $_GET['urllocation'];

  $urllocation = str_replace("|", "&", $urllocation);
  
  DBCreateFeedFromURL($outlet_id, $urllocation);
}
?>