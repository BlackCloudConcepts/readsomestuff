
//////////////////////////////////////////////////
//PRODUCES A MODAL POPUP TO EDIT PORTLET
///////////////////////////////////////////////////
function OutletSettingsLoadPopup(outlet_id)
{

 //SET BACK DIM
 //$('#outer').wrapInner('<div />')
 //   .css('opacity','0.2');
 $('#blackout').wrapInner('<div />')
    .css('opacity','.7')
    .css('filter','alpha(opacity=70)')
    .css('width','100%')
    .css('height','2000px');

//;height:800

 //LOAD WINDOW
 $('#ex3b')
    .jqm({
    overlay: 0, //REMOVE TO SOLVE IE6 ISSUE
    onshow: function(h) {h.w.css('opacity',0.92).slideDown();},
    onHide: function(h) {h.w.slideUp("slow", function() { if (h.o) h.o.remove(); });}
    }).jqmShow();

 //POPULATE WINDOW 
 $.ajax({
   type: "GET",
   url: "custom/components/configuration/config_outlet/config_outlet_ajax.php?action=getoutletsettingswindow&currentstyle=" + CURRENTSTYLE + "&outlet_id=" + outlet_id + "&random=" + GetRandom(),
   success: function(msg){
     var arr = msg.split("|");
     var title = arr[0];
     var content = arr[1];
     $('#popuptitle').html(title);
     $('#popupcontent').html(content);
   }
 });
 
 
}


///////////////////////////////////////////////////
//CALLED WHEN SAVE IS CHOOSEN ON THE POPUP.  CALLS FUNCTION TO SAVE THE DATA TO THE DATABASE.
///////////////////////////////////////////////////
function SaveOutlet(close)
{
var outlet_id = $('#outlet_id').val();
var name = $('#name').val();
var shared = $('#shared').val();
var total_items = $('#total_items').val();
var timerange = $('#timerange').val();
var limitingtext = $('#limitingtext').val();
var numrss = $('#numrss').val();

if (name == "Enter outlet name here ...")
	name = "new";

var data = "action=saveoutlet&outlet_id=" + outlet_id + "&name=" + name + "&shared=" + shared + "&total_items=" + total_items + "&timerange=" + timerange + "&limitingtext=" + limitingtext + "&numrss=" + numrss + "&user=" + CURRENTUSER + "&random=" + GetRandom();

for (i=1;i<=numrss;i++)
{
  var location = $('#rss' + i + '_location').val();
  location = location.replace(/&/g,"|");
  var rssname = $('#rss' + i + '_rssname').val();
  rssname = rssname.replace(/&/g,"|");
  data = data + "&rss" + i + "_rssname=" + rssname;
  data = data + "&rss" + i + "_location=" + location;
  data = data + "&rss" + i + "_id=" + $('#rss' + i + '_id').val();
}

// alert(data);

$.ajax({
 type: "GET",
 url: "custom/components/configuration/config_outlet/config_outlet_ajax.php?" + data,
 success: function(msg){
 // alert(msg); 
   var arr = msg.split("|");
   var name = arr[1];
   
   if (name == "new")
	   name = "Pending Setup, Click Edit";
   
   $("[id$='port_title_" + outlet_id + "']").html(name);

   LoadOutletRssData(outlet_id);
   if (close == "true")
   {
     //ClickClose();
	   ClickClosePopup();
     $('#ex3b').jqmHide(); 
   }
   
 }
});
}

///////////////////////////////////////////////////
//DELETE A PORTLET
///////////////////////////////////////////////////
function DeleteOutlet(outlet_id)
{
$.ajax({
 type: "GET",
 url: "custom/components/configuration/config_outlet/config_outlet_ajax.php?action=deleteoutlet&outlet_id=" + outlet_id + "&random=" + GetRandom(),
 success: function(msg){
   //refresh page
   //location = "myportlets.php";
   var content = "<form action='home.php' method='post' id='myform' name='myform'>";
   content = content + "<input type='hidden' value='" + CURRENTUSER + "' name='userid' id=''></input>";
   content = content + "</form>";
   
   $('#popupcontent').html(content);

   document.myform.submit(); 
 }
});
}


