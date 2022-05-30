<?php
$DSN='mysql:host = localhost; dbname=news_portal';
$ConnectingDB = new PDO($DSN,'root','');

	$dbhost = 'localhost';
	$dbuser = 'root';
	$dbpass = '';
	$dbname = 'news_portal'; 

	$connection = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);

	// Checking the connection
	if (mysqli_connect_errno()) {
		die('Database connection failed ' . mysqli_connect_error());
	}

?>
