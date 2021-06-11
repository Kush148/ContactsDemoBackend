<?php

include('connection.php');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

	$first_name = $_POST['first_name'];
	$last_name = $_POST['last_name'];
	$email = $_POST['email'];
	$phone_no = $_POST['phone_no'];
	
	if (!empty($_FILES["image"]["name"])) {
        $Fname = time() . $_FILES["image"]["name"];
        $path = "image/" . $Fname;
        move_uploaded_file($_FILES["image"]["tmp_name"], $path);
    } else { 
		$path = "";
	}

	$qry = "insert into contacts (first_name, last_name, email, phone_no, image) values ('$first_name', '$last_name', '$email', '$phone_no', '$path')";
	$result = mysqli_query($con, $qry) or die(mysqli_error($con));

	if ($result > 0) {
		$data = array("result" => 200);
	} else {
		$data = array("result" => 300);
	}
}

mysqli_close($con);
header('Content_type:application/json');
echo json_encode($data);
?>