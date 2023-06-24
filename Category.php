<?php

@include 'config.php';

if(isset($_POST['add_to_cart'])){

   $Item_name = $_POST['Item_name'];
   $Price = $_POST['Price'];
   $image = $_POST['image'];
   $Quantity = 1;

   $select_cart = mysqli_query($conn, "SELECT * FROM `cart` WHERE id = '$Item_name'");

   if(mysqli_num_rows($select_cart) > 0){
      $message[] = 'product already added to cart';
   }else{
      $insert_product = mysqli_query($conn, "INSERT INTO `cart`(Item_name, Price, image, Quantity) VALUES('$Item_name', '$Price', '$image', '$Quantity')");
      $message[] = 'product added to cart succesfully';
   }

}

?>
<?php
session_start();

if (isset($_SESSION["user_id"])) {
    
    $mysqli = require __DIR__ . "/database.php";
    
    $sql = "SELECT * FROM user
            WHERE id = {$_SESSION["user_id"]}";
            
    $result = $mysqli->query($sql);
    
    $user = $result->fetch_assoc();
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>categorios</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
   <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>            
            
   <!-- custom css file link  -->
   <link rel="stylesheet" href="l/styl.css">
   <link rel="stylesheet" href="css/s.css">
   <link rel="stylesheet" href="style.css">
   <link rel="stylesheet" href="css/Footer.css">
   <link rel="stylesheet" href="css/styles01.css" type="text/css">
</head>
<body>

<?php

if(isset($message)){
   foreach($message as $message){
      echo '<div class="message"><span>'.$message.'</span> <i class="fas fa-times" onclick="this.parentElement.style.display = `none`;"></i> </div>';
   };
};

?>


<?php if (isset($user)): ?>
        
        <p>Hello <?= htmlspecialchars($user["name"]) ?></p>
        
        <p><a href="logout.php">Log out</a></p>
        
    <?php else: ?>

      
      <div class="conten">
      <div class="top">
  
        <div class="media-icons">
        
          <a href="#"><i class="fab fa-facebook-f"></i></a>
          <a href="#"><i class="fab fa-twitter"></i></a>
          <a href="#"><i class="fab fa-instagram"></i></a>
          <a href="#"><i class="fab fa-linkedin-in"></i></a>
          <a href="#"><i class="fab fa-youtube"></i></a>
        </div>
      </div>
    </div>
    <img src="img/OIL COVER.png" class="image" width="300px"> 
    </div>
    <!--    <p ><a href="login.php" class="lg">Log in</a>  <a href="signup.html" class="sg">sign up</a></p>-->
        </div>

   <?php endif; ?>
   <?php
     
      $select_rows = mysqli_query($conn, "SELECT * FROM `cart`") or die('query failed');
      $row_count = mysqli_num_rows($select_rows);

      ?>
<header class="header">  
 <div class="flex">

 <?php include 'header.php'; ?>
      
      
      <a href="cart.php" class="cart" ><span><?php echo $row_count; ?></span> <i class='fa fa-shopping-cart' style="font-size:48px; color:yellow"></i></a>
      <div id="menu-btn" class="fas fa-bars"></div>

   </div>
</header>
<div class="container">

<section class="products">

   <h1 class="heading">latest categorios</h1>
   <hr>
   <h2 class="heading">Vehical  Type</h2>

   <div class="box-container">

      <?php
      
      $select_products = mysqli_query($conn, "SELECT * FROM `categorios`");
      if(mysqli_num_rows($select_products) > 0){
         while($fetch_product = mysqli_fetch_assoc($select_products)){
      ?>

      <form action="" method="post">
     
         <div class="box">
        
            <img src="uploads/<?php echo $fetch_product['image']; ?>" alt="">
            <h3><?php echo $fetch_product['Vehical_type']; ?></h3>
            <hr><br>
            <h2>Oil Name :<?php echo $fetch_product['Item_name']; ?></h2>
            <div class="Price">LKR <?php echo $fetch_product['Price']; ?>/-</div>
              
            <p><h5><?php echo $fetch_product['Descriptions']; ?></h5></p>
            <input type="hidden" name="Item_name" value="<?php echo $fetch_product['Vehical_type']; ?>">
            <input type="hidden" name="Price" value="<?php echo $fetch_product['Price']; ?>">
            <input type="hidden" name="image" value="<?php echo $fetch_product['image']; ?>">
            <input type="submit" class="btn" value="add to cart" name="add_to_cart">
         </div>

      </form>

      <?php
         };
      };
      ?>

   </div>
   

</section>

</div>
<!-- custom js file link  -->
<script src="js/script1.js"></script>
<script src="js/script.js"></script>
<footer>
  
    <div class="content">
      <div class="top">
     
        <div class="logo-details">
      
          
        </div>
        
        <div class="media-icons">
          <a href="#"><i class="fab fa-facebook-f"></i></a>
          <a href="#"><i class="fab fa-twitter"></i></a>
          <a href="#"><i class="fab fa-instagram"></i></a>
          <a href="#"><i class="fab fa-linkedin-in"></i></a>
          <a href="#"><i class="fab fa-youtube"></i></a>
          
        </div>
        
      </div>
      <div class="link-boxes">
   
        <ul class="box">
    
          <li class="link_name">Company</li>
          <li><a href="#">Home</a></li>
          <li><a href="Contact.html">Contact us</a></li>
          <li><a href="about.html">About us</a></li>
          <li><a href="home.php">Get started</a></li>
        </ul>
        <ul class="box">
          <li class="link_name">Services</li>
          <li><a href="#">Order</a></li>
          <li><a href="#">Online Shoping</a></li>
          <li><a href="#">Cart</a></li>
          <li><a href="#"></a></li>
        </ul>
        <ul class="box">
          <li class="link_name">Account</li>
          <li><a href="#">Profile</a></li>
          <li><a href="#">My account</a></li>
          <li><a href="#">Prefrences</a></li>
          <li><a href="#">Purchase</a></li>
        </ul>
       <!-- <ul class="box">
          <li class="link_name">Courses</li>
          <li><a href="#">HTML & CSS</a></li>
          <li><a href="#">JavaScript</a></li>
          <li><a href="#">Photography</a></li>
          <li><a href="#">Photoshop</a></li>
        </ul>-->
        <ul class="box input-box">
          <li class="link_name">Subscribe</li>
          <li><input type="text" placeholder="Enter your email"></li>
          <li><input type="button" value="Subscribe"></li>
        </ul>
      </div>
    </div>
    <div class="bottom-details">
      <div class="bottom_text">
        <span class="copyright_text">Copyright &#169; 2021 <a href="#">#oilmart.lk</a>All rights reserved</span>
        <span class="policy_terms">
          <a href="#">Privacy policy</a>
          <a href="#">Terms & condition</a>
        </span>
      </div>
    </div>
  </footer>

</body>
</html>