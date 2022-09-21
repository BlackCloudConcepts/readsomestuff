<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<title>Read Some Stuff Mobile</title>
<?php
require_once("../dataaccess/generalDAL.php");
require_once("../dataaccess/outlet_contentDAL.php");
require_once("../dataaccess/outlet_displayDAL.php");
require_once("../dataaccess/configurationDAL.php");
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
LoadOutletRssData();
?>
</td>
</tr>
</table>

</body>
</html>


<?php

///////////////////////////////////////////////////
// Find all feeds and return rss formatted data
///////////////////////////////////////////////////
function LoadOutletRssData()
{
  	require_once('../simplepie/php/simplepie.inc');

  	$outlet_id = $_GET['outlet_id'];

  	// FIND TOTAL NUMBER OF ITEMS
  	$outlet_recordset = GetOutletConfiguration($outlet_id);
  	while ($row = mysql_fetch_assoc($outlet_recordset)) 
  	{
    	$totalitems = $row['totalitems'];
    	$timerange = $row['timerange'];
    	$limitingtext = $row['limitingtext'];
  	}

  	$stroutput = "<table cellspacing='0' cellpadding='0' border='0' width='100%'>";
  
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
        $rowclass = "rowoff";

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
	
	          		$stroutput = $stroutput."<tr class='".$rowclass."' style='border: 0px;' width='300'><td><img src='".$favicon."' onError=\"this.src='../images/unknown.gif';\" border='0' height='16' width='16'/>&nbsp;&nbsp;&nbsp;</td><td valign='top' class='mylink'><a href='".$feedlink."' target='_blank' class='mylink'>".$cleantitle."</a>&nbsp;&nbsp;<b>(".$feeddate.")</b></td></tr><tr><td height='3'></td></tr>";

                                if ($rowclass == "rowoff")
                                 $rowclass = "rowon";
                                else
                                 $rowclass = "rowoff";
	
	          		$currentnumitems = $currentnumitems + 1;
	        	} // end limitingtext check
	      	}  // end timerange check
	    } // end currentitems if
  	endforeach;

  	$stroutput = $stroutput."</table>";
  	echo $stroutput;
}

?>