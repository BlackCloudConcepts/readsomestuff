///////////////////////////////////////////////////
//SHOWS HELP POPUP
///////////////////////////////////////////////////
function ShowHelp(helpid)
{
  var helptext = "<table bgcolor='#ffffff' cellspacing='0' cellpadding='3' border='0' width='300' height='200' style='border-color:#000000;border-style:solid;border-width:1px;'>";
  helptext = helptext + "<tr height='28' style=\"background-image:url('custom/images/popupbackheader.jpg');background-repeat:repeat-x;\"><td class='helptext' height='28'  valign='top'><b>Help</b></td>";
  helptext = helptext + "<td align='right' height='28' valign='top'><a href='javascript:void(0);' onclick='javascript:CloseHelp();'><img src='custom/images/close.gif' border='0'/></a></td></tr>";
//  helptext = helptext + "<tr bgcolor='#000000'><td height='1'></td></tr>";
  helptext = helptext + "<tr><td colspan='2' valign='top' class='helptext' height='200'>";
  switch (helpid)
  {
    case "helpdisplaystyle":
      helptext = helptext + "Choose the themed display that you prefer.";
      break; 
    case "helpuserlevel":
      helptext = helptext + "Please select your level based on your familiarity of RSS feeds, knowing how to obtain them, ability to do some basic HTML or XML manipulations.  This field is not currently in use but in the future there are plans to build on some advanced functionality.  We want to find a good balance between making a easy to use system for the masses while still being able to provide some superior tools for the tech geeks amoung us.";
      break; 
    case "helpnumbercolumns":
      helptext = helptext + "Please choose the number of columns that you would like to organize your outlets into.";
      break; 
    case "helpscreenwidth":
      helptext = helptext + "Please choose the screen width that you would like to work in.  This is based largely on the screen resolution on your computer.  You want to configure it so that it uses as much of your horizontal screen width as possible without having to scroll horizontally.";
      break; 
    case "helptotalitems":
      helptext = helptext + "Please enter the maximum number of items which you want to show up within your outlet when displayed.";
      break; 
    case "helplimitingtext":
      helptext = helptext + "This field is a way of limiting the items from your feeds which get returned.  For example if you are checking a new website but only want to have news regarding Microsoft returned, then you would enter Microsoft in this field and it will check the title of any item for that word.";
      break; 
    case "helptimerange":
      helptext = helptext + "Please enter how long in the past you wish to check for items added to the feeds configured for this outlet.  If you are working with a RSS feed which does not define published dates in the feed, select \"Anytime\" to retreive all items in the feed.";
      break; 
    case "helpoutletname":
      helptext = helptext + "Please enter a name of your choosing for this outlet.";
      break; 
    case "helpsearchrss":
      helptext = helptext + "Search RSS feeds which have already been identified by other users of the Read Some Stuff community.  Based on your keywords you will also be able to choose from feeds at predefined websites.  Just enter your keyword and click search to get started.";
      break; 
    case "helpnewfeed":
      helptext = helptext + "Enter the URL of an existing RSS feed that you have found on the web.";
      break; 
    case "helpfeedfromweb":
      helptext = helptext + "Select the website you wish to pull information from in the dropdown list and then enter your keyword or topic for your request.  For example if you are looking for information on Microsoft from Google News, simply select Google News in the dropdown and then type Microsoft in the keyword search.  All results from Google News with Microsoft in the title will be returned.";
      break; 
  }
  helptext = helptext + "</td></tr>";



 // $("#" + helpid).mouseover(showMenu);

//  var showMenu = function(ev) {
  //get the position of the placeholder element
  var pos = $("#" + helpid).offset();  
  var width = $("#" + helpid).width();
  //show the menu directly over the placeholder
  $("#helpwindow").css( { "left": (pos.left + width) + "px", "top":pos.top + "px" } );
 // $("#helpwindow").show();
//}

  $('#helpwindow').html(helptext);
  
}

function CloseHelp()
{
  $('#helpwindow').html("");
}