///////////////////////////////////////////////////
//SEARCH EXISTING FEEDS FOR MATCHING CRITERIA
///////////////////////////////////////////////////
function SearchFeeds()
{
var search_text = $('#search_text').val();
$.ajax({
 type: "GET",
 url: "custom/components/configuration/config_outlet/config_outlet_ajax.php?action=searchfeeds&search_text=" + search_text + "&random=" + GetRandom(),
 success: function(msg){
    $('#search_results').html(msg);
  }
});
}


///////////////////////////////////////////////////
//ADD A NEW RSS SECTION TO POPUP SCREEN AND SAVE TO DATABASE
///////////////////////////////////////////////////
function AddRss()
{
var outlet_id = $('#outlet_id').val();
var numrss = $('#numrss').val();

var erssid = $('#existing_feeds').val();

//alert(erssid);

SavePopup("false");


//SAVE NEW RSS TO DATABASE
$.ajax({
 type: "GET",
 url: "custom/components/configuration/config_outlet/config_outlet_ajax.php?action=addrss&outlet_id=" + outlet_id + "&numrss=" + numrss + "&erssid=" + erssid + "&random=" + GetRandom(),
 success: function(msg){
	OutletSettingsLoadPopup(outlet_id);
 }
});
}


///////////////////////////////////////////////////
//CALLED WHEN SAVE IS CHOOSEN ON THE POPUP.  CALLS FUNCTION TO SAVE THE DATA TO THE DATABASE.
///////////////////////////////////////////////////
function SavePopup(close)
{
var outlet_id = $('#outlet_id').val();
var name = $('#name').val();
var shared = $('#shared').val();
var total_items = $('#total_items').val();
var timerange = $('#timerange').val();
var limitingtext = $('#limitingtext').val();
var numrss = $('#numrss').val();

var data = "action=saveoutlet&outlet_id=" + outlet_id + "&name=" + name + "&shared=" + shared + "&total_items=" + total_items + "&timerange=" + timerange + "&limitingtext=" + limitingtext + "&numrss=" + numrss + "&user=" + CURRENTUSER + "&random=" + GetRandom();

for (i=1;i<=numrss;i++)
{
  var location = $('#rss' + i + '_location').val();
  location = location.replace(/&/g,"|");
  var rssname = $('#rss' + i + '_rssname').val();
  rssname = rssname.replace(/&/g,"|");
  data = data + "&rss" + i + "_rssname=" + rssname;
  data = data + "&rss" + i + "_location=" + location;
  data = data + "&rss" + i + "_id=" + $('#rss' + i + '_id').val();
}

// alert(data);

$.ajax({
 type: "GET",
 url: "custom/components/configuration/config_outlet/config_outlet_ajax.php?" + data,
 success: function(msg){
 // alert(msg); 
   var arr = msg.split("|");
   var name = arr[1];
   $("[id$='port_title_" + outlet_id + "']").html(name);

   LoadOutletRssData(outlet_id);
   if (close == "true")
   {
     ClickClosePopup();
     $('#ex3b').jqmHide(); 
   }
   
 }
});
}


///////////////////////////////////////////////////
//DELETE A RSS FEED FROM A POPUP
///////////////////////////////////////////////////
function DeleteFeed(rssid, outlet_id)
{
$.ajax({
 type: "GET",
 url: "custom/components/configuration/config_outlet/config_outlet_ajax.php?action=deleterss&currentstyle=" + CURRENTSTYLE + "&rss_id=" + rssid + "&outlet_id=" + outlet_id + "&random=" + GetRandom(),
 success: function(msg){
 var arr = msg.split("|");
   var title = arr[0];
   var content = arr[1];
   $('#popuptitle').html(title);
   $('#popupcontent').html(content);
   LoadOutletRssData(outlet_id);
 }
});
}


