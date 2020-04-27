<?php
	$speed = $_GET['s'];
	echo random_bytes($speed * (10 ** 6));
	fclose($handle);
?>
