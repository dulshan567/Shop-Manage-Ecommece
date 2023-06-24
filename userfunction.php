<?php 

include("database.php");

function getAllActive($table)
{
    global  $mysqli;
    $query = "SELECT  * FROM $table where status - '0'";
    return $query_run = mysqli_query( $mysqli , $query);
}

function redirect($url, $message)
{
    $_SESSION['message'] = $message;
    header('location: '.$url);
    exit();
}
?>