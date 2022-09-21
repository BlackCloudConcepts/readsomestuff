<!--PAGE LINKS AND BUTTONS-->
<div id="container_1">
	<div id="container_2">
		<div style="position:absolute;" id="outer">
			<table cellspacing='0' cellpadding='0' border='0'>
				<tr>
					<td>
						<table cellspacing='0' cellpadding='0' border='0' width="100%">
							<tr>
								<td>
									<?php
									// Display Header Image
									if (!strpos($CURRENTSTYLE, "purple") === false)
									  echo "<img src='templates/sk_quadcol/images/grey/header_purple.png' border='0'/>";
									else if (!strpos($CURRENTSTYLE, "yellow") === false)
									  echo "<img src='templates/sk_quadcol/images/grey/header_yellow.png' border='0'/>";
									else if (!strpos($CURRENTSTYLE, "blue") === false)
									  echo "<img src='templates/sk_quadcol/images/grey/header_blue.png' border='0'/>";
									else if (!strpos($CURRENTSTYLE, "red") === false)
									  echo "<img src='templates/sk_quadcol/images/grey/header_red.png' border='0'/>";
									else if (!strpos($CURRENTSTYLE, "green") === false)
									  echo "<img src='templates/sk_quadcol/images/grey/header_green.png' border='0'/>";
									else 
									  echo "<img src='templates/sk_quadcol/images/grey/header_lightorange.png' border='0'/>";
									?>
								</td>
								<!-- Display Right Side Header Buttons -->
								<td align="right" valign='top'>
									<table cellspacing='0' cellpadding='0' border='0' width="100%">
										<tr>
											<td class="helptext" align="right">
												<a href="http://www.facebook.com/pages/Read-Some-Stuff/107114972652590" target="_blank"><img src="custom/images/facebook_fan_small.png" border="0"/></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<b><?php echo $version;?></b>
											</td>
										</tr>
										<tr><td height='15'></td></tr>
										<tr>
											<td align='right'>
												<table cellspacing='5' cellpadding='0' border='0'>
													<tr>
														<td align="center" class="myBlackSmall" width='100'>
															<a href="#" id="settings"><img src='custom/images/orange_usersettings.png' title='User Settings' alt='User Settings' border='0'/></a>
															<br/>
															<b>USER<br/>SETTINGS</b>
														</td>
														<!--<a href="#" id="setorder">Save Order</a>-->
														<td align="center" class="myBlackSmall" width='100'>
															<a href="#" id="addoutlet"><img src='custom/images/orange_addoutlet.png' title='Add New Outlet' alt='Add New Outlet' border='0'/></a>
															<br/>
															<b>ADD NEW<br/>OUTLET</b>
														</td>
														<!-- <a href="help.php" rel="gb_page[800, 500]"><img src='portlets/css/images/_help.jpg' title='Help' border='0'/></a> -->
														<td align="center" class="myBlackSmall" width='100'>
															<a href="index.php" ><img src='custom/images/orange_logout.png' title='Logout' alt='Logout' border='0'/></a>
															<br/>
															<b>LOGOUT</b>
														</td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<?php
						
						//load the outlet order information for the current user
						$outlet_order = GetOutletPosition($CURRENTUSER);
						
						$numcols = 0;
						

						if ($outlet_order == "")
						{
							echo "<div class='column' id='column1'>";
							echo "<a href='javascript:AddOutlet();'><img src='custom/images/orange_starthere.png' border='0' /></a>";
							echo "</div>";
							$numcols = $numcols + 1;
						}
						
						//split into columns and loop
						$arrCols = split(';',$outlet_order);
						
						
						foreach($arrCols as $col)
						{
							$numcols = $numcols + 1;
						
						  	if ($numcols <= GetUserSettingsNumberColumns($_SESSION['userid']))
							{  //begin column
								echo "<div class='column' id='column".$numcols."'>";
							}
						
							//split column into outlet
							$arrOutlets = split(',', $col);
							foreach($arrOutlets as $outlet_id)
							{
						    	if ($outlet_id != "")
								{
									$outlet_name = GetOutletName($outlet_id);
									
									if ($outlet_name == "new")
										$outlet_name = "Pending Setup, Click Edit";

									$outlet_height = "100";
									$outlet_items = GetOutletNumberItems($outlet_id);
									switch($outlet_items)
									{
										case "5":
											$outlet_height = "100";
											break;
										case "10":
											$outlet_height = "200";
											break;
										case "15":
											$outlet_height = "300";
											break;	
										case "50":
											$outlet_height = "400";
											break;	
									
									}
							
								    //insert outlet
									?>
								      <div class='portlet' id='<?php echo $outlet_id ?>'>
								        <div class='portlet-header' id='port_header_<?php echo $outlet_id ?>'>
								        	<table cellpadding='0' cellspacing='0' border='0'>
								        	<tr>
								        	<td>
								        	<a href='JavaScript:void(0);'><img src='custom/images/orange_drag_small.png' alt='Click, Hold, and Drag To Move Outlet' title='Click, Hold, and Drag To Move Outlet' border='0'/></a>
								        	</td>
								        	<td>
								          <a href='#' class='portTrigger' onclick="javascript:OutletSettingsLoadPopup('<?php echo $outlet_id ?>');" id='edit<?php echo $outlet_id ?>'><img src='custom/images/orange_edit_small.png' alt='Edit Outlet' title='Edit Outlet' border='0'/></a>
								          </td>
								          <td width='10'></td>
								          <td>
								          <span id='port_title_<?php echo $outlet_id ?>'><?php echo $outlet_name ?></span>
								          </td>
								          </tr>
								          </table>
								        </div>
								        <div class='portlet-content' style='height:<?php echo $outlet_height;?>px;overflow:auto' id='port_content_<?php echo $outlet_id ?>'>Loading ...</div>
								      </div>
								
									<?php
						    	}
						  	} //end foreach
						 	if ($numcols < GetUserSettingsNumberColumns($_SESSION['userid']))
						 	{
								//end column
								echo "</div>";
							}
						} // end for each
						
						//close last div
						if ($numcols >= GetUserSettingsNumberColumns($_SESSION['userid']))
						{
					 		//end column
					   		echo "</div>";
					  	}
						
						//add extra columns
						$i = $numcols;
						while ($i < GetUserSettingsNumberColumns($_SESSION['userid']))
						{
						  	echo "<div class='column' id='column'>";
						  	echo "</div>";
						  	$i++;
						}
						?>
					</td>
				</tr>
			</table>
		</div>
	</div>
</div>

 
<div style="position:absolute;background-color:#000000;width:1px;height:1px;opacity:0.0;filter:alpha(opacity=0)" id="blackout">
</div>


<script type="text/javascript">
LoadAllOutletRssData();
</script>

