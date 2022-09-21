<?php
function ShowOutlets($userid)
{
echo "<table cellspacing='0' cellpadding='0' border='0' width='100%'>";
	$rs = GetUserOutlets($userid);
        $rowclass = "rowoff";
	while ($row = mysql_fetch_assoc($rs)) 
		{
			echo "<tr class='".$rowclass."'><td><a href='outlet_view.php?outlet_id=".$row['outlet_id']."' class='mylink'>".$row['name']."</a></td></tr>";
                        if ($rowclass == "rowoff")
                             $rowclass = "rowon";
                        else
                             $rowclass = "rowoff";
		}
echo "</table>";
}
?>