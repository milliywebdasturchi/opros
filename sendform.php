<?php

include "./db.php";

if (isset($_POST['send'])) {

	$opros = $_POST['opros'];

	if($opros === 'anonym') {

		$opros_name = $_POST['opros_name'];
		$viloyat_name = $_POST['viloyat_name'];
		$fullname = null;
		$phone = null;
		$address = null;

		// select opros id 
		$opros_query_id = mysqli_query($conn, "SELECT id FROM sorovnoma WHERE sname = '$opros_name' LIMIT 1");
		$opros_res_id = mysqli_fetch_assoc($opros_query_id);
		$opros_id = $opros_res_id['id'];

		

		// select savol id
		$savol_query_id = mysqli_query($conn, "SELECT id FROM savollar WHERE s_id = '$opros_id'");
		$arr_jvb = array();
		while ($row_id = mysqli_fetch_assoc($savol_query_id)) {
		 	// savol id 
		 	$r_id = $row_id['id'];
			$jvb.$r_id = $_POST['jvb_'.$r_id]." / ";
			
			$jvb = explode(' / ', $jvb.$r_id);
			// $arr_jvb = array_merge($arr_jvb, $jvb);
			$arr_jvb .= trim(implode(' / ', $jvb), 'Array');
		}
		$jvb_all = trim($arr_jvb, 'Array  / ');

		$subject = htmlspecialchars(htmlentities($_POST['subject']));

		$myip = $_SERVER['REMOTE_ADDR'];

		date_default_timezone_set('Asia/Tashkent');
		$createDate = time();

		$insert = mysqli_query($conn, "INSERT INTO hisobot(`ip`,`v_name`,`s_name`,`fullName`,`phoneNumber`,`address`,`answers`,`subject`,`createDate`) VALUES ('$myip','$viloyat_name','$opros_name',null,null,null,'$jvb_all','$subject','$createDate')");
		if($insert) {
			header("Location: index.php?msg=success");
			exit;
		} else {
			header("Location: index.php?msg=error");
			exit;
		}

	} else if($opros === 'verify') {

		$opros_name = $_POST['opros_name'];
		$viloyat_name = $_POST['viloyat_name'];
		$fullname = $_POST['fullname'];
		$phone = $_POST['phone'];
		$address = $_POST['address'];

		// select opros id 
		$opros_query_id = mysqli_query($conn, "SELECT id FROM sorovnoma WHERE sname = '$opros_name' LIMIT 1");
		$opros_res_id = mysqli_fetch_assoc($opros_query_id);
		$opros_id = $opros_res_id['id'];

		

		// select savol id
		$savol_query_id = mysqli_query($conn, "SELECT id FROM savollar WHERE s_id = '$opros_id'");
		$arr_jvb = array();
		while ($row_id = mysqli_fetch_assoc($savol_query_id)) {
		 	// savol id 
		 	$r_id = $row_id['id'];
			$jvb.$r_id = $_POST['jvb_'.$r_id]." / ";
			
			$jvb = explode(' / ', $jvb.$r_id);
			// $arr_jvb = array_merge($arr_jvb, $jvb);
			$arr_jvb .= trim(implode(' / ', $jvb), 'Array');
		}
		$jvb_all = trim($arr_jvb, 'Array  / ');

		$subject = htmlspecialchars(htmlentities($_POST['subject']));

		$myip = $_SERVER['REMOTE_ADDR'];

		date_default_timezone_set('Asia/Tashkent');
		$createDate = time();

		$insert = mysqli_query($conn, "INSERT INTO hisobot(`ip`,`v_name`,`s_name`,`fullName`,`phoneNumber`,`address`,`answers`,`subject`,`createDate`) VALUES ('$myip','$viloyat_name','$opros_name','$fullname','$phone','$address','$jvb_all','$subject','$createDate')");
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