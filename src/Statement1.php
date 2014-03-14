<?php
	$conn = pg_connect("host=db.dcs.aber.ac.uk dbname=cs27020_13_14 user=ria4 password=ajonsson1994");

	$res = pg_query($conn, "SELECT * FROM pistes WHERE lifts='Moeserlift'");
	  
		echo "<table border='1'>";
		echo "<th>" . "Piste" . "</th>";
		echo "<th>" . "Grade" . "</th>";
		echo "<th>" . "Length" . "</th>";
		echo "<th>" . "Fall" . "</th>";
		echo "<th>" . "Lifts" . "</th>";
		echo "<th>" . "Open?" . "</th>";
	  
	while ($a = pg_fetch_array($res)) {

        echo "<tr>";
			echo "<td>" . $a["piste"] . "</td>";
			echo "<td>" . $a["grade"] . "</td>";
			echo "<td>" . $a["length"] . "</td>";
			echo "<td>" . $a["fall"] . "</td>";
			echo "<td>" . $a["lifts"] . "</td>";
			echo "<td>" . $a["open"] . "</td>";
        echo "</tr>";
	}	
		
    echo "</table>\n";
?>