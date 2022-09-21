

///////////////////////////////////////////////////
//LOAD RSS FEED DATA INTO PORTLET
///////////////////////////////////////////////////
function LoadAllOutletRssData()
{
  //alert('Running LoadAllOutletRssData [CURRENTUSER:' + CURRENTUSER + ']');
  //alert("custom/components/outlet_content/news/news_ajax.php?action=loadalloutlets&user=" + CURRENTUSER + "&random=" + GetRandom());
  //LOOP THROUGH ALL PORTLETS AND LOAD EACH INDIVIDUALLY FOR SPEED CONSIDERATIONS
  $.ajax({
   type: "GET",
   url: "custom/components/outlet_content/news/news_ajax.php?action=loadalloutlets&user=" + CURRENTUSER + "&random=" + GetRandom(),
      success: function(msg){
	  //alert('LoadAllOutletRssData Returns: ' + msg);
     msg = msg.replace(/;/g,",");
     arr = msg.split(",");
     var arrlen = arr.length;
     var i=0;
     for (i=0;i<arrlen;i++)
     {
       LoadOutletRssData(arr[i]);
     }
   }
  });
}

///////////////////////////////////////////////////
//LOAD RSS FEED DATA INTO PORTLET
///////////////////////////////////////////////////
function LoadOutletRssData(outlet_id)
{
	//alert('Running LoadOutletRssData');
//GET RSS DATA FOR INDIVIDUAL RSS FEED
$.ajax({
 type: "GET",
 url: "custom/components/outlet_content/news/news_ajax.php?action=loadoutlet&outlet_id=" + outlet_id + "&random=" + GetRandom(),
 success: function(msg){
   //alert('LoadOutletRssData Returns: ' + msg);
   //$('#port_content_' + portlet_id).html("");    
   //alert('refresh');
   $('#port_content_' + outlet_id).html(msg);       
   }
});
}