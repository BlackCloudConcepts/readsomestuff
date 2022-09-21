<?php
require_once("../../dataaccess/generalDAL.php");
require_once("../../dataaccess/outlet_displayDAL.php");
require_once("../../dataaccess/configurationDAL.php");

$CURRENTSTYLE = $_GET['currentstyle'];

//CALL THE PROPER FUNCTION BASED ON THE ACTION PASSED INTO THE AJAX CALL
$action = $_GET['action'];
switch ($action)
{
  case "saveoutletorder":
    SaveOrder();
    break;
  case "addoutlet":
    AddOutlet();
    break;
}

//////////////////////////////////////////////
//SAVE PORTLET UPON INITIAL ADD
//////////////////////////////////////////////
function AddOutlet()
{
  $outlet_id = uuid(); // from generalDAL
  $user = $_GET['user'];
  AddNewOutlet($outlet_id, $user); // from outlet_displayDAL
  echo $outlet_id;
}

//////////////////////////////////////////////
//SAVES THE PORTLET ORDER
//////////////////////////////////////////////
function SaveOrder()
{
  $order = $_GET['order'];
  $user = $_GET['user'];

  SaveOutletOrder($order, $user); //from  outlet_displayDAL
}


?>