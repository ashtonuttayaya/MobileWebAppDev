<?php
//comment out next line if using on remote host
$IP="local";
$options = array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);

//example:
if ($IP=="local")
{ //Data source name (DSN) contains information about a specific database in order to connect to it.
	$dsn = 'mysql:host=localhost;port=3306;dbname=aru19b';
	$username = 'root';
	$password = 'AlphaBravoCharlie1!';
}

//contact your Web host for DB connection documentation
else
{
	$dsn = 'mysql:host=localhost;port=3306;dbname=aru19b';
	$username = 'root';
	$password = 'AlphaBravoCharlie1!';
}

try 
{
  //instantiate new PDO connection
  $db = new PDO($dsn, $username, $password, $options);
	  //echo "Connected successfully using pdo extension!<br /><br />";
} 
catch (PDOException $e) 
{
	//only use for testing, to avoid providing security exploits
	//after testing, create custom error message
  //echo $e->getMessage();  //display error on this page
  $error = "Cannot connect to database";
  include('error.php'); //display in custom error page (forwarding is faster, one trip to server)
	//header('Location: error.php'); //sometimes, redirecting is needed (two trips to server)
  exit();
}
?>
