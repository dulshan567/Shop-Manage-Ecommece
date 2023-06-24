<?php
include("database.php");

function getAll($table)
{
    global  $mysqli;
    $query = "SELECT  * FROM $table";
    return $query_run = mysqli_query( $mysqli , $query);
}


function getAllActive($table)
{
    global  $mysqli;
    $query = "SELECT  * FROM $table";
    return $query_run = mysqli_query( $mysqli , $query);
}


function redirect($url, $message)
{
    $_SESSION['message'] = $message;
    header('location: '.$url);
    exit();
}

?>