///////////////////////////////////////////////////
//CREATES A FEED FROM THE WEB
///////////////////////////////////////////////////
function CreateFeedFromWeb(create_from)
{
var outlet_id = $('#outlet_id').val();
//var create_keyword = $('#create_keyword').val();
var create_keyword = $('#search_text').val();
//var create_from = $('#create_from').val();

if (create_keyword == "Enter keyword here ...")
{
	alert("Please enter a keyword first.");
}
else
{
	

	//alert(create_from + " | " + create_keyword + " | " + outlet_id);
	$.ajax({
	 type: "GET",
	 url: "custom/components/configuration/config_outlet/config_outlet_ajax.php?action=createfeedfromweb&outlet_id=" + outlet_id + "&create_keyword=" + create_keyword + "&create_from=" + create_from + "&random=" + GetRandom(),
	 success: function(msg){
	    //alert(msg);
	    SavePopup("false");
	    OutletSettingsLoadPopup(outlet_id);
	  }
	});
}
}

///////////////////////////////////////////////////
//CREATES A FEED FROM THE URL
///////////////////////////////////////////////////
function CreateFeedFromURL()
{
var outlet_id = $('#outlet_id').val();
var urllocation = $('#urllocation ').val();

if (urllocation == "Enter URL of RSS feed here ...")
	urllocation = "";

urllocation = urllocation.replace(/&/g,"|"); 

$.ajax({
 type: "GET",
 url: "custom/components/configuration/config_outlet/config_outlet_ajax.php?action=createfeedfromurl&outlet_id=" + outlet_id + "&urllocation=" + urllocation + "&random=" + GetRandom(),
 success: function(msg){
    //alert(msg);
    SavePopup("false");
    OutletSettingsLoadPopup(outlet_id);
  }
});
}


function ShowTab(num)
{
	if (num == "1")
	{
		document.getElementById("tab1").style.display = "";
		document.getElementById("tab1").style.position = "";
		document.getElementById("tab1").style.visibility = "";
		
		document.getElementById("tab2").style.display = "none";
		document.getElementById("tab2").style.position = "absolute";
		document.getElementById("tab2").style.visibility = "hidden";
		
		document.getElementById("tab3").style.display = "none";
		document.getElementById("tab3").style.position = "absolute";
		document.getElementById("tab3").style.visibility = "hidden";
	}
	if (num == "2")
	{
		document.getElementById("tab1").style.display = "none";
		document.getElementById("tab1").style.position = "absolute";
		document.getElementById("tab1").style.visibility = "hidden";
		
		document.getElementById("tab2").style.display = "";
		document.getElementById("tab2").style.position = "";
		document.getElementById("tab2").style.visibility = "";
		
		document.getElementById("tab3").style.display = "none";
		document.getElementById("tab3").style.position = "absolute";
		document.getElementById("tab3").style.visibility = "hidden";
	}
	if (num == "3")
	{
		document.getElementById("tab1").style.display = "none";
		document.getElementById("tab1").style.position = "absolute";
		document.getElementById("tab1").style.visibility = "hidden";
		
		document.getElementById("tab2").style.display = "none";
		document.getElementById("tab2").style.position = "absolute";
		document.getElementById("tab2").style.visibility = "hidden";
		
		document.getElementById("tab3").style.display = "";
		document.getElementById("tab3").style.position = "";
		document.getElementById("tab3").style.visibility = "";
	}
}

function ClearOutletName()
{
	if (document.getElementById("name").value == "Enter outlet name here ...")
		document.getElementById("name").value = "";
}

function PromptOutletName()
{
	if (document.getElementById("name").value == "")
		document.getElementById("name").value = "Enter outlet name here ...";
}

function ClearUrlFeedName()
{
	if (document.getElementById("urllocation").value == "Enter URL of RSS feed here ...")
		document.getElementById("urllocation").value = "";
}

function PromptUrlFeedName()
{
	if (document.getElementById("urllocation").value == "")
		document.getElementById("urllocation").value = "Enter URL of RSS feed here ...";
}


function ClearKeyword()
{
	if (document.getElementById("search_text").value == "Enter keyword here ...")
		document.getElementById("search_text").value = "";
}

function PromptKeyword()
{
	if (document.getElementById("search_text").value == "")
		document.getElementById("search_text").value = "Enter keyword here ...";
}
