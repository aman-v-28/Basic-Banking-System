<?php
	// $servername = 'localhost';
	// $user = 'root';
	// $pass = '';
	// $dbname = 'bankofspain';

	$servername = 'remotemysql.com';
	$user = '1z1gq5zg3b';
	$pass = 'iiPZch1ljY';
	$dbname = '1z1gq5zg3b';

	$conn = mysqli_connect($servername,$user,$pass,$dbname);
	if(!$conn){
		die("Could not connect to the database --> ".mysqli_connect_error());
	}
?>