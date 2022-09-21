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
  
  
  	$stroutput = $name."|";

    
  	// DISPLAY TABS
  	//$stroutput .= GetTopSection($name);
  	
  	$stroutput .= "<table cellspacing='0' cellpadding='0' border='0'><tr>";
  	
  	 	
  	$stroutput .= "<td><img src='custom/images/orange_tableft.png' title='Outlet Configuration' border='0'/></td>";
  	$stroutput .= "<td style='text-align:center;background-image:url(\"custom/images/orange_tabmiddle.png\");background-repeat:repeat-x;'>";
  	$stroutput .= "<a style='text-decoration:none;vertical-align:top;line-height:15px;' href='javascript:ShowTab(\"3\");' title='Outlet Configuration' >";
 	$stroutput .= "<font color='#ffffff'><b>OUTLET CONFIGURATION</b></font>";
   	$stroutput .= "</a></td>";
  	$stroutput .= "<td><img src='custom/images/orange_tabright.png' title='Outlet Configuration' border='0'/></td>";
  		
  	$stroutput .= "<td width='5'></td>";
  	
  	$stroutput .= "<td><img src='custom/images/orange_tableft.png' title='Search For Feeds' border='0'/></td>";
  	$stroutput .= "<td style='text-align:center;background-image:url(\"custom/images/orange_tabmiddle.png\");background-repeat:repeat-x;'>";
  	$stroutput .= "<a style='text-decoration:none;vertical-align:top;line-height:15px;' href='javascript:ShowTab(\"1\");' title='Search For Feeds' >";
 	$stroutput .= "<font color='#ffffff'><b>SEARCH FOR FEEDS</b></font>";
   	$stroutput .= "</a></td>";
  	$stroutput .= "<td><img src='custom/images/orange_tabright.png' title='Search For Feeds' border='0'/></td>";
  	
  	$stroutput .= "<td width='5'></td>";
  	
  	$stroutput .= "<td><img src='custom/images/orange_tableft.png' title='Enter Feed URL' border='0'/></td>";
  	$stroutput .= "<td style='text-align:center;background-image:url(\"custom/images/orange_tabmiddle.png\");background-repeat:repeat-x;'>";
  	$stroutput .= "<a style='text-decoration:none;vertical-align:top;line-height:15px;' href='javascript:ShowTab(\"2\");' title='Enter Feed URL' >";
 	$stroutput .= "<font color='#ffffff'><b>ENTER FEED URL</b></font>";
   	$stroutput .= "</a></td>";
  	$stroutput .= "<td><img src='custom/images/orange_tabright.png' title='Enter Feed URL' border='0'/></td>";
  	
  	
  	$stroutput .= "</tr></table>";
  	
//  	$stroutput .= "<table cellpadding='3' cellspacing='0' border='0'>";
//	$stroutput .= "<tr>";
//	$stroutput .= "<td><a href='javascript:void(0);' onclick='javascript:ShowTab(\"1\");'>Search</a></td>";
//	$stroutput .= "<td><a href='javascript:void(0);' onclick='javascript:ShowTab(\"2\");'>Enter URL</a></td>";
//	$stroutput .= "<td><a href='javascript:void(0);' onclick='javascript:ShowTab(\"3\");'>Outlet Settings</a></td>";
//	$stroutput .= "</tr></table>";
	
	$stroutput .= "<table cellpadding='0' cellspacing='0' border='0' class='orange'>";
	$stroutput .= "<tr><td width='5'></td><td width='590'>";
	$stroutput .= "<table cellpadding='0' cellspacing='0' border='0'><tr>";
	$stroutput .= "<td id='tab1' style='visibility:hidden;position:absolute;display:none;' >".GetSearchTab()."</td>";
	$stroutput .= "<td id='tab2' style='visibility:hidden;position:absolute;display:none;'>".GetUrlTab()."</td>";
	$stroutput .= "<td id='tab3'>".GetSettingsTab($outlet_id, $name, $shared, $totalitems, $timerange, $limitingtext)."</td>";
	$stroutput .= "</tr></table></td><td width='5'></td></tr></table>";

	$stroutput .= GetExistingFeeds($outlet_id);
	

  	//HIDDEN VARIABLES
  	$stroutput .= "<input type='hidden' id='outlet_id' value='".$outlet_id."'></input>";

  	$stroutput .= "<input type='hidden' name='shared' id='shared' value='Yes'></input>";


  
  echo $stroutput;
}

