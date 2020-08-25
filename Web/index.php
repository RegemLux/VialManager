<?php 

	include_once '../View/Partials/HtmlHead.php';
	echo "<body>";
		echo "<div class='wrapper static-sidebar'>";

			include_once '../View/Partials/navBar.php';
			include_once '../View/Partials/sideBar.php';
			

			echo "<div class='main-panel'>";

				echo "<div class='content'>";
					include_once '../View/Partials/Content.php';
				echo "</div>";

				include_once '../View/Partials/Footer.php';

			echo "</div>";
			
		echo "</div>";
		include_once '../View/Partials/Scripts.php';
	echo "</body>";
?>