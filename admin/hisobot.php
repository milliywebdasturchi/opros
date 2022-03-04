<?php 
include "./../db.php";
$s_query = mysqli_query($conn, "SELECT * FROM sorovnoma");
?>
<!DOCTYPE html>
<html> 
<head>
	<meta charset="utf-8">
	<title>So'rovnoma - hisobot</title>
	<link rel="stylesheet" href="./../css/bootstrap.min.css">
	<script src="./../js/bootstrap.bundle.min.js"></script>
	<script src="./../jquery/jquery.min.js"></script>
</head>
<body>
	<div class="container mt-3" style="border: 1px solid #ccc;">
		<div class="row">
			<div class="col-sm-12 mb-3">
				<h3 class="text-center">Hisobot olish</h3>
				<form action="check.php" method="post">
                    <div class="form-group">
                        <select name="sorov_id" id="sorov_id" class="form-control">
                            <?php 
								while($s_row = mysqli_fetch_assoc($s_query)) {
									if($s_row['endDate'] == null) {?>
										<option value="<?php echo $s_row['id']; ?>"><?php echo $s_row['sname']; ?></option>
									<?php } else {
										echo "";
									} 
								} 
							?>
                        </select>
                    </div>
                    <button type="submit" name="send" class="btn btn-success">Hisobotni ko'rish</button>
                </form>
                <hr>
                <a href="index.php" class="btn btn-primary btn-sm">Бош саҳифага қайтиш</a>
			</div>		
		</div>
	</div>
</body>
</html>