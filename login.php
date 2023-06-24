<?php

$is_invalid = true;

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    
    $mysqli = require __DIR__ . "/database.php";
    
    $sql = sprintf("SELECT * FROM user
                    WHERE email = '%s'",
                   $mysqli->real_escape_string($_POST["email"]));
    
    $result = $mysqli->query($sql);
    
    $user = $result->fetch_assoc();
    
    if ($user) {
        
        if (password_verify($_POST["password"], $user["password_hash"])) {
            
            session_start();
            
            

            $_SESSION["role_as"] = $user["role_as"];
            $_SESSION["user_id"] = $user["id"];

            session_start();

            $_SESSION["role_as"] = $role_as;
            if("role_as"== 0){
                header("Location:Admin_panel.php");
                
            }elseif("role_as"== 0){
             header("Location:index.php");
            
            }
        }
    }
    
    $is_invalid = true;
}

?>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <meta charset="UTF-8">
  <!--  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css"> -->
  <link rel="stylesheet" href="css/login.css">
</head>
<body>
<Section>

    <div class="from-container">
        
        <h1>Login Admin</h1>
    
    <?php if ($is_invalid): ?>
        <em>Invalid login</em>
    <?php endif; ?>
    
    <form method="post">
     <div class="control">
        <label for="email">Email</label>
        <input type="email" name="email" id="email"
               value="<?= htmlspecialchars($_POST["email"] ?? "") ?>">
     </div>          
               <div class="control">
        <label for="password">Password</label>
        <input type="password" name="password" id="password">
        </div>

        <div class="control">
        <button type="submit" name="login_btn">Log in</button>
        </div>
    </form>
    </div>
    </Section>
</body>
</html>








