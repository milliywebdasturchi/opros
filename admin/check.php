<?php

include "./../db.php";

if(isset($_POST['send'])) {
    
    $sorov_id = $_POST['sorov_id'];
    $hisobot_sql = mysqli_query($conn, "SELECT `ans_1`,`ans_2`,`ans_3`,`ans_4`,`ans_5`,`ans_6`,`ans_7`,`ans_8`,`ans_9`,`ans_10`,`ans_11`,`ans_12`,`ans_13`,`ans_14`,`ans_15`,`ans_16`,`ans_17`,`ans_18`,`ans_19`,`ans_20` FROM hisobot WHERE s_id = '$sorov_id'");
    $javoblar_sql = mysqli_query($conn, "SELECT * FROM javoblar WHERE sorov_id = '$sorov_id'");

    
    $hisobot_arr = mysqli_fetch_all($hisobot_sql, MYSQLI_ASSOC);
    $javoblar_arr = mysqli_fetch_all($javoblar_sql, MYSQLI_ASSOC);

    $sum = 0;

    $arr = array();
    $rows = mysqli_query($conn, "SELECT id FROM hisobot WHERE s_id = '$sorov_id'");
    $count_q = mysqli_num_rows($rows);
    foreach ($javoblar_arr as $key => $value) {
        $javob = $value['javob'];
        
        foreach ($hisobot_arr as $key2 => $value2) {
            foreach ($value2 as $key3 => $value3) {
                if($value3 == $javob){
                    $sum++; 
                }
            }
        }
        $percent = floor(($sum / (int)$count_q) * 100);
        $res = mysqli_query($conn, "UPDATE `javoblar` SET `count` = '$sum', `percent` = '$percent' WHERE `javob` = '$value[javob]'");
        $sum = 0;
    }
    
    $savollar = mysqli_query($conn, "SELECT * FROM savollar WHERE s_id = '$sorov_id'");
   
}

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
				<h3 class="text-center">Hisobot natijasi</h3>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <td class="text-center" colspan="3">Savollar</td>
                        </tr>
                        <tr>
                            <td class="text-center"><b>Javoblar</b></td>
                            <td class="text-center"><b>Tanlaganlar soni</b></td>
                            <td class="text-center"><b>Foizi</b></td>
                        </tr>
                    </thead>
                    <tbody>
                        <?php 						
                            while($row = mysqli_fetch_assoc($savollar)) {
                                
                                $savol_id = $row['id'];

                                echo "<tr>";
                                    echo "<td colspan=\"3\"><b>" . $row['savol'] . "</b></td>";
                                echo "</tr>";
                                
                                $javob_query = mysqli_query($conn, "SELECT * FROM javoblar WHERE savol_id = '$savol_id'");
                                
                                while($javob_row = mysqli_fetch_assoc($javob_query)) {
                                    echo "<tr>";
                                        echo "<td>" . $javob_row['javob'] . "</td>";
                                        echo "<td class=\"text-center\">" . $javob_row['count'] . "</td>";
                                        echo "<td class=\"text-center\">" . $javob_row['percent'] . "</td>";
                                    echo "</tr>";
                                }
                            } 
                        ?>
                    </tbody>
                </table>
			</div>		
		</div>
	</div>
</body>
</html>