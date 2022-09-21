<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<title>Read Some Stuff</title>
<?php 
// PHP Includes
// data access layer
require_once("custom/dataaccess/generalDAL.php");
require_once("custom/dataaccess/configurationDAL.php");
require_once("custom/dataaccess/outlet_contentDAL.php");
require_once("custom/dataaccess/outlet_displayDAL.php");

// get CURRENTUSER
if ($_REQUEST['userid'] != '')
	$CURRENTUSER = $_REQUEST['userid'];
else
	$CURRENTUSER = GetUserId();
$_SESSION['userid'] = $CURRENTUSER;
// get current style for user
$CURRENTSTYLE = GetUserSettingsStyle($CURRENTUSER);
// load outlet content
require_once("custom/components/outlet_content/news/news.php");
?>

<!-- set current user and current style javascript variables -->
<script type="text/javascript">
var CURRENTUSER = "<?php echo $CURRENTUSER;?>";
var CURRENTSTYLE = "<?php echo $CURRENTSTYLE;?>";
</script>

<!--  CSS Includes -->
<link type="text/css" href="custom/jquery/css/<?php echo $CURRENTSTYLE; ?>/jquery-ui-1.7.2.custom.css" rel="stylesheet" />
<link type="text/css" href="custom/jquery/css/demos.css" rel="stylesheet" />
<link type="text/css" href="custom/jquery/css/jqModal.css" rel="stylesheet" />
<link type="text/css" href="custom/css/descriptionpopup.css" rel="stylesheet" />
<link type="text/css" href="custom/css/myclasses.css" rel="stylesheet" />

<!--  JQuery Includes -->
<script type="text/javascript" src="custom/jquery/js/jquery-1.3.2.js"></script>
<script type="text/javascript" src="custom/jquery/js/ui.core.js"></script>
<script type="text/javascript" src="custom/jquery/js/ui.sortable.js"></script>
<script type="text/javascript" src="custom/jquery/js/jqModal.js"></script>
<script type="text/javascript" src="custom/jquery/js/jqDnR.js"></script>
<script type="text/javascript" src="custom/jquery/js/dimensions.js"></script>


<!-- Javascript Includes -->
<script type="text/javascript" src="custom/js/general.js"></script>
<script type="text/javascript" src="custom/components/outlet_display/outlet_display.js"></script>
<script type="text/javascript" src="custom/components/outlet_content/news/news.js"></script>
<script type="text/javascript" src="custom/components/configuration/config_outlet/config_outlet.js"></script>
<script type="text/javascript" src="custom/components/configuration/config_user/config_user.js"></script>
<script type="text/javascript" src="custom/components/popup_display/popup_display.js"></script>


<!-- Greybox Popup Includes -->
<script type="text/javascript">
    var GB_ROOT_DIR = "plugins/system/greybox/";
</script>
<script type="text/javascript" src="plugins/system/greybox/AJS.js"></script>
<script type="text/javascript" src="plugins/system/greybox/AJS_fx.js"></script>
<script type="text/javascript" src="plugins/system/greybox/gb_scripts.js"></script>
<link href="plugins/system/greybox/gb_styles.css" rel="stylesheet" type="text/css" />

<!-- Error Handling -->
<script type="text/javascript">
window.onerror=handleError;

function handleError(msg,url,line)
{
var showerrors = "<?php echo $_GET['showerrors']; ?>";
if (showerrors == 'true')
{
errorlog.innerHTML+="Error: " + msg + "<br>";
errorlog.innerHTML+="Line: " + line + "<br>";
errorlog.innerHTML+="URL: " + url + "<br>";
}
return true;
}
</script>

<!-- Style items called here rather than css since there are using php functions based on settings -->
<style type="text/css">
.column { width: <?php echo GetColumnWidth($_SESSION['userid']); ?>px; float: left; padding-bottom: 100px; }
#container_2 { width: <?php echo GetUserSettingsScreenWidth($_SESSION['userid']); ?>px; }
</style>

</head>
<body>
<?php 
// Load Outlets
require_once("custom/components/outlet_display/outlet_display.php");
require_once("custom/components/popup_display/popup_display.php");

?>



<!-- Create DIVs for errorlog and help window -->
<div id="errorlog" class="error" style="position:absolute;"></div>
<div id="helpwindow" style="position:absolute;left:650px;top:100px;z-index:9999"></div>
</body>
</html>

