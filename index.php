<?php 
include "./db.php";
$v_query = mysqli_query($conn, "SELECT * FROM viloyatlar");
$s_query = mysqli_query($conn, "SELECT * FROM sorovnoma");

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
				<p><b>Сўровнома турини танланг:</b></p>
				<form action="sorov.php" method="post">
					<input type="radio" name="opros" id="anonym" value="anonym">
					<label>Аноним</label>&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="opros" id="verify" value="verify">
					<label>Шахсни тасдиқлаш орқали</label>

					<div class="row" id="block" style="display: none;">
						<div class="col-sm-4">
							<input type="text" name="fullname" placeholder="Ф.И.Ш" class="form-control">
						</div>
						<div class="col-sm-4">
							<input type="text" name="phone" placeholder="Телефон номер" class="form-control">
						</div>
						<div class="col-sm-4">
							<input type="text" name="address" placeholder="Яшаш манзили" class="form-control">
						</div>
					</div>

					<div class="form-group">
						<label><b>Вилоят танланг</b></label>
						<select class="form-control" name="viloyat">
							<?php 
								while($v_row = mysqli_fetch_assoc($v_query)) {
							?>
								<option value="<?php echo $v_row['name']; ?>"><?php echo $v_row['name']; ?></option>
							<?php } ?>
						</select>
					</div>
					<div class="form-group">
						<label><b>Сўронома турини танланг</b></label>
						<select class="form-control" name="sorov">
							<?php 
								while($s_row = mysqli_fetch_assoc($s_query)) {
									if($s_row['endDate'] == null) {?>
										<option value="<?php echo $s_row['sname']; ?>"><?php echo $s_row['sname']; ?></option>
									<?php } else {
										echo "";
									} 
								} 
							?>
						</select>
					</div>
					<p class="text-center"><button class="btn btn-primary" type="submit" name="start">Бошлаш</button></p>
				</form>				
			</div>		
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#anonym").click(function(){
				$("#block").hide();
			});
			$("#verify").click(function(){
				$("#block").show();
			})
		});
	</script>
</body>
</html>