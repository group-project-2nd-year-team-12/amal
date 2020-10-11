<?php   require_once ('../config/database.php');
        require_once ('../models/reg_user.php');
        session_start(); 
?>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="../resource/css/card.css">
    <link rel="stylesheet" href="../resource/css/nav.css">
    <link rel="stylesheet" href="../resource/css/footer.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
</head>
<body>
  <?php include 'nav.php' ?>
<div class="cart-wrap">
<h2 >Product Card</h2>
  <div class="cart-icon">
    <?php 
      if(isset($_SESSION['cart']))
      {
        $count=count($_SESSION['cart']);
        echo '<a href="cartItem.php"><img  src="../resource/img/cart-plus-solid.svg" alt=""> Cart <span id="cart-count" class="count">'.$count.'</span></a>
        ';
      }
    ?>
   </div>
</div>
<?php 

  $result=reg_user::getProduct($connection);
  if(mysqli_num_rows($result)>0)
  {
    echo '<div class="cart-wrapper">';
    while($row=mysqli_fetch_array($result))
    {
        ?>   
        <form action="../controller/cartCon.php?action=add&id=<?php echo $row['id']; ?>" method="post">         
                <div class="card"> 
                    <h1><?php echo $row['product_name'];?></h1>
                    <img src="<?php echo $row['image'];?>" alt="">
                    <p class="price"><?php echo $row['price'];?></p>
                    <p>Some text about the jeans. </p>
                    <h3>Quntity</h3>
                    <input type="text" name="quantity" value="1">
                    <input type="hidden" name="name" value="<?php echo $row['product_name'];?> ">
                    <input type="hidden" name="price" value="<?php echo $row['price'];?>">
                    <p><button class="cart-num" name="add">Add to Cart</button></p>
                </div>
              </form>
<?php 
    }
  }
 ?>
  </div> 
<?php include 'footer.php'?>
<script src="../resource/js/cart.js"></script>
</body>
</html> 