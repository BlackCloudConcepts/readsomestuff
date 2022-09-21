///////////////////////////////////////////////////
//CHANGE THE OPACITY OF THE BACKGROUND BACK TO NORMAL
///////////////////////////////////////////////////
function ClickClosePopup()
{
  //Clear the text for next load
  $('#popupcontent').html("");
  //$('#outer').wrapInner('<div />')
  //   .css('opacity','1.0');
  $('#blackout').wrapInner('<div />')
     .css('opacity','0.0')
     .css('filter','alpha(opacity=0)')
     .css('width','1px')
     .css('height','1px');
}