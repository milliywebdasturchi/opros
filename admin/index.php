<?php 
include "./../db.php";
$hisobot_query = mysqli_query($conn, "SELECT * FROM sorovnoma");

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
				<h3 class="text-center">Сўровномалар</h3>
				<p class="alert alert-info"><b>Эслатма:</b> Сўровномани якунламоқчи бўлсангиз <b>"ЯКУНЛАШ"</b> тугмасини босинг. Сўровномани қайта ўтказмоқчи бўлсангиз <b>"ҚАЙТА БОШЛАШ"</b> тугмасини босинг.</p>
				<table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Сўровнома номи</th>
                            <th>Бошланиш вақти</th>
                            <th>Тугаш вақти</th>
                            <th>Амаллар</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $i=0; while($row_hisobot = mysqli_fetch_assoc($hisobot_query)) { $i++; ?>
                        <tr>
                            <td><?php echo $i; ?></td>
                            <td><?php echo $row_hisobot['sname']; ?></td>
                            <td><?php echo date('d.m.Y / H:i', $row_hisobot['startDate']); ?></td>
                            <td><?php echo $row_hisobot['endDate']; ?></td>
                            <td>
                                <?php if($row_hisobot['endDate'] === null) { ?>
                                    <a href="sorov_on_off.php?sorov_id=<?php echo $row_hisobot['id']; ?>" class="btn btn-danger btn-sm">Якунлаш</a>
                                <?php } else { ?>
                                    <a href="sorov_on_off.php?sorov_id=<?php echo $row_hisobot['id']; ?>" class="btn btn-primary btn-sm">Қайта бошлаш</a>
                                <?php } ?>
                            </td>
                        </tr>
                        <?php } ?>
                    </tbody>
                </table>		
			</div>		
		</div>
	</div>
	
</body>
</html>