///////////////////////////////////////////////////
//CALLS POPUP FOR USER SETTINGS
///////////////////////////////////////////////////
function UserSettingsLoadWindow()
{
 //SET BACK DIM
 //$('#outer').wrapInner('<div />')
 //   .css('opacity','0.2');
 $('#blackout').wrapInner('<div />')
    .css('opacity','.7')
    .css('filter','alpha(opacity=70)')
    .css('width','100%')
    .css('height','2000px');
 

 //LOAD WINDOW
 $('#ex3b')
    .jqm({
    overlay: 0, //REMOVE TO SOLVE IE6 ISSUE
    onshow: function(h) {h.w.css('opacity',1.00).slideDown();},
    onHide: function(h) {h.w.slideUp("slow", function() { if (h.o) h.o.remove(); });}
    }).jqmShow();


 //POPULATE WINDOW 
 $.ajax({
   type: "GET",
   url: "custom/components/configuration/config_user/config_user_ajax.php?action=settings&currentstyle=" + CURRENTSTYLE + "&user=" + CURRENTUSER + "&random=" + GetRandom(),
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
//SAVE USER SETTINGS FROM POPUP TO DATABASE
///////////////////////////////////////////////////
function SaveUserSettings()
{
var style = $('#style').val();
//var level = $('#level').val();
var numbercolumns = $('#numbercolumns').val();
var screenwidth = $('#screenwidth').val();

var myurl = "custom/components/configuration/config_user/config_user_ajax.php?action=saveusersettings&style=" + style + "&numbercolumns=" + numbercolumns + "&screenwidth=" + screenwidth + "&user=" + CURRENTUSER + "&random=" + GetRandom();

$.ajax({
 type: "GET",
 url: myurl,
 success: function(msg){
   $('#popuptitle').html("User Settings ... Saved");

   //need to reload the page to let css style changes take effect
   //change popupcontent to form and submit
   var content = "<form action='home.php' method='post' id='myform' name='myform'>";
   content = content + "<input type='hidden' value='" + CURRENTUSER + "' name='userid' id=''></input>";
   content = content + "</form>";
   
   $('#popupcontent').html(content);

   document.myform.submit(); 
 }
});
}