<?php 
include "./../db.php";
date_default_timezone_set('Asia/Tashkent');

if(isset($_POST['add'])) {

    $sorov_name = mysqli_real_escape_string($conn, $_POST['sorov_name']);

    $startDate = time();

    $insertSorovQuery = mysqli_query($conn, "INSERT INTO sorovnoma (`sname`,`startDate`,`endDate`) VALUES ('$sorov_name','$startDate',null)");

    if($insertSorovQuery) {
        echo "<script>alert('Сўровнома муфаввақиятли яратилди!')</script>";
    } else {
        echo "<script>alert('Сўровнома яратишда хатолик содир бўлди!')</script>";
    }
}
?>
<!DOCTYPE html>
<html> 
<head>
	<meta charset="utf-8">
	<title>So'rovnoma</title>
	<link rel="stylesheet" href="./../css/bootstrap.min.css">
	<script src="./../js/bootstrap.bundle.min.js"></script>
	<script src="./../jquery/jquery.min.js"></script>
</head>
<body>
	<div class="container mt-3" style="border: 1px solid #ccc;">
		<div class="row">
			<div class="col-sm-12 mb-3">
				<h3 class="text-center">Сўровнома яратиш</h3>
				<form action="add_sorov.php" method="post">
                    <div class="form-group">
                        <input type="text" name="sorov_name" class="form-control" placeholder="Сўровнома мазмунини киритинг" required>
                    </div>
                    <button type="submit" name="add" class="btn btn-success">Сақлаш</button>
                </form>
                <hr>
                <a href="index.php" class="btn btn-primary btn-sm">Бош саҳифага қайтиш</a>
			</div>		
		</div>
	</div>
</body>
</html>