//////////////////////////////////////////////
//SAVES THE POPUP FORM
//////////////////////////////////////////////
function SaveOutletSettings()
{ 
  $outlet_id = $_GET['outlet_id'];
  $name = $_GET['name'];
  if ($name == "Enter outlet name here ..." || $name == "")
  		$name = "new";
  
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
  
  // Social Media Icons
  $output .= "<table cellspacing='0' cellpadding='0' border='0'";
  $output .= "<tr><td colspan='6' align='center' class='myOrangeSmall'><b>CLICK TO AUTO ADD BASED ON KEYWORD</b></td></tr>";
  $output .= "<tr>";
  $output .= "<td class='myOrangeSmall' width='100'><a href='javascript:void(0);' onclick='javascript:CreateFeedFromWeb(\"googlenews\");'><img src='custom/images/orange_google.png' border='0' /></td>";
  $output .= "<td class='myOrangeSmall' width='100'><a href='javascript:void(0);' onclick='javascript:CreateFeedFromWeb(\"weather\");'><img src='custom/images/orange_weather.png' border='0' /></td>";
  $output .= "<td class='myOrangeSmall' width='100'><a href='javascript:void(0);' onclick='javascript:CreateFeedFromWeb(\"youtube\");'><img src='custom/images/orange_youtube.png' border='0' /></td>";
  $output .= "<td class='myOrangeSmall' width='100'><a href='javascript:void(0);' onclick='javascript:CreateFeedFromWeb(\"twitter\");'><img src='custom/images/orange_twitter.png' border='0' /></td>";
  $output .= "<td class='myOrangeSmall' width='100'><a href='javascript:void(0);' onclick='javascript:CreateFeedFromWeb(\"digg\");'><img src='custom/images/orange_digg.png' border='0' /></td>";
  $output .= "<td class='myOrangeSmall' width='100'><a href='javascript:void(0);' onclick='javascript:CreateFeedFromWeb(\"delicious\");'><img src='custom/images/orange_delicious.png' border='0' /></td>";
  $output .= "</tr>";
  $output .= "<tr>";
  $output .= "<td class='myOrangeSmall'>GOOGLE</td>";
  $output .= "<td class='myOrangeSmall'>WEATHER</td>";
  $output .= "<td class='myOrangeSmall'>YOU TUBE</td>";
  $output .= "<td class='myOrangeSmall'>TWITTER</td>";
  $output .= "<td class='myOrangeSmall'>DIGG</td>";
  $output .= "<td class='myOrangeSmall'>DELICIOUS</td>";
  $output .= "</tr>";  
  $output .= "<tr><td height='15'></td></tr>";
  $output .= "</table>";
  
  $output .= "<table cellspacing='0' cellpadding='0' border='0'";
  $output .= "<tr><td colspan='1' align='center' class='myOrangeSmall'><b>CLICK TO ADD (CTRL-CLICK TO ADD MULTIPLE)</b></td></tr>";
  $output .= "<tr>";
  $output .= "<td><select name='existing_feeds' id='existing_feeds' style='width:600px' class='mySelectList' MULTIPLE size='10'>";
  while ($row = mysql_fetch_assoc($resultset)) 
  {
    $numresults = $numresults + 1;
    $output .= "<option value='".$row['id']."'>".$row['rssname']." - ".$row['location']."</option>";
  }
  $output .= "</select></td></tr></table>";
  
  $output .= "<table cellspacing='0' cellpadding='0' border='0'>";
  	$output .= "<tr><td><img src='custom/images/gray_barleft.png' title='Add Feed(s)' border='0'/></td>";
  	$output .= "<td style='text-align:center;background-image:url(\"custom/images/gray_barmiddle.png\");background-repeat:repeat-x;'>";
  	$output .= "<a style='text-decoration:none;vertical-align:top;line-height:13px;' onclick='javscript:AddRss();' href='javascript:void(0);' title='Add Feed(s)' >";
 	$output .= "<font color='#000000'><b>ADD FEED(S)</b></font>";
   	$output .= "</a></td>";
  	$output .= "<td><img src='custom/images/gray_barright.png' title='Add Feed(s)' border='0'/></td>";
  	$output .= "</tr></table>";
  
//  $output .= "<tr><td><a href='#' onclick='javscript:AddRss();'><img src='custom/css/images/_addfeed.jpg' title='Add Feed' border='0'/></a>";
//  $output .= "</td></tr></table>";
//  if ($numresults == 0)
//  {
//    echo "No matching feeds were found.";
//  }
//  else
//  {
    echo $output;
//  }
}

