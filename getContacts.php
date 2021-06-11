<?php

include('connection.php');

if ($_SERVER['REQUEST_METHOD'] == 'POST') 
{
    $qry = "select * from contacts";
    $result = mysqli_query($con, $qry) or die(mysqli_error($con));

    $records = array("data" => array());

    while ($row = mysqli_fetch_assoc($result)) {
        array_push($records["data"], $row);
    }
}

mysqli_close($con);
header('Content_type: application/json');
echo json_encode($records);
?>