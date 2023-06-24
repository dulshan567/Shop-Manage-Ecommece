<?php

session_start();
include("database.php");
include("myfunction.php");

if(isset($_POST["add_category"]))
{
    $Item_name = $_POST["Item_name"];
    $Vehical_Type = $_POST["Vehical_Type"];
    $Descriptions = $_POST["Descriptions"];
    $Price = $_POST["Price"];
    $Quntitiy = $_POST["Quntitiy"];
    $Popular = isset($_POST["Popular"]) ? '1':'0';
    
   
    

    $image = $_FILES["image"]["name"];

    $path = "uploads";

    $image_ext = pathinfo($image, PATHINFO_EXTENSION);
    $filename = time().'.'.$image_ext;

    $cate_query = "INSERT INTO categorios
    (Item_name,Vehical_Type,Descriptions,Price,Quntitiy,Popular,image) 
    VALUES ('$Item_name','$Vehical_Type','$Descriptions','$Price','$Quntitiy','$Popular','$filename')";

    $cate_query_run = mysqli_query( $mysqli ,$cate_query); 

     if($cate_query_run)
    {
        move_uploaded_file($_FILES['image']['tmp_name'], $path.'/'.$filename);

        redirect("AddItem.html" , "ITEM ADD SUCCESSFULLY");
    }
    else
    {
        redirect("AddItem.html" , "something went wrong");
    }
 
    
}

?>