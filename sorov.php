<?php 
include "./db.php";

if(isset($_POST['start'])) {
	
	$opros = $_POST['opros'];

	if($opros == 'anonym') {
		
		$viloyat_name = $_POST['viloyat'];
		$sorov_id = $_POST['sorov'];

	} else if($opros == 'verify') {
		
		$viloyat_name = $_POST['viloyat'];
		$sorov_id = $_POST['sorov'];
		$fullname = $_POST['fullname'];
		$phone = $_POST['phone'];
		$address = $_POST['address'];

	} else {
		
		header("Location: index.php?msg=cancel");
		exit;

	}

	// $ip = $_SERVER['REMOTE_ADDR'];
	// $check_ip_query = mysqli_query($conn, "SELECT ip FROM hisobot WHERE ip = '$ip'");
	// $count_ip = mysqli_num_rows($check_ip_query);
	// if($count_ip > 0) {
	// 	header("Location: index.php?msg=ip");
	// 	exit;
	// }
}

$savol_query = mysqli_query($conn, "SELECT * FROM savollar WHERE s_id = '$sorov_id'");

?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>So'rovnoma</title>
	<link rel="stylesheet" href="./css/bootstrap.min.css">
	<script src="./js/bootstrap.bundle.min.js"></script>
	<script src="./jquery/jquery.min.js"></script>
</head>
<body>
	<div class="container mt-3" style="border: 1px solid #ccc;">
		<div class="row">
			<div class="col-sm-12 mb-3">
				<h3 class="text-center">Сўровнома</h3>
				<hr>
				<form action="sendform.php" method="post">
					<input type="hidden" name="opros" value="<?php echo $opros; ?>">
					<input type="hidden" name="sorov_id" value="<?php echo $sorov_id; ?>">
					<input type="hidden" name="viloyat_name" value="<?php echo $viloyat_name; ?>">
					<input type="hidden" name="fullname" value="<?php echo $fullname; ?>">
					<input type="hidden" name="phone" value="<?php echo $phone; ?>">
					<input type="hidden" name="address" value="<?php echo $address; ?>">

					<?php 						
						while($savol_row = mysqli_fetch_assoc($savol_query)) {
							
							$savol_id = $savol_row['id'];

							echo "<div class=\"form-group\">";
							echo "<p><b>" . $savol_row['savol'] . "</b></p>";

								$javob_query = mysqli_query($conn, "SELECT * FROM javoblar WHERE savol_id = '$savol_id'");
								while($javob_row = mysqli_fetch_assoc($javob_query)) {
									echo "<input type=\"radio\" name=\"jvb_$savol_id\" value=\"$javob_row[javob]\">";
									echo "&nbsp;&nbsp;<label>" . $javob_row['javob'] . "</label>";
									echo "<br>";
								}

							echo "</div>";
						} 
					?>
					<div class="form-group">
						<p><b>Фикр қолдириш</b></p>
						<textarea name="subject" class="form-control" placeholder="Фикр қолдириш" rows="5"></textarea>
					</div>
					<p class="text-center"><button type="submit" name="send" class="btn btn-primary">Юбориш</button></p>
				</form>				
			</div>		
		</div>
	</div>
</body>
</html>