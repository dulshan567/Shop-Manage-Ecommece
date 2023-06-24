<?php

@include 'config.php';
?>
<?php
if(isset($_POST['add'])){
   $p_name = $_POST['p_name'];
   $p_price = $_POST['p_price'];
   $p_image = $_FILES['p_image']['Item_name'];
   $p_image_tmp_name = $_FILES['p_image']['tmp_name'];
   $p_image_folder = 'uploads/'.$p_image;

   $insert_query = mysqli_query($conn, "INSERT INTO `categorios`(Item_name, price, image) VALUES('$p_name', '$p_price', '$p_image')") or die('query failed');

   if($insert_query){
      move_uploaded_file($p_image_tmp_name, $p_image_folder);
      $message[] = 'product add succesfully';
   }else{
      $message[] = 'could not add the product';
   }
};

if(isset($_GET['delete'])){
   $delete_id = $_GET['delete'];
   $delete_query = mysqli_query($conn, "DELETE FROM `categorios` WHERE id = $delete_id ") or die('query failed');
   if($delete_query){
      header('location:admin.php');
      $message[] = 'product has been deleted';
   }else{
      header('location:admin.php');
      $message[] = 'product could not be deleted';
   };
};

if(isset($_POST['update_product'])){
   $update_p_id = $_POST['update_p_id'];
  
   $update_p_Quntitiy = $_POST['update_p_Quntitiy'];


   $update_query = mysqli_query($conn, "UPDATE `categorios` SET Quntitiy = '$update_p_Quntitiy' WHERE id = '$update_p_id'");

   if($update_query){
      move_uploaded_file($update_p_image_tmp_name, $update_p_image_folder);
      $message[] = 'product updated succesfully';
      header('location:Stock.php');
   }else{
      $message[] = 'product could not be updated';
      header('location:Stock.php');
   }

}
?>
<!DOCTYPE html>
<html>
<head>
    <title>Admin_panel</title>
   <meta charset="UTF-8">
   <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/font-awesome
   -line-awesome/css/all.min.css">
     <!--<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">-->
     <link rel="stylesheet" href="main.css">
     <link rel="stylesheet" href=".css">
     <link rel="stylesheet" href="l/style01.css">
</head>
<body>
<?php

if(isset($message)){
   foreach($message as $message){
      echo '<div class="message"><span>'.$message.'</span> <i class="fas fa-times" onclick="this.parentElement.style.display = `none`;"></i> </div>';
   };
};

?>
    <br>
    <div class="aa">
    <h1 align="center">Welcone To Admin.A</h1>
    </div>
 <p><button><a href="logout.php">Log out</a></button></p>
    
<div class="sidebar">
    <div class="sidebar-brand">
        <h2><span class="lab la accusoft"></span>Admin Panel</h2>
</div>
    <div class="sidebar-menu">
        <ul>
            <li>
                <a href="Admin_panel.php"><span class="las la-igloo"></span>
                <span>Dashboard</span></a>
            </li>
            <li>
                <a href="Customer_pasge.html" ><span class="las la-shipping-bag"></span>
                <span>Coustomers</span></a>
            </li>
            <li>
                <a href="Order.php"><span class="las la-igloo"></span>
                <span>Orders</span></a>
            </li>
            <li>
                <a href="" class="Stock"><span class="las la-igloo"></span>
                <span>Stock </span></a>
            </li>
            <li>
                <a href="Income.php"><span class="las la-igloo"></span>
                <span>Income</span></a>
            </li>
            <li>
                <a href="AddItem.html" ><span class="las la-igloo"></span>
                <span>Add Item</span></a>
            </li>
            <li>
                <a href="Delete_update.php"><span class="las la-igloo"></span>
                <span>Update & Delete Item</span></a>
            </li>.
        </ul>
    </div>

    <div class="main-content">
        <header>
            <h2 class="hh2">
                <label for="">
                    <span class="las la-bars"></span>
                </label>
                Stock
            </h2>
            <div class="search-wrapper" >
                <span class="las la-search"></span>
                <input type="search" placeholder="search here..."/>
            </div>
            <div class="user-wrapper">
                <img src="img/img2.jpg" width="30px" height="30px" alt=""  >
                <div class="awrapper">
                    <h4>Dulshan sulakshana</h4>
                    <small> Main Admin</small>
                </div>
            </div>
        </header>


        <main>
<div class="container">


<section class="shopping-cart">


  <h1 class="heading"></h1>

  <div class="box-container">

     <?php
     
     $select_products = mysqli_query($conn, "SELECT * FROM `categorios`");
     if(mysqli_num_rows($select_products) > 0){
        while($fetch_product = mysqli_fetch_assoc($select_products)){
     ?>

<table >
     <form action="" method="post">
        <div class="box">
        <thead>
            <th >Id</th>
            <th></th>
            <th></th>
            <th></th>
            <th >Item_nameName</th>
            <th></th>
            <th></th>
            <th></th>
            <th >Quntitiy</th>
           
            
            </thead>
        
            <tbody>
            <td><?php echo $fetch_product['id']; ?></td>
            <td></td>
            <td></td>
            <td></td>
           <td><?php echo $fetch_product['Item_name']; ?></td>
           <td></td>
           <td></td>
           <td></td>
           <td><?php echo $fetch_product['Quntitiy']; ?></td>
        <td>  <a href="Stock.php?edit=<?php echo $row['id']; ?>" class="option-btn"> <i class="fas fa-edit"></i> update </a></td>
        
            
            
            
       
        </tbody>

        </div>
     </form>
</table>
     <?php
        };
     }else{
        echo "<div class='empty'>no product added</div>";
     };
     ?>

  </div>
  <section class="edit-form-container">
  </section>
  </section>
<?php

if(isset($_GET['edit'])){
$edit_id = $_GET['edit'];
$edit_query = mysqli_query($conn, "SELECT * FROM `categorios` WHERE id = $edit_id");
if(mysqli_num_rows($edit_query) > 0){
   while($fetch_edit = mysqli_fetch_assoc($edit_query)){
?>

<form action="" method="post" enctype="multipart/form-data">

<input type="hidden" name="update_p_id" value="<?php echo $fetch_edit['id']; ?>">

<input type="number" min="0" class="box" required name="update_p_Quntitiy" value="<?php echo $fetch_edit['Quntitiy']; ?>">

<input type="reset" value="cancel" id="close-edit" class="option-btn">
</form>

<?php
      };
   };
   echo "<script>document.querySelector('.edit-form-container').style.display = 'flex';</script>";
};
?>

</section>
<main>
    </div>
    <!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>