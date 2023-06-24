<?php

$host = "localhost";
$dbname = "login_db";
$username = "root";
$password = "";

$mysqli = new mysqli($host,
                     $username,
                     $password,
                     $dbname);
                     
if (!$mysqli) {
    die("Connection error: " . $mysqli->connect_error());
    
}

?>


<?php
if(isset($_GET["id"])){
    $id = $_GET["id"];
    $sql = "SELECT * FROM cart WHERE id = $id";
    $result = $mysqli->query($sql);
    $total_cart = "SELECT * FROM cart";
    $total_cart_result = $mysqli->query($total_cart);
    $cart_num = mysqli_num_rows($total_cart_result);

    if(mysqli_num_rows($result) > 0){
        $in_cart = "already In cart";

        echo json_encode(["num_cart"=>$cart_num,"in_cart"=>$in_cart]);
    }else{
        $insert = "INSERT INTO cart(id) VALUES($id)";
        if($mysqli->query($insert) === true){
            $in_cart = "added into cart";
            echo json_encode(["num_cart"=>$cart_num,"in_cart"=>$in_cart]);
        }else{
            echo "<script>alert(It doesn't insert)</script>";
        }
    }
}

if(isset($_GET["cart_id"])){
    $id = $_GET["cart_id"];
    $sql = "DELETE FROM cart WHERE id=".$id;

    if($mysqli->query($sql) === TRUE){
        echo "Removed from cart";
    }
}
return $mysqli;
?>