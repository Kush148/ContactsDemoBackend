<?php

include('connection.php');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    $id =  $_POST["id"];
	$first_name = $_POST['first_name'];
	$last_name = $_POST['last_name'];
	$email = $_POST['email'];
	$phone_no = $_POST['phone_no'];
	
	if (!empty($_FILES["image"]["name"]))
	{
        $Fname = time() . $_FILES["image"]["name"];
        $path = "image/" . $Fname;
        move_uploaded_file($_FILES["image"]["tmp_name"], $path);
		
		$qry = "update contacts set first_name='$first_name', last_name='$last_name', email='$email', phone_no='$phone_no', image='$path' where id='$id'";
    } 
	else 
	{
		$qry = "update contacts set first_name='$first_name', last_name='$last_name', email='$email', phone_no='$phone_no' where id='$id'";
	}

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
