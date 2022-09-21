//////////////////////////////
//DETECT IE BROWSER VERSION
//////////////////////////////
var BROWSER = "";
$.browser.msie6 = ($.browser.msie && /MSIE 6\.0/i.test(window.navigator.userAgent)
                  && !/MSIE 7\.0/i.test(window.navigator.userAgent));

if( $.browser.msie6 && !/MSIE 8\.0/i.test(window.navigator.userAgent)) 
{
BROWSER = "IE6";
}
else if ($.browser.msie && (jQuery.browser.version > 6.9999) && (jQuery.browser.version < 7.9999) ) 
{
BROWSER = "IE7";
}
else if ($.browser.msie && (jQuery.browser.version > 7.9999) )
{
BROWSER = "IE8";
}
else if (document.all && navigator.userAgent.indexOf("opera") == -1) 
{
BROWSER = "Opera";
} 
else if (navigator.userAgent.indexOf("Firefox") != -1) 
{
BROWSER = "Firefox";
} 
else if (navigator.userAgent.indexOf("Safari") != -1) 
{
BROWSER = "Safari";
} 
else
{
BROWSER = "NOTIE";
}
//alert(BROWSER);

//The handle allow us to specify which div we want to use as the handle to drag the outlet
	$(function() {
		$(".column").sortable({
			handle: '.handle',		
			connectWith: '.column'
		});

		$(".portlet").addClass("ui-widget ui-widget-content ui-helper-clearfix ui-corner-all")
			.find(".portlet-header")
				.addClass("ui-widget-header ui-corner-all handle")
				//.prepend('<span class="ui-icon ui-icon-plusthick"></span>')
				.end()
			.find(".portlet-content");

		$(".portlet-header .ui-icon").click(function() {
			$(this).toggleClass("ui-icon-minusthick");
			$(this).parents(".portlet:first").find(".portlet-content").toggle();
//alert("save portlet minimized");
		});

		$(".column").disableSelection();

	});


setInterval ( "LoadAllOutletRssData()", 900000); // Refresh every 15 minutes


//handle button clicks
$(document).ready(function() {
  $('#settings').click(function() {UserSettingsLoadWindow();});
 // $('#setorder').click(function() {SetOrder();});
  $('#addoutlet').click(function() {AddOutlet();});
  $('.jqmClose').click(function() {ClickClosePopup();});
});

//gets a random number to be appended to ajax calls to avoid any caching issues
function GetRandom()
{
  var randomnumber=Math.floor(Math.random()*10000);
  return randomnumber;
}

///////////////////////////////////////////////////
// USED TO ADD THE FIRST OUTLET IN COLUMN ONE AND AUTO OPEN THE CONFIGURATION
///////////////////////////////////////////////////
//function StartAddOutlet()
//{
//	// clear column one
//	$('#column1').html("");
//	
//	// add outlet
//	AddOutlet();
//}

///////////////////////////////////////////////////
//ADD A NEW PORTLET TO COLUMN 1 AT TOP
///////////////////////////////////////////////////
function AddOutlet()
{
// check to see if this is the first outlet added
var col1 = $('#column1').html();
if (col1.indexOf("AddOutlet()") != -1)
	$('#column1').html("");

//alert(CURRENTUSER);
//SAVE NEW PORTLET
$.ajax({
 type: "GET",
 url: "custom/components/outlet_display/outlet_display_ajax.php?action=addoutlet&user=" + CURRENTUSER + "&random=" + GetRandom(),
 success: function(msg){
  //alert("OutletID: " + msg);
   new_outlet_id = msg;
   AddOutletPart2(new_outlet_id);
 }
});
}

///////////////////////////////////////////////////
//THIS NEEDS TO EXECUTE AFTER THE PORTLET IS SUCCESSFULLY ADDED TO THE DATABASE
///////////////////////////////////////////////////
function AddOutletPart2(outlet_id)
{
var existinghtml = $('#column1').html();

var outlet = "<div class='portlet' id='" + outlet_id + "'>";
outlet = outlet + "<div class='portlet-header' id='port_header_" + outlet_id  + "'>" +
"<table cellpadding='0' cellspacing='0' border='0'>" +
"<tr>" +
"<td>" +
"<a href='JavaScript:void(0);'><img src='custom/images/orange_drag_small.png' alt='Click, Hold, and Drag To Move Outlet' title='Click, Hold, and Drag To Move Outlet' border='0'/></a>" +
"</td>" +
"<td>" +
"<a href='#' class='portTrigger' onclick=\"javascript:OutletSettingsLoadPopup('" + outlet_id + "');\" id='edit" + outlet_id.replace(" ","_") + "'><img src='custom/images/orange_edit_small.png' alt='Edit Outlet' title='Edit Outlet' border='0'/></a>" + 
"</td>" +
"<td width='10'></td>" +
"<td>" +
"<span id='port_title_" + outlet_id + "'>Pending Setup, Click Edit</span>" +
"</td>" +
"</tr>" +
"</table>" +
"</div>";
outlet = outlet + "<div class='portlet-content' style='height:300px;overflow:auto' id='port_content_" + outlet_id + "'>Loading ...</div>";
outlet = outlet + "</div>";

//alert(existinghtml);
$('#column1').html(outlet + existinghtml);

$("#column1").sortable({
	handle: '.handle',		
	connectWith: '#column1'
});

$("#" + outlet_id).addClass("ui-widget ui-widget-content ui-helper-clearfix ui-corner-all")
	.find("#port_header_" + outlet_id)
        .addClass("ui-widget-header ui-corner-all handle")
	 // .prepend('<span class="ui-icon ui-icon-plusthick"></span>')
	  .end()
	.find("#port_content_" + outlet_id);

//$("#port_header_" + portlet_id).click(function() {
//	$(this).toggleClass("ui-icon-minusthick");
//	$(this).parents(".portlet:first").find(".portlet-content").toggle();
//      alert("save portlet minimized");
//});

//$(".column").disableSelection();

//$(document).ready(function() {
//  $("#edit" + portlet_id).click(function() 
//  {
//    var passvalue = portlet_id;
//    LoadPopup(passvalue);
//  });
//});

// MUST SAVE ORDER AFTER THE NEW OUTLET IS ADDED ELSE CAUSES A SHIFT TO THE RIGHT ON REFRESH
SetOrder();

//open configuration
OutletSettingsLoadPopup(outlet_id);


}

///////////////////////////////////////////////////
//GET THE COLUMN ARRAYS AND SAVE TO DATABASE
///////////////////////////////////////////////////
function SetOrder()
{	
var strOrder = '';

//loop thru columns and join arrays
$(".column").each(function() {
  var thisArray = $(this).sortable("toArray");
  strOrder = strOrder + ";" + thisArray;
});

//starts with ";" so need to remove it
strOrder = strOrder.substring(1);

//if it ends with a ";" this means a column is empty so remove the final ";"
if (strOrder.substring(strOrder.length - 1) == ";")
{
  strOrder = strOrder.substring(0,strOrder.length - 1);
}

//save the portlet order to the database
SaveOutletOrder(strOrder);
} 

///////////////////////////////////////////////////
//SAVE THE PORTLET ORDER TO THE DATABASE USING AJAX
///////////////////////////////////////////////////
function SaveOutletOrder(strOrder)
{
$.ajax({
 type: "GET",
 url: "custom/components/outlet_display/outlet_display_ajax.php?action=saveoutletorder&order=" + strOrder + "&user=" + CURRENTUSER + "&random=" + GetRandom(),
 success: function(msg){
   //alert( "Data Saved: " + msg );
 }
});
}