//////////////////////////////////////////////
//INSERT NEW RSS SECTION
//////////////////////////////////////////////
function AddRss()
{
  $erssid = $_GET['erssid'];
  
  $arrfeeds = explode(",", $erssid);
  
	foreach ($arrfeeds as $value) {
    	$resultset = DBSearchFeedsById($value);
  		$name = "";
  		$location = "";
 		 while ($row = mysql_fetch_assoc($resultset)) 
  		{
   			$name = $row['rssname'];
    		$location = $row['location'];
  		}

  		//SAVE TO DATABASE
  		$maxid = InsertRss($name, $location);
	}
  
  

  //DISPLAY NEW SECTION ON POPUP
//  $intcount = $_GET['numrss'];
//  $intcount = $intcount + 1;

//  $stroutput = "";
//  $stroutput = $stroutput."<table cellspacing='2' cellpadding='0' border='0'>";
//  $stroutput = $stroutput."<tr><td class='jqmAlertTitle' colspan='2' align='center'><b>Define New RSS Feed<b></td></tr>";

//  $stroutput = $stroutput."<tr><td class='jqmAlertTitle' width='100'><b>Feed ".$intcount."</b></td><td width='300'>";
//  $stroutput = $stroutput."<input type='text' id='rss".$intcount."_location' size='50' value=''></input>";
//  $stroutput = $stroutput."</td></tr>";
 
//  $stroutput = $stroutput."<tr><td class='jqmAlertTitle'>&nbsp;&nbsp;Containing</td><td>";
//  $stroutput = $stroutput."<input type='text' id='rss".$intcount."_containing' size='50' value=''></input>";
//  $stroutput = $stroutput."</td></tr>";

//  $stroutput = $stroutput."<tr><td class='jqmAlertTitle'>&nbsp;&nbsp;From</td><td>";
// $stroutput = $stroutput."<select id='rss".$intcount."_timeperiod'>";
//  $stroutput = $stroutput."<option value='Last Day'>Last Day</option>";
//  $stroutput = $stroutput."<option value='Last 2 Days'>Last 2 Days</option>";
//  $stroutput = $stroutput."<option value='Last 7 Days'>Last 7 Days</option>";
//  $stroutput = $stroutput."<option value='Last 30 Days'>Last 30 Days</option>";
 // $stroutput = $stroutput."</select>";
//  $stroutput = $stroutput."</td></tr>";
//  $stroutput = $stroutput."</table>";
  
//  $stroutput = $stroutput."<input type='hidden' id='rss".$intcount."_id' value='".$maxid."'></input>";


 // echo $stroutput;
  echo $maxid;
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

//////////////////////////////////////////////
// RETURN HTML FOR SEARCH TAB
//////////////////////////////////////////////
function GetSearchTab()
{
	// DEFINE TAB 1 (SEARCH)
	$strsearch .= "<table cellspacing='0' cellpadding='0' border='0'>";
//  	$strsearch .= "<tr><td colspan='4'><b>Method 1 - Search Feeds Previously Defined By Other Read Some Stuff Users</b></td></tr>";
//  	$strsearch .= "<tr><td height='2'></td></tr>";

  	$strsearch .= "<tr><td><input type='text' name='search_text' id='search_text' value='Enter keyword here ...' class='myTextboxBlack' size='25' onfocus='javascript:ClearKeyword();' onblur='javascript:PromptKeyword();'></input></td>";
  	$strsearch .= "<td><a href='#' id='helpsearchrss' onclick=\"javascript:ShowHelp('helpsearchrss')\"><img src='custom/images/orange_help.png' border='0'/></a>";
  	$strsearch .= "</td></tr></table>";
  	
  	$strsearch .= "<table cellspacing='0' cellpadding='0' border='0'>";
  	$strsearch .= "<tr><td><img src='custom/images/gray_barleft.png' title='Search' border='0'/></td>";
  	$strsearch .= "<td style='text-align:center;background-image:url(\"custom/images/gray_barmiddle.png\");background-repeat:repeat-x;'>";
  	$strsearch .= "<a style='text-decoration:none;vertical-align:top;line-height:13px;' onclick='javascript:SearchFeeds();' href='javascript:void(0);' title='Search' >";
 	$strsearch .= "<font color='#000000'><b>SEARCH</b></font>";
   	$strsearch .= "</a></td>";
  	$strsearch .= "<td><img src='custom/images/gray_barright.png' title='Search' border='0'/></td>";
  	$strsearch .= "</tr></table>";
  	
  	$strsearch .= "<div id='search_results'></div>";
  	
  	//$strsearch .= "<td></td><td valign='top'><a href='#' onclick='javascript:SearchFeeds();'><img src='portlets/css/images/_search.jpg' title='Search' border='0'/></a>";
  	

//	$strsearch .= "<table cellspacing='0' cellpadding='0' border='0'>";
  	//CREATE FROM WEB
//  	$strsearch .= "<tr><td colspan='4'><b>Method 2 - Create Feeds From Sites Based On Your Keyword</b></td></tr>";
//  	$strsearch .= "<tr><td height='2'></td></tr>";
//  	$strsearch .= "<tr><td>&nbsp;<i>Create From</i></td><td>&nbsp;<i>Keyword</i></td></tr>";
//  	$strsearch .= "<tr><td><select name='create_from' id='create_from' class='myTextboxBlack'>";
//  	$strsearch .= "<option value='weather'>Weather (enter zip code as keyword)</option>";
//  	$strsearch .= "<option value='googlenews'>Google News</option>";
//  	$strsearch .= "<option value='youtube'>YouTube</option>";
//  	$strsearch .= "<option value='delicious'>Delicious</option>";
//  	$strsearch .= "<option value='digg'>Digg</option>";
//  	$strsearch .= "<option value='twitter'>Twitter</option>";
//  	$strsearch .= "</select></td>";
//  	$strsearch .= "<td><input type='text' name='create_keyword' id='create_keyword' class='myTextboxBlack' size='25'></input></td>";
//  	$strsearch .= "<td><a href='#' id='helpfeedfromweb' onclick=\"javascript:ShowHelp('helpfeedfromweb')\"><img src='custom/images/orange_help.png' border='0'/></a></td>";
//  	$strsearch .= "</tr></table>";
  	
//  	$strsearch .= "<table cellspacing='0' cellpadding='0' border='0'>";
//  	$strsearch .= "<tr><td><img src='custom/images/orange_barleft.png' title='Search' border='0'/></td>";
//  	$strsearch .= "<td style='text-align:center;background-image:url(\"custom/images/orange_barmiddle.png\");background-repeat:repeat-x;'>";
//  	$strsearch .= "<a style='text-decoration:none;vertical-align:top;line-height:15px;' onclick='javascript:CreateFeedFromWeb();' href='javascript:void(0);' title='Search' >";
// 	$strsearch .= "<font color='#ffffff'><b>Search</b></font>";
//   	$strsearch .= "</a></td>";
//  	$strsearch .= "<td><img src='custom/images/orange_barright.png' title='Search' border='0'/></td>";
//  	$strsearch .= "</tr></table>";
  	
  	//$strsearch .= "<td><a href='#' onclick='javascript:CreateFeedFromWeb();'><img src='portlets/css/images/_createfeed.jpg' title='Search' border='0'/></a>";
  	//$strsearch .= "</td></tr><tr><td></td><td colspan='2'><div id='search_results'></div></td></tr></table>";
  	
  	$strsearch .= "<div id='search_results'></div>";
	
  	return $strsearch;
}

//////////////////////////////////////////////
// RETURN HTML FOR URL TAB
//////////////////////////////////////////////
function GetUrlTab()
{
	//CREATE NEW FEED BASED ON URL (TAB 2)
  	$strurl .= "<table cellspacing='0' cellpadding='0' border='0'>";
  	$strurl .= "<tr><td><input type='text' id='urllocation' name='urllocation' class='myTextboxBlack' size='65' onfocus='javascript:ClearUrlFeedName();' onblur='javascript:PromptUrlFeedName();' value='Enter URL of RSS feed here ...'></input></td>";
  	$strurl .= "<td><a href='#' id='helpnewfeed' onclick=\"javascript:ShowHelp('helpnewfeed')\"><img src='custom/images/orange_help.png' border='0'/></a></td></tr></table>";
  
  	$strurl .= "<table cellspacing='0' cellpadding='0' border='0'>";
  	$strurl .= "<tr><td><img src='custom/images/gray_barleft.png' title='Add Feed' border='0'/></td>";
  	$strurl .= "<td style='text-align:center;background-image:url(\"custom/images/gray_barmiddle.png\");background-repeat:repeat-x;'>";
  	$strurl .= "<a style='text-decoration:none;vertical-align:top;line-height:13px;' href='javascript:CreateFeedFromURL();' title='Add Feed' >";
 	$strurl .= "<font color='#000000'><b>ADD FEED</b></font>";
   	$strurl .= "</a></td>";
  	$strurl .= "<td><img src='custom/images/gray_barright.png' title='Add Feed' border='0'/></td>";
  	$strurl .= "</tr></table>";
  	
  	//$strurl .= "<a href='#' onclick='javascript:CreateFeedFromURL();' class='jqmConfirmTitle'><img src='portlets/css/images/_addnewrssfeed.jpg' title='Add New RSS Feed' border='0'/></a>";  
  	//$strurl .= "&nbsp;<a href='#' id='helpnewfeed' onclick=\"javascript:ShowHelp('helpnewfeed')\"><img src='custom/images/orange_help.png' border='0'/></a>";
  	//$strurl .= "</td></tr><tr><td height='5'></td></tr></table>";
  
  	return $strurl;
}

//////////////////////////////////////////////
// RETURN HTML FOR SETTINGS TAB
//////////////////////////////////////////////
function GetSettingsTab($outlet_id, $name, $shared, $totalitems, $timerange, $limitingtext)
{
	
  if ($name == "new")
		$name = "Enter outlet name here ...";
  
	// OUTLET SETTINGS (TAB 3)
  $strsettings .= "<table cellspacing='0' cellpadding='0' border='0'>";
  
  $strsettings .= "<tr><td class='myOrangeSmallMiddle'><b>OUTLET NAME</b>&nbsp;&nbsp;</td><td>";
 	$strsettings .= "<input type='text' id='name' size='50' value='".$name."' class='myTextboxBlack' onfocus='javascript:ClearOutletName();' onblur='javascript:PromptOutletName();'></input>";
  	$strsettings .= "</td><td><a href='#' id='helpoutletname' onclick=\"javascript:ShowHelp('helpoutletname')\"><img src='custom/images/orange_help.png' border='0'/></a>";
  	$strsettings .= "</td></tr>";
  
  //TOTAL ITEMS
  $strsettings = $strsettings."<tr><td class='myOrangeSmallMiddle'><b>ITEMS TO DISPLAY</b>&nbsp;&nbsp;</td><td>";
  $strsettings = $strsettings."<select id='total_items' class='myTextboxBlack'>";
  if ($totalitems == 5)
    $strsettings = $strsettings."<option value='5' selected>5</option>";
  else
    $strsettings = $strsettings."<option value='5'>5</option>";
  if ($totalitems == 10)
    $strsettings = $strsettings."<option value='10' selected>10</option>";
  else
    $strsettings = $strsettings."<option value='10'>10</option>";
  if ($totalitems == 15)
    $strsettings = $strsettings."<option value='15' selected>15</option>";
  else
    $strsettings = $strsettings."<option value='15'>15</option>";
  if ($totalitems == 50)
    $strsettings = $strsettings."<option value='50' selected>50</option>";
  else
    $strsettings = $strsettings."<option value='50'>50</option>";
  $strsettings = $strsettings."</select>";
  $strsettings = $strsettings."</td><td><a href='#' id='helptotalitems' onclick=\"javascript:ShowHelp('helptotalitems')\"><img src='custom/images/orange_help.png' border='0'/></a>";
  $strsettings = $strsettings."</td></tr>";

  //LIMITING TEXT
  $strsettings = $strsettings."<tr><td class='myOrangeSmallMiddle'><b>CONTAINING PHRASE</b>&nbsp;&nbsp;</td><td>";
  $strsettings = $strsettings."<input type='text' id='limitingtext' size='50' value='".$limitingtext."' class='myTextboxBlack'></input>";
  $strsettings = $strsettings."</td><td><a href='#' id='helplimitingtext' onclick=\"javascript:ShowHelp('helplimitingtext')\"><img src='custom/images/orange_help.png' border='0'/></a>";
  $strsettings = $strsettings."</td></tr>";

  //TIME RANGE
  $strsettings = $strsettings."<tr><td class='myOrangeSmallMiddle'><b>TIME RANGE</b>&nbsp;&nbsp;</td><td>";
  $strsettings = $strsettings."<select id='timerange' class='myTextboxBlack'>";
  if ($timerange == 1)
  {
    $strsettings = $strsettings."<option value='1' selected>Last Day</option>";
    $strsettings = $strsettings."<option value='2'>Last 2 Days</option>";
    $strsettings = $strsettings."<option value='7'>Last 7 Days</option>";
    $strsettings = $strsettings."<option value='30'>Last 30 Days</option>";
    $strsettings = $strsettings."<option value='0'>Anytime</option>";
    $strsettings = $strsettings."</select>";
  }
  else if ($timerange == 2)
  {
    $strsettings = $strsettings."<option value='1'>Last Day</option>";
    $strsettings = $strsettings."<option value='2' selected>Last 2 Days</option>";
    $strsettings = $strsettings."<option value='7'>Last 7 Days</option>";
    $strsettings = $strsettings."<option value='30'>Last 30 Days</option>";
    $strsettings = $strsettings."<option value='0'>Anytime</option>";
    $strsettings = $strsettings."</select>";
  }
  else if ($timerange == 7)
  {
    $strsettings = $strsettings."<option value='1'>Last Day</option>";
    $strsettings = $strsettings."<option value='2'>Last 2 Days</option>";
    $strsettings = $strsettings."<option value='7' selected>Last 7 Days</option>";
    $strsettings = $strsettings."<option value='30'>Last 30 Days</option>";
    $strsettings = $strsettings."<option value='0'>Anytime</option>";
    $strsettings = $strsettings."</select>";
  }
  else if ($timerange == 30)
  {
    $strsettings = $strsettings."<option value='1'>Last Day</option>";
    $strsettings = $strsettings."<option value='2'>Last 2 Days</option>";
    $strsettings = $strsettings."<option value='7'>Last 7 Days</option>";
    $strsettings = $strsettings."<option value='30' selected>Last 30 Days</option>";
    $strsettings = $strsettings."<option value='0'>Anytime</option>";
    $strsettings = $strsettings."</select>";
  }
  else if ($timerange == 0)
  {
    $strsettings = $strsettings."<option value='1'>Last Day</option>";
    $strsettings = $strsettings."<option value='2'>Last 2 Days</option>";
    $strsettings = $strsettings."<option value='7'>Last 7 Days</option>";
    $strsettings = $strsettings."<option value='30'>Last 30 Days</option>";
    $strsettings = $strsettings."<option value='0' selected>Anytime</option>";
    $strsettings = $strsettings."</select>";
  }
  else
  {
    $strsettings = $strsettings."<option value='1'>Last Day</option>";
    $strsettings = $strsettings."<option value='2'>Last 2 Days</option>";
    $strsettings = $strsettings."<option value='7'>Last 7 Days</option>";
    $strsettings = $strsettings."<option value='30'>Last 30 Days</option>";
    $strsettings = $strsettings."<option value='0'>Anytime</option>";
    $strsettings = $strsettings."</select>";
  }
  $strsettings = $strsettings."</td><td><a href='#' id='helptimerange' onclick=\"javascript:ShowHelp('helptimerange')\"><img src='custom/images/orange_help.png' border='0'/></a>";
  $strsettings = $strsettings."</td></tr></table>";
  
  
    $strsettings .= "<table cellpadding='0' cellspacing='0' border='0' width='590'><tr><td align='right'>";
    $strsettings .= "<table cellpadding='0' cellspacing='0' border='0'>";
  	$strsettings .= "<tr>";
   	$strsettings .= "<td><img src='custom/images/gray_barleft.png' title='Save Configuration' alt='Save Configuration' border='0'/></td>";
    $strsettings .= "<td style='text-align:center;background-image:url(\"custom/images/gray_barmiddle.png\");background-repeat:repeat-x;'>";
  	$strsettings .= "<a style='text-decoration:none;vertical-align:top;line-height:13px;' title='Save Configuration' href='#' id='saveoutlet' onclick=\"javascript:SaveOutlet('true');\" >";
 	$strsettings .= "<font color='#000000'><b>SAVE CONFIGURATION</b></font>";
   	$strsettings .= "</a></td>";
  	$strsettings .= "<td><img src='custom/images/gray_barright.png' title='Save Configuration' alt='Save Configuration' border='0'/></td>";
  	$strsettings .= "<td width='5'></td>";
  	$strsettings .= "<td><img src='custom/images/gray_barleft.png' title='Delete Outlet' border='0'/></td>";
  	$strsettings .= "<td style='text-align:center;background-image:url(\"custom/images/gray_barmiddle.png\");background-repeat:repeat-x;'>";
  	$strsettings .= "<a style='text-decoration:none;vertical-align:top;line-height:13px;' href='javascript:DeleteOutlet(\"".$outlet_id."\");' title='Delete Outlet'>";
 	$strsettings .= "<font color='#000000'><b>DELETE OUTLET</b></font>";
   	$strsettings .= "</a></td>";
  	$strsettings .= "<td><img src='custom/images/gray_barright.png' title='Delete Outlet' border='0'/></td>";
  	$strsettings .= "</tr></table>";
  	$strsettings .= "</td></tr></table>";
  
  return $strsettings;
}


//function GetTopSection($name)
//{
//	if ($name == "new")
//		$name = "Enter outlet name here ...";
		
  	
//	// DEFINE TOP SECTION (OUTLET NAME)
// 	$strtop .= "<table cellspacing='0' cellpadding='0' border='0' width='600'>";
// 	$strtop .= "<tr><td align='center'><table cellspacing='0' cellpadding='0' border='0'>";
// 	$strtop .= "<tr><td class='myOrangeSmallMiddle'><b>OUTLET NAME</b>&nbsp;&nbsp;</td><td>";
// 	$strtop .= "<input type='text' id='name' size='50' value='".$name."' class='myTextboxBlack' onfocus='javascript:ClearOutletName();' onblur='javascript:PromptOutletName();'></input>";
 // 	$strtop .= "</td><td><a href='#' id='helpoutletname' onclick=\"javascript:ShowHelp('helpoutletname')\"><img src='custom/images/orange_help.png' border='0'/></a>";
 // 	$strtop .= "</td></tr>";
 // 	$strtop .= "</table>";
 // 	$strtop .= "</td></tr>";
 // 	$strtop .= "</table>";
 // 	
 // 	// spacing
 // 	$strtop .= "<table cellspacing='0' cellpadding='0' border='0'><tr><td height='15'></td></tr></table>";
  
  
 // 	return $strtop;
//}


function GetExistingFeeds($outlet_id)
{
	//GET OUTLET RSS INFO FROM DB
  	$resultset_outletsrss = GetOutletRSS($outlet_id);
  	CheckResultSet($resultset_outletsrss);
  	
  	// spacing
  	$strfeeds .= "<table cellspacing='0' cellpadding='0' border='0'><tr><td height='15'></td></tr></table>";
  
  
  	// CURRENT FEEDS 
	$strfeeds .= "<table cellspacing='0' cellpadding='0' border='0' class='myOrangeTable' >";
	$strfeeds .= "<tr><td width='5'></td>";
	$strfeeds .= "<td><table cellspacing='0' cellpadding='0' border='0' width='590'>"; //inner table
	$strfeeds .= "<tr><td colspan='4' >";
	$strfeeds .= "<table cellspacing='0' cellpadding='0' border='0' >";
  	$strfeeds .= "<tr>";
  	$strfeeds .= "<td class='myOrangeTitle' width='590'><b>EXISTING FEEDS</b></td>";
  //	$strfeeds .= "<td><img src='custom/images/orange_barleft.png' border='0' /></td>";
  //	$strfeeds .= "<td width='600' style='text-align:center;background-image:url(\"custom/images/orange_barmiddle.png\");background-repeat:repeat-x;'><font color='#ffffff'><b>Existing Feeds</b></font></td>";
  //	$strfeeds .= "<td><img src='custom/images/orange_barright.png' border='0' /></td>";
  	$strfeeds .= "</tr>";
  	$strfeeds .= "</table>";
  	$strfeeds .= "</td></tr>";
  	$strfeeds .= "<tr><td height='5'></td></tr>";
  	$strfeeds .= "<tr><td class='myOrangeSmallLeft'><b>NAME</b></td><td class='myOrangeSmallLeft'><b>URL LOCATION</b></td></tr>";
  	//LOOP THRU FEEDS
  	$intcount = 0;
  	while ($row_outletsrss = mysql_fetch_assoc($resultset_outletsrss)) 
  	{
	    $intcount = $intcount + 1;
	
	    $location = $row_outletsrss['location'];
	    $rssname = $row_outletsrss['rssname'];
	    $id = $row_outletsrss['id'];
	
	    $strfeeds .= "<tr>";
	    //$strfeeds .= "<td class='jqmConfirmTitle'><b>Feed ".$intcount."</b></td>";
	    $strfeeds .= "<td><input type='text' id='rss".$intcount."_rssname' size='20' value='".$rssname."' class='myTextboxBlack'></input></td>";
	    $strfeeds .= "<td><input type='text' id='rss".$intcount."_location' size='45' value='".$location."' class='myTextboxBlack'></input></td>";
	    $strfeeds .= "<td><a href='javascript:DeleteFeed(\"".$id."\",\"".$outlet_id."\");' class='jqmConfirmTitle'><img src='custom/images/orange_close.png' alt='Delete Feed' title='Delete Feed' border='0' /></a></td>";
	    $strfeeds .= "</tr>";
	 
	    //HIDDEN FIELD TO STORE RSS ID
	    $strfeeds .= "<input type='hidden' id='rss".$intcount."_id' value='".$id."'></input>";
	
	    $strfeeds .= "<tr><td height='5'></td></tr>";
    
  	}
  	mysql_free_result($resultset_outletsrss);
  
    $strfeeds .= "<tr><td colspan='2'><span id='newrss' class='jqmConfirmTitle'></span></td></tr>";
    $strfeeds .= "<input type='hidden' id='numrss' value='".$intcount."'></input>";

	$strfeeds .= "<tr><td align='right' colspan='2'>";
  	
  	$strfeeds .= "<table cellpadding='0' cellspacing='0' border='0'>";
  	$strfeeds .= "<tr>";
   	$strfeeds .= "<td><img src='custom/images/gray_barleft.png' title='Update Feeds' alt='Save Configuration' border='0'/></td>";
    $strfeeds .= "<td style='text-align:center;background-image:url(\"custom/images/gray_barmiddle.png\");background-repeat:repeat-x;'>";
  	$strfeeds .= "<a style='text-decoration:none;vertical-align:top;line-height:13px;' title='Update Feeds' href='#' id='saveoutlet' onclick=\"javascript:SaveOutlet('true');\" >";
 	$strfeeds .= "<font color='#000000'><b>UPDATE FEEDS</b></font>";
   	$strfeeds .= "</a></td>";
  	$strfeeds .= "<td><img src='custom/images/gray_barright.png' title='Update Feeds' alt='Update Feeds' border='0'/></td>";
  	$strfeeds .= "</tr>";
  	$strfeeds .= "</table>";
  	
  	$strfeeds .= "</td></tr>";
  	
  	$strfeeds .= "</table>"; //inner table
  	
  	$strfeeds .= "</td><td width='5'></td></tr></table>";
  	
  	// spacing
  	$strfeeds .= "<table cellspacing='0' cellpadding='0' border='0'><tr><td height='15'></td></tr></table>";
  
  return $strfeeds;
}
?>