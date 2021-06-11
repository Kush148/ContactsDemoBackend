<?php

include('connection.php');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
	
    $id = $_POST["id"];

    if (!empty($id)) {
		
        $query = "DELETE from contacts where id='$id'";
        $result = mysqli_query($con, $query) or die("Query Error" . mysqli_error($con));

        if ($result > 0) {
            $data = array("result" => 200);
        } else {
            $data = array("result" => 300);
        }
		
    } else {
        $data = array("result" => 404);
    }
}

mysqli_close($con);
header('Content_type: application/json');
echo json_encode($data);
?>