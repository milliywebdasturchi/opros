<?php

include "./db.php";

if (isset($_POST['send'])) {

	// echo "<pre>";
	// print_r($_POST);
	// echo "</pre>";
	// die;

	$opros = $_POST['opros'];

	if($opros === 'anonym') {

		$sorov_id = mysqli_real_escape_string($conn, $_POST['sorov_id']);
		$viloyat_name = mysqli_real_escape_string($conn, $_POST['viloyat_name']);
		$fullname = null;
		$phone = null;
		$address = null;

		// select savol id
		$savol_query_id = mysqli_query($conn, "SELECT id FROM savollar WHERE s_id = '$sorov_id'");
		$arr = array();
		while ($row_id = mysqli_fetch_assoc($savol_query_id)) {
		 	// savol id 
		 	$r_id = $row_id['id'];
			$jvb = $_POST['jvb_'.$r_id];
			
			array_push($arr, $jvb);
			
		}

		$ans_1 = mysqli_real_escape_string($conn, $arr[0]);
		$ans_2 = mysqli_real_escape_string($conn, $arr[1]);
		$ans_3 = mysqli_real_escape_string($conn, $arr[2]);
		$ans_4 = mysqli_real_escape_string($conn, $arr[3]);
		$ans_5 = mysqli_real_escape_string($conn, $arr[4]);
		$ans_6 = mysqli_real_escape_string($conn, $arr[5]);
		$ans_7 = mysqli_real_escape_string($conn, $arr[6]);
		$ans_8 = mysqli_real_escape_string($conn, $arr[7]);
		$ans_9 = mysqli_real_escape_string($conn, $arr[8]);
		$ans_10 = mysqli_real_escape_string($conn, $arr[9]);
		$ans_11 = mysqli_real_escape_string($conn, $arr[10]);
		$ans_12 = mysqli_real_escape_string($conn, $arr[11]);
		$ans_13 = mysqli_real_escape_string($conn, $arr[12]);
		$ans_14 = mysqli_real_escape_string($conn, $arr[13]);
		$ans_15 = mysqli_real_escape_string($conn, $arr[14]);
		$ans_16 = mysqli_real_escape_string($conn, $arr[15]);
		$ans_17 = mysqli_real_escape_string($conn, $arr[16]);
		$ans_18 = mysqli_real_escape_string($conn, $arr[17]);
		$ans_19 = mysqli_real_escape_string($conn, $arr[18]);
		$ans_20 = mysqli_real_escape_string($conn, $arr[19]);

		$subject = htmlspecialchars(htmlentities($_POST['subject']));

		$myip = $_SERVER['REMOTE_ADDR'];

		date_default_timezone_set('Asia/Tashkent');
		$createDate = time();

		$insert = mysqli_query($conn, "INSERT INTO hisobot(`ip`,`v_name`,`s_id`,`fullName`,`phoneNumber`,`address`,`ans_1`,`ans_2`,`ans_3`,`ans_4`,`ans_5`,`ans_6`,`ans_7`,`ans_8`,`ans_9`,`ans_10`,`ans_11`,`ans_12`,`ans_13`,`ans_14`,`ans_15`,`ans_16`,`ans_17`,`ans_18`,`ans_19`,`ans_20`,`subject`,`createDate`) VALUES ('$myip','$viloyat_name','$sorov_id',null,null,null,'$ans_1','$ans_2','$ans_3','$ans_4','$ans_5','$ans_6','$ans_7','$ans_8','$ans_9','$ans_10','$ans_11','$ans_12','$ans_13','$ans_14','$ans_15','$ans_16','$ans_17','$ans_18','$ans_19','$ans_20','$subject','$createDate')");
		
		if($insert) {
			header("Location: index.php?msg=success");
			exit;
		} else {
			header("Location: index.php?msg=error");
			exit;
		}

	} else if($opros === 'verify') {

		$sorov_id = $_POST['sorov_id'];
		$viloyat_name = $_POST['viloyat_name'];
		$fullname = $_POST['fullname'];
		$phone = $_POST['phone'];
		$address = $_POST['address'];

		// select savol id
		$savol_query_id = mysqli_query($conn, "SELECT id FROM savollar WHERE s_id = '$sorov_id'");
		$arr = array();
		while ($row_id = mysqli_fetch_assoc($savol_query_id)) {
		 	// savol id 
		 	$r_id = $row_id['id'];
			$jvb = $_POST['jvb_'.$r_id];
			
			array_push($arr, $jvb);
			
		}
		
		$ans_1 = mysqli_real_escape_string($conn, $arr[0]);
		$ans_2 = mysqli_real_escape_string($conn, $arr[1]);
		$ans_3 = mysqli_real_escape_string($conn, $arr[2]);
		$ans_4 = mysqli_real_escape_string($conn, $arr[3]);
		$ans_5 = mysqli_real_escape_string($conn, $arr[4]);
		$ans_6 = mysqli_real_escape_string($conn, $arr[5]);
		$ans_7 = mysqli_real_escape_string($conn, $arr[6]);
		$ans_8 = mysqli_real_escape_string($conn, $arr[7]);
		$ans_9 = mysqli_real_escape_string($conn, $arr[8]);
		$ans_10 = mysqli_real_escape_string($conn, $arr[9]);
		$ans_11 = mysqli_real_escape_string($conn, $arr[10]);
		$ans_12 = mysqli_real_escape_string($conn, $arr[11]);
		$ans_13 = mysqli_real_escape_string($conn, $arr[12]);
		$ans_14 = mysqli_real_escape_string($conn, $arr[13]);
		$ans_15 = mysqli_real_escape_string($conn, $arr[14]);
		$ans_16 = mysqli_real_escape_string($conn, $arr[15]);
		$ans_17 = mysqli_real_escape_string($conn, $arr[16]);
		$ans_18 = mysqli_real_escape_string($conn, $arr[17]);
		$ans_19 = mysqli_real_escape_string($conn, $arr[18]);
		$ans_20 = mysqli_real_escape_string($conn, $arr[19]);

		$subject = htmlspecialchars(htmlentities($_POST['subject']));

		$myip = $_SERVER['REMOTE_ADDR'];

		date_default_timezone_set('Asia/Tashkent');
		$createDate = time();

		$insert = mysqli_query($conn, "INSERT INTO hisobot(`ip`,`v_name`,`s_id`,`fullName`,`phoneNumber`,`address`,`ans_1`,`ans_2`,`ans_3`,`ans_4`,`ans_5`,`ans_6`,`ans_7`,`ans_8`,`ans_9`,`ans_10`,`ans_11`,`ans_12`,`ans_13`,`ans_14`,`ans_15`,`ans_16`,`ans_17`,`ans_18`,`ans_19`,`ans_20`,`subject`,`createDate`) VALUES ('$myip','$viloyat_name','$sorov_id',null,null,null,'$ans_1','$ans_2','$ans_3','$ans_4','$ans_5','$ans_6','$ans_7','$ans_8','$ans_9','$ans_10','$ans_11','$ans_12','$ans_13','$ans_14','$ans_15','$ans_16','$ans_17','$ans_18','$ans_19','$ans_20','$subject','$createDate')");
		
		if($insert) {
			header("Location: index.php?msg=success");
			exit;
		} else {
			header("Location: index.php?msg=error");
			exit;
		}

	}

}

?>