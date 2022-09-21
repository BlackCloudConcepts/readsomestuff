<?php
require_once("../../../dataaccess/generalDAL.php");
//require_once("../../../dataaccess/outlet_contentDAL.php");
//require_once("../../../dataaccess/outlet_displayDAL.php");
require_once("../../../dataaccess/configurationDAL.php");

$CURRENTSTYLE = $_GET['currentstyle'];

//CALL THE PROPER FUNCTION BASED ON THE ACTION PASSED INTO THE AJAX CALL
$action = $_GET['action'];
switch ($action)
{
	case "settings":
    	Settings($CURRENTSTYLE);
    	break;
    case "saveusersettings":
    	SaveUserSettings();
    	break;
}


//////////////////////////////////////////////
//GETS THE HTML FOR THE USER SETTINGS POPUP WINDOW
//////////////////////////////////////////////
function Settings($CURRENTSTYLE)
{
  $user = $_GET['user'];
  //FIND IF USER HAS PREVIOUSLY SAVED SETTINGS
  $recordset = GetUserSettings($user);
  while ($row = mysql_fetch_assoc($recordset))
  {
    $style = $row['style'];
    $level = $row['level'];
    $numbercolumns = $row['numbercolumns'];
    $screenwidth = $row['screenwidth'];
  }
//  if ($style == "")
//  {
//    $style = "sunny";
//  }

  $stroutput .= "<table cellspacing='0' cellpadding='0' border='0'>";
  $stroutput .= "<tr>";
  $stroutput .= "<td><img src='custom/images/orange_tableft.png' title='User Settings' border='0'/></td>";
  $stroutput .= "<td style='text-align:center;background-image:url(\"custom/images/orange_tabmiddle.png\");background-repeat:repeat-x;'>";
  $stroutput .= "<a style='text-decoration:none;vertical-align:top;line-height:15px;' href='javascript:void(0);' title='User Settings' >";
  $stroutput .= "<font color='#ffffff'><b>USER SETTINGS</b></font>";
  $stroutput .= "</a></td>";
  $stroutput .= "<td><img src='custom/images/orange_tabright.png' title='User Settings' border='0'/></td>";
  $stroutput .= "</tr>";
  $stroutput .= "</table>";
 
// DISPLAY STYLE 
  $stroutput .= "<table cellspacing='0' cellpadding='0' border='0' width='590' class='orange'>";
//  $stroutput .= "<tr><td colspan='4' class='jqmConfirmTitle' bgcolor='#AD3F01'><font color='#ffffff'><b>&nbsp;User Settings Setup</b></font></td></tr>";
//  $stroutput .= "<tr><td height='3'></td></tr>";

//  $stroutput = $stroutput."<tr><td align='center'><table cellspacing='0' cellpadding='0' border='0' width='400'>";

//  $stroutput = $stroutput."<tr><td height='5'></td></tr>";
//  $stroutput = $stroutput."<tr><td height='1' bgcolor='#e0e0e0' colspan='2'></td></tr>";
//  $stroutput = $stroutput."<tr><td height='5'></td></tr>";
//
  $stroutput = $stroutput."<tr><td class='myOrangeSmallMiddle'><b>THEME</b></td><td>";
  $stroutput = $stroutput."<select id='style' class='myTextboxBlack'>";
 

//FINAL THEMES
//    if ($style == "light-blue")
//    $stroutput = $stroutput."<option value='light-blue' selected>Big Wave</option>";
//  else
//    $stroutput = $stroutput."<option value='light-blue'>Big Wave</option>";
//  if ($style == "dark-red")
//    $stroutput = $stroutput."<option value='dark-red' selected>Bloody Mary</option>";
//  else
//    $stroutput = $stroutput."<option value='dark-red'>Bloody Mary</option>";
//  if ($style == "dark-green")
//    $stroutput = $stroutput."<option value='dark-green' selected>Enchanted Forest</option>";
//  else
//    $stroutput = $stroutput."<option value='dark-green'>Enchanted Forest</option>";
//  if ($style == "light-green")
//    $stroutput = $stroutput."<option value='light-green' selected>Froggy</option>";
//  else
//    $stroutput = $stroutput."<option value='light-green'>Froggy</option>";
//  if ($style == "dark-yellow")
//    $stroutput = $stroutput."<option value='dark-yellow' selected>Golden Sunrise</option>";
//  else
//    $stroutput = $stroutput."<option value='dark-yellow'>Golden Sunrise</option>";
  if ($style == "light-orange")
    $stroutput = $stroutput."<option value='light-orange' selected>Light</option>";
  else
    $stroutput = $stroutput."<option value='light-orange'>Light</option>";
//   if ($style == "light-purple")
//    $stroutput = $stroutput."<option value='light-purple' selected>Lavendar Dream</option>";
//  else
//    $stroutput = $stroutput."<option value='light-purple'>Lavendar Dream</option>";
//  if ($style == "light-red")
//    $stroutput = $stroutput."<option value='light-red' selected>Little Piggy</option>";
//  else
//    $stroutput = $stroutput."<option value='light-red'>Little Piggy</option>";
//  if ($style == "dark-blue")
//    $stroutput = $stroutput."<option value='dark-blue' selected>Midnight</option>";
//  else
//    $stroutput = $stroutput."<option value='dark-blue'>Midnight</option>";
//  if ($style == "dark-brown")
//    $stroutput = $stroutput."<option value='dark-brown' selected>Milk Chocolate</option>";
//  else
//    $stroutput = $stroutput."<option value='dark-brown'>Milk Chocolate</option>";
//  if ($style == "dark-purple")
//    $stroutput = $stroutput."<option value='dark-purple' selected>Orchids</option>";
//  else
//    $stroutput = $stroutput."<option value='dark-purple'>Orchids</option>";
//  if ($style == "light-grey")
//    $stroutput = $stroutput."<option value='light-grey' selected>Platinum</option>";
//  else
//    $stroutput = $stroutput."<option value='light-grey'>Platinum</option>";
  if ($style == "dark-orange")
    $stroutput = $stroutput."<option value='dark-orange' selected>Dark</option>";
  else
    $stroutput = $stroutput."<option value='dark-orange'>Dark</option>";
//  if ($style == "light-brown")
//    $stroutput = $stroutput."<option value='light-brown' selected>Sand Dunes</option>";
//  else
//    $stroutput = $stroutput."<option value='light-brown'>Sand Dunes</option>";
//  if ($style == "dark-grey")
//    $stroutput = $stroutput."<option value='dark-grey' selected>Slate</option>";
//  else
//    $stroutput = $stroutput."<option value='dark-grey'>Slate</option>";
//  if ($style == "light-yellow")
//    $stroutput = $stroutput."<option value='light-yellow' selected>Sour Lemon</option>";
//  else
//    $stroutput = $stroutput."<option value='light-yellow'>Sour Lemon</option>";
//
   $stroutput = $stroutput."</select>";
  $stroutput = $stroutput."</td><td><a href='#' id='helpdisplaystyle' onclick=\"javascript:ShowHelp('helpdisplaystyle')\"><img src='custom/images/orange_help.png' border='0'/></a>";
  $stroutput = $stroutput."</td></tr>";
//  
// $stroutput = $stroutput."<tr><td height='5'></td></tr>";
// $stroutput = $stroutput."<tr><td height='1' bgcolor='#e0e0e0' colspan='2'></td></tr>";
// $stroutput = $stroutput."<tr><td height='5'></td></tr>";

////LEVEL
// $stroutput = $stroutput."<tr><td class='jqmAlertTitle'><b>User Level</b></td><td>";
//  $stroutput = $stroutput."<select id='level' class='myTextboxBlack'>";
//  if ($level == "basic")
//    $stroutput = $stroutput."<option value='basic' selected>Basic</option>";
//  else
//    $stroutput = $stroutput."<option value='basic'>Basic</option>";
//  if ($level == "advanced")
//    $stroutput = $stroutput."<option value='advanced' selected>Advanced</option>";
//  else
//    $stroutput = $stroutput."<option value='advanced'>Advanced</option>";
//  $stroutput = $stroutput."</select>";
//  $stroutput = $stroutput."&nbsp;<a href='#' id='helpuserlevel' onclick=\"javascript:ShowHelp('helpuserlevel')\"><img src='portlets/images/help.gif' border='0'/></a>";
//  $stroutput = $stroutput."</td></tr>";
//
// $stroutput = $stroutput."<tr><td height='5'></td></tr>";
// $stroutput = $stroutput."<tr><td height='1' bgcolor='#e0e0e0' colspan='2'></td></tr>";
// $stroutput = $stroutput."<tr><td height='5'></td></tr>";

//NUMBER COLUMNS
 $stroutput = $stroutput."<tr><td class='myOrangeSmallMiddle'><b>NUMBER OF COLUMNS</b></td><td>";
  $stroutput = $stroutput."<select id='numbercolumns' class='myTextboxBlack'>";
  if ($numbercolumns == 3)
    $stroutput = $stroutput."<option value='3' selected>3</option>";
  else
    $stroutput = $stroutput."<option value='3'>3</option>";
  if ($numbercolumns == 4)
    $stroutput = $stroutput."<option value='4' selected>4</option>";
  else
    $stroutput = $stroutput."<option value='4'>4</option>";
  if ($numbercolumns == 5)
    $stroutput = $stroutput."<option value='5' selected>5</option>";
  else
    $stroutput = $stroutput."<option value='5'>5</option>";
  $stroutput = $stroutput."</select>";
  $stroutput = $stroutput."</td><td><a href='#' id='helpnumbercolumns' onclick=\"javascript:ShowHelp('helpnumbercolumns')\"><img src='custom/images/orange_help.png' border='0'/></a>";
  $stroutput = $stroutput."</td></tr>";
  
// $stroutput = $stroutput."<tr><td height='5'></td></tr>";
// $stroutput = $stroutput."<tr><td height='1' bgcolor='#e0e0e0' colspan='2'></td></tr>";
// $stroutput = $stroutput."<tr><td height='5'></td></tr>";

  //SCREEN WIDTH
  $stroutput = $stroutput."<tr><td class='myOrangeSmallMiddle'><b>SCREEN WIDTH</b></td><td>";
  $stroutput = $stroutput."<select id='screenwidth' class='myTextboxBlack'>";
  if ($screenwidth == "800")
    $stroutput = $stroutput."<option value='800' selected>800 pixels</option>";
  else
    $stroutput = $stroutput."<option value='800'>800 pixels</option>";
   if ($screenwidth == "1000")
    $stroutput = $stroutput."<option value='1000' selected>1000 pixels</option>";
  else
    $stroutput = $stroutput."<option value='1000'>1000 pixels</option>";
   if ($screenwidth == "1200")
    $stroutput = $stroutput."<option value='1200' selected>1200 pixels</option>";
  else
    $stroutput = $stroutput."<option value='1200'>1200 pixels</option>";
   if ($screenwidth == "1400")
    $stroutput = $stroutput."<option value='1400' selected>1400 pixels</option>";
  else
    $stroutput = $stroutput."<option value='1400'>1400 pixels</option>";
  $stroutput = $stroutput."</select>";
  $stroutput = $stroutput."</td><td><a href='#' id='helpscreenwidth' onclick=\"javascript:ShowHelp('helpscreenwidth')\"><img src='custom/images/orange_help.png' border='0'/></a>";
  $stroutput = $stroutput."</td></tr>";

// $stroutput = $stroutput."<tr><td height='5'></td></tr>";
// $stroutput = $stroutput."<tr><td height='1' bgcolor='#e0e0e0' colspan='2'></td></tr>";
// $stroutput = $stroutput."<tr><td height='5'></td></tr>";
 
   	$stroutput .= "<tr>";
   	$stroutput .= "<td></td><td><table cellspacing='0' cellpadding='0' border='0'><tr>";
   	$stroutput .= "<td><img src='custom/images/gray_barleft.png' title='Save Settings' border='0'/></td>";
    $stroutput .= "<td style='text-align:center;background-image:url(\"custom/images/gray_barmiddle.png\");background-repeat:repeat-x;'>";
  	$stroutput .= "<a style='text-decoration:none;vertical-align:top;line-height:13px;' title='Save Settings' href='#' id='saveusersettings' onclick=\"javascript:SaveUserSettings();\" >";
 	$stroutput .= "<font color='#000000'><b>SAVE SETTINGS</b></font>";
   	$stroutput .= "</a></td>";
  	$stroutput .= "<td><img src='custom/images/gray_barright.png' title='Save Settings' border='0'/></td></tr>";
  	$stroutput .= "</table></td><td></td></tr>";

// $stroutput = $stroutput."<tr><td></td><td>";
//  $stroutput = $stroutput."<a href='#' id='saveusersettings' onclick='javascript:SaveUserSettings();'><img src='portlets/css/images/_saveusersettings.jpg' title='Save User Settings' border='0'/></a>";
//  $stroutput = $stroutput."</td></tr>";

//    $stroutput = $stroutput."</table></td></tr>";

  $stroutput .= "</table>";

  echo "User Settings|".$stroutput;
}


//////////////////////////////////////////////
//SAVES USER SETTINGS TO DATABASE
//////////////////////////////////////////////
function SaveUserSettings()
{
  $style = $_GET['style'];
  //$level = $_GET['level'];
  $numbercolumns = $_GET['numbercolumns'];
  $screenwidth = $_GET['screenwidth'];
  $user = $_GET['user'];

  //SaveUserSettingsToDB($style, $level, $numbercolumns, $screenwidth, $user);
  SaveUserSettingsToDB($style, $numbercolumns, $screenwidth, $user);

  echo "Saved";
}