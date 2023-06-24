<?php

@include 'config.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Order</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="l/style01.css">
   <link rel="stylesheet" href="main.css">


</head>
<body>
    <div class="aa">
    <h1 align="center">Welcone To Admin.A</h1>
    </div>

    <p><button><a href="logout.php">Log out</a></button></p>
    
<div class="sidebar">
    <div class="sidebar-brand">
        <h2><span class="lab la accusoft"></span>Orders</h2>
</div>
    <div class="sidebar-menu">
        <ul>
            <li>
                <a href="Admin_panel.php"><span class="las la-igloo"></span>
                <span>Dashboard</span></a>
            </li>
            <li>
                <a href="Customer_pasge.html"><span class="las la-shipping-bag"></span>
                <span>Coustomers</span></a>
            </li>
            <li>
                <a href="Order.php" class="Orders"><span class="las la-igloo"></span>
                <span>Orders</span></a>
            </li>
            <li>
                <a href="Stock.php"><span class="las la-igloo"></span>
                <span>Stock </span></a>
            </li>
            <li>
                <a href="Income.php"><span class="las la-igloo"></span>
                <span>Income</span></a>
            </li>
            <li>
                <a href="AddItem.html"><span class="las la-igloo"></span>
                <span>Add Item</span></a>
            </li>
            <li>
                <a href="Delete_update.php"><span class="las la-igloo"></span>
                <span>Update & Delete Item</span></a>
            </li>
        </ul>
    </div>

    <div class="main-content">
        <header>
            <h2 class="hh2">
                <label for="">
                    <span class="las la-bars"></span>
                </label>
                Orders Dashbord
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

<header class="header">  

</header>
<main>
<div class="container">


<section class="shopping-cart">


  <h1 class="heading">All Order</h1>

  <div class="box-container">

     <?php
     
     $select_products = mysqli_query($conn, "SELECT * FROM `order`");
     if(mysqli_num_rows($select_products) > 0){
        while($fetch_product = mysqli_fetch_assoc($select_products)){
     ?>

<table >
     <form action="" method="post">
        <div class="box">
        <thead>
            <th >Id</th>
            <th >Coustomer Name</th>
            <th >Items</th>
            <th >Coustomer Address</th>
            <th >Price</th>
            
            </thead>
        
            <tbody>
            <td><?php echo $fetch_product['id']; ?></td>
           <td><?php echo $fetch_product['name']; ?></td>
           <td><?php echo $fetch_product['total_product']; ?></td>
        
           <td><?php echo $fetch_product['country'];  ?>
                              , <?php  echo $fetch_product['state'];  ?>
                               , <?php   echo $fetch_product['city']; ?>
                               , <?php   echo $fetch_product['street']; ?></td>
            <td><div class="total_price">LKR <?php echo $fetch_product['total_price']; ?>/-</div></td>
            
            
            
            <td><input type="submit" class="btn" value="Bil Print" name="Bil_Print"></td>
        </tbody>
        </div>
     </form>
</table>
     <?php
        };
     };
     ?>

  </div>

</section>
<main>
</div>

<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>