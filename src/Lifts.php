<?php
	$conn = pg_connect("host=db.dcs.aber.ac.uk dbname=cs27020_13_14 user=ria4 password=ajonsson1994");

    $res = pg_query($conn, "SELECT * FROM lifts WHERE operating='yes'");
	  
		echo "<table border='1'>";
		echo "<th>" . "Lift" . "</th>";
		echo "<th>" . "Type" . "</th>";
		echo "<th>" . "Summit" . "</th>";
		echo "<th>" . "Rise" . "</th>";
		echo "<th>" . "Length" . "</th>";
		echo "<th>" . "Operating" . "</th>";
	  
	while ($a = pg_fetch_array($res)) {

        echo "<tr>";
			echo "<td>" . $a["lift"] . "</td>";
			echo "<td>" . $a["type"] . "</td>";
			echo "<td>" . $a["summit"] . "</td>";
			echo "<td>" . $a["rise"] . "</td>";
			echo "<td>" . $a["length"] . "</td>";
			echo "<td>" . $a["operating"] . "</td>";	
        echo "</tr>";
	}	
		
    echo "</table>\n";
?>