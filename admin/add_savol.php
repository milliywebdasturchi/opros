<?php 
include "./../db.php";
$s_query = mysqli_query($conn, "SELECT * FROM sorovnoma");

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
				<form method="post" name="add_savol" id="add_savol">
                    <div class="form-group">
						<label><b>Сўронома турини танланг</b></label>
						<select class="form-control" name="sorov_id">
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
                    <div class="form-group">
                        <input type="text" name="savol_name" class="form-control" placeholder="Саволни киритинг" id="savol_name">
                    </div>
                    <table class="table table-bordered" id="add_rows">
                        <tr>
                            <td><div class="form-group">
                                <input type="text" name="javob_name[]" class="form-control" placeholder="Жавобни киритинг" id="javob_name">
                            </div></td>
                            <td><button type="button" name="add" id="add" class="btn btn-success">+</button></td>
                        </tr>
                    </table>
                    
                    <button type="button" name="add_data" id="add_data" class="btn btn-success">Сақлаш</button>
                </form>
                <hr>
                <a href="index.php" class="btn btn-primary btn-sm">Бош саҳифага қайтиш</a>
			</div>		
		</div>
	</div>
    <script>  
    $(document).ready(function(){  
        var i=1;          
        $('#add').click(function(){  
            i++;  
            $('#add_rows').append('<tr id="row'+i+'"><td><input type="text" name="javob_name[]" placeholder="Жавобни киритинг" class="form-control" id="javob_name"></td><td><button type="button" name="remove" id="'+i+'" class="btn btn-danger btn_remove">X</button></td></tr>');  
        });  
        $(document).on('click', '.btn_remove', function(){  
            var button_id = $(this).attr("id");   
            $('#row'+button_id+'').remove();  
        });  
        $('#add_data').click(function(){
            var savol_name = document.getElementById("savol_name").value;  
            var javob_name = document.getElementById("javob_name").value;
            
            if(savol_name !== '' && javob_name !== '') {
                $.ajax({  
                    url:"insert_savol.php",  
                    method:"POST",  
                    data:$('#add_savol').serialize(),  
                    success:function(data)  
                    {  
                        // alert(data);  
                        // $('#add_savol')[0].reset();
                        window.location.href = "index.php";
                    }  
                });
            } else {
                alert("Barcha maydonlar to'liq to'ldirilmagan.");
            } 
        });  
    });  
    </script>
</body>
</html>