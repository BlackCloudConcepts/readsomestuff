<?php
require_once("../../../dataaccess/generalDAL.php");
require_once("../../../dataaccess/outlet_contentDAL.php");
require_once("../../../dataaccess/outlet_displayDAL.php");
require_once("../../../dataaccess/configurationDAL.php");

//CALL THE PROPER FUNCTION BASED ON THE ACTION PASSED INTO THE AJAX CALL
$action = $_GET['action'];
switch ($action)
{
	case "loadoutlet":
    	LoadOutletRssData();
    	break;
  	case "loadalloutlets":
  		LoadAllOutletsRssData();
    	break;
}


///////////////////////////////////////////////////
// Return all outlets
///////////////////////////////////////////////////
function LoadAllOutletsRssData()
{
  	$user = $_GET['user'];
  	$outlets = GetOutletPosition($user);
  	echo $outlets;
}

///////////////////////////////////////////////////
// Find all feeds and return rss formatted data
///////////////////////////////////////////////////
function LoadOutletRssData()
{
  	require_once('../../../simplepie/php/simplepie.inc');

  	$outlet_id = $_GET['outlet_id'];

  	// FIND TOTAL NUMBER OF ITEMS
  	$outlet_recordset = GetOutletConfiguration($outlet_id);
  	while ($row = mysql_fetch_assoc($outlet_recordset)) 
  	{
    	$totalitems = $row['totalitems'];
    	$timerange = $row['timerange'];
    	$limitingtext = $row['limitingtext'];
  	}

  	$stroutput = "<table cellspacing='0' cellpadding='0' border='0'>";
  
  	$resultset = GetOutletFeedConfiguration($outlet_id);
  	$feed = new SimplePie();

  	$arrFeedList = array();
  	//LOOP THROUGH MULTIPLE FEED LOCATIONS
  	while ($row = mysql_fetch_assoc($resultset)) 
  		{
    	$location = $row['location'];
	    if ($location == "")
	    {
	      $stroutput = $stroutput."<tr><td></td><td></td><td></td><td width='3'></td><td class='inner_text'><b>Feed Not Configured</b></td></tr>";
	    }
	    else
	    {
	      array_push($arrFeedList, $location);
	    }
  	}
  	$feed->set_feed_url($arrFeedList);

	$feed->handle_content_type();
	//$feed->set_item_limit(intval($totalitems));
	$feed->set_cache_duration(840);  // Cache for 14 minutes
	//$feed->enable_cache(false);
	
	$feed->init();

  	$currentnumitems = 0;

  	//foreach ($feed->get_items(0, $totalitems) as $item):
  	foreach ($feed->get_items() as $item):
	    if ($currentnumitems < $totalitems)
	    {
	      	// check to see if the item was from the given timespan
	      	$Y = $item->get_date(Y);
	      	$M = $item->get_date(n);
	      	$D = $item->get_date(j);
	      	$H = $item->get_date(G);
	      	$MI = $item->get_date(i);
	      	$S = $item->get_date(s);
	      	//$stroutput = $stroutput."[".$Y."]"."[".$M."]"."[".$D."]"."[".$H."]"."[".$MI."]"."[".$S."]";
	      	$starttime = time() - ($timerange * 24 * 60 * 60);
	      	//$itemtime = mktime($item->get_date(G, i, s, n, j, Y));
	      	$itemtime = mktime($H, $MI, $S, $M, $D, $Y);
	      	//$stroutput = $stroutput."[".time()."][".$starttime."][".$itemtime."]";
	      	if ($itemtime > $starttime || $timerange == 0)
	      	{
	        	$feedtitle = $item->get_title();
	        	if (strrpos(strtolower($feedtitle), strtolower($limitingtext)) === false && $limitingtext != "")
        		{
          			// escape loop
        		}
	        	else
	        	{
			        $feed2 = $item->get_feed(); 
	          		$favicon = $feed2->get_favicon();
	          		$feedlink = $item->get_permalink();
	         		$feeddesc = $item->get_description();
	         		$feeddate = $item->get_date('Y-m-d G:i:s');
	
	          		$cleantitle = str_replace("'","",str_replace("\"","",$feedtitle));
	
	          		if (strpos($feedlink, "twitter.com") === false) /// NOT TWITTER
	          		{
	            		$image = "<a href='#' title='".$cleantitle."' onclick=\"javascript:return GB_showFullScreen('".str_replace("'","",$cleantitle)."', '".$feedlink."');\"><img src='custom/images/window_new.gif' alt='Show Article' title='Show Article' border='0'/></a>";
	
	          		}
	          		else // TWITTER
	          		{  
	            		$image = "";
	          		}
	
	          		$stroutput = $stroutput."<tr class='ui-widget-content' style='border: 0px;' width='300'><td valign='top'><a href='".$feedlink."' target='_blank'><img src='".$favicon."' alt='Go To Site' title='Go To Site' onError=\"this.src='custom/images/unknown.gif';\" border='0' height='16' width='16'/></a></td><td width='3'></td><td valign='top'>".$image."</td><td width='3'></td><td width='250'>".$cleantitle."<br>".$feeddate."</td></tr><tr><td height='3'></td></tr>";
	
	          		$currentnumitems = $currentnumitems + 1;
	        	} // end limitingtext check
	      	}  // end timerange check
	    } // end currentitems if
  	endforeach;

  	$stroutput = $stroutput."</table>";
  	echo $stroutput;
}

?>