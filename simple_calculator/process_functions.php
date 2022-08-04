<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="My online portfolio that illustrates skills acquired while working through various project requirements.">
	<meta name="author" content="Ashton Uttayaya">
	<link rel="icon" href="favicon.ico">

	<title>LIS4381 - Assignment 5</title>
		<?php include_once("../css/include_css.php"); ?>
</head>


<?php 

$num1 = $_POST['num1'];
$num2 = $_POST['num2'];
$calculation = $_POST['calculation'];

if ($calculation == 'addition'){

    $result = $num1 + $num2;
    $symbol = '+';
    echo $result;
}

if ($calculation == 'subtraction'){

    $result = $num1 - $num2;
    $symbol = '-';
    echo $result;
}

if ($calculation == 'division'){
    if ($num2 == 0){
        $result = "Not possible to divide by 0";
        $symbol = '/';
    } else {
    $result = $num1 / $num2;
    $symbol = '/';
    echo $result;
    }
}

if ($calculation == 'multiplication'){

    $result = $num1 * $num2;
    $symbol = '*';
    echo $result;
}

?>
<body>
<?php include_once("../global/nav.php"); ?>

	<div class="container">
		<div class="starter-template">
					
					<div class="page-header">
						<?php include_once("../global/header.php"); ?>	
					</div>

					<h2><?php print $calculation; ?></h2>
                    <p><?php print $num1 . " " . $symbol . " " . $num2 . " = " .  $result;?></p>

                    <?php include_once "../global/footer.php"; ?>
</div> <!-- end starter-template -->
 </div> <!-- end container -->

</body>