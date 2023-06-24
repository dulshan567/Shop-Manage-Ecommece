<?php

@include 'config.php';
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
     <link rel="stylesheet" href="l/style01.css">
</head>
<body>
    <br>
 
    <p><button><a href="logout.php">Log out</a></button></p>
    
<div class="sidebar">
    <div class="sidebar-brand">
        <h2><span class="lab la accusoft"></span>Admin Panel </h2>
</div>
    <div class="sidebar-menu">
        <ul>
            <li>
                <a href="" class="active"><span class="las la-igloo"></span>
                <span>Dashboard</span></a>
            </li>
            <li>
                <a href="Customer_page.php"><span class="las la-shipping-bag"></span>
                <span>Coustomers</span></a>
            </li>
            <li>
                <a href="Order.php"><span class="las la-igloo"></span>
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
                Dashboard
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
<?php
     
     $select_rows = mysqli_query($conn, "SELECT * FROM `order`") or die('query failed');
     $row_count = mysqli_num_rows($select_rows);
?>
            <div class="cards">
                <div class="card-single">
                    <div>
                    <h1><span> <a href="cart.php" class="cart" ><?php echo $row_count; ?></span> </a></span></h1>
                        <span> Total Orders</span>
                    </div>
                    <div>
                        <span class="las la-clipboard"></span>
                    </div>
                </div>
                <div class="card-single">
                    <div>
                    <h1><span> <a href="cart.php" class="cart" ><?php echo $row_count; ?></span> </a></span></h1>
                        <span> Total Coustomer</span>
                    </div>
                    <div>
                        <span class="las la-clipboard"></span>
                    </div>
                </div>
                <div class="card-single">
                    <div>
                    <h1><span> <a href="cart.php" class="cart" ><?php echo $row_count; ?></span> </a></span></h1>
                    <span>Users</span>
                    </div>
                    <div>
                        <span class="las la-clipboard"></span>
                    </div>
                </div>
                <div class="card-single">
                    <div>
                    <?php
     
     $select_rows = mysqli_query($conn, "SELECT * FROM `order`") or die('query failed');
     $row_count = mysqli_num_rows($select_rows);

     ?>
    

     <?php 
         
         $select_cart = mysqli_query($conn, "SELECT * FROM `order`");
         $grand_total = 0;
         if(mysqli_num_rows($select_cart) > 0){
            while($fetch_cart = mysqli_fetch_assoc($select_cart)){
         ?>

  
        <td><?php  $sub_total = number_format($fetch_cart['total_price']); ?></td>
            
         <?php
           $grand_total += $sub_total;
            };
         };
         ?>


<h1><span> <a href="cart.php" class="cart" >LKR.<?php echo $grand_total; ?>/-</span> </a></span></h1>
                        <span>Income</span>
                    </div>
                    <div>
                        <span class="lab la-google-wallet"></span>
                    </div>
                </div>
            </div>
            <div class="recent-gird">
                <div class="projects">
                    <div class="card">
                        <div class="card-header">
                            <hr>
                            <br>
                            <h3>Recent Orders</h3>
                            <hr>
                            <br>

                        </div>
                        <div class="card-body">
                        <div class="container">

<section class="shopping-cart">
                            <table>
                                <thead>
                                    <tr>
                                        <th>Orders id</th>
                                        <th>Coustomer Name</th>
                                        <th>Address </th>
                                        <th></th>
                                        <th>Total Price</th>
                                    </tr>
                                </thead>



                                <tbody>
                                <?php
     
     $select_products = mysqli_query($conn, "SELECT * FROM `order`");
     if(mysqli_num_rows($select_products) > 0){
        while($fetch_product = mysqli_fetch_assoc($select_products)){
     ?>
                                    <tr>
                                        <td><?php echo $fetch_product['id']; ?></td>
                                        <td><?php echo $fetch_product['name']; ?></td>
                                        
                                        <td> <?php echo $fetch_product['country'];  ?>
                              ,  <?php  echo $fetch_product['state'];  ?>
                               , <?php   echo $fetch_product['city']; ?>
                               , <?php   echo $fetch_product['street']; ?></td>
                               <td></td>
                                        <td>LKR .<?php echo $fetch_product['total_price']; ?></td>
                                    </tr>
                                    <?php
        };
     };
     ?>
            
                                </tbody>
                                
                            </table>            </div>
    </section>
                    </div>

                </div>
                <div class="customers">

                </div>
            </div>
            

        </main>
        <button class="btns"> <a herf="Order.php" >See all Orders</a> </button>
    </div>
</body>
</html>