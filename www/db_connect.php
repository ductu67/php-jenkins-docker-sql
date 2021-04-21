<?php

	$connection = mysqli_connect("mysql", "root", "A12345678", "sqli");

	if (mysqli_connect_errno($connection))
	{
		die ("Failed to connect to MySQL: <strong>" . mysqli_connect_error() . "</strong>");
	}
?>