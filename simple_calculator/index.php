<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="My online portfolio that illustrates skills acquired while working through various project requirements.">
	<meta name="author" content="Ashton Uttayaya">
	<link rel="icon" href="favicon.ico">

	<title>LIS4381 - Calculator</title>
		<?php include_once("../css/include_css.php"); ?>
</head>
<body>

	<?php include_once("../global/nav.php"); ?>

	<div class="container">
		<div class="starter-template">
					
					<div class="page-header">
						<?php include_once("../global/header.php"); ?>	
					</div>

					<h2>Calculator</h2>

						<form id="calculator" method="post" class="form-horizontal" action="process_functions.php">
								<div class="form-group">
										<label class="col-sm-4 control-label">Num 1:</label>
										<div class="col-sm-4">
												<input type="text" class="form-control" maxlength="30" name="num1" placeholder="Enter num 1" />
										</div>
								</div>

                                <div class="form-group">
										<label class="col-sm-4 control-label">Num 2:</label>
										<div class="col-sm-4">
												<input type="text" class="form-control" maxlength="30" name="num2" placeholder="Enter num 2" />
										</div>
								</div>

                                <div class="form-group">
                                <label>Calculation:</label>
                                    <input type="radio" name="calculation"
                                    value="addition">Addition
                                    <input type="radio" name="calculation"
                                    value="subtraction">Subtraction
                                    <input type="radio" name="calculation"
                                    value="division">Division
                                    <input type="radio" name="calculation"
                                    value="multiplication">Multiplication
                                </div>

                                <div class="form-group">
									<div class="col-sm-6 col-sm-offset-3">
									<button type="submit" class="btn btn-primary" name="calculate" value="calculate">Calculate</button>
									</div>
								</div>
						</form>

			<?php include_once "../global/footer.php"; ?>
			
		</div> <!-- end starter-template -->
 </div> <!-- end container -->

</body>
</html>
