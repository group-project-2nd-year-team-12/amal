<?php 
 require_once ('../config/database.php');
 require_once ('../models/reg_user.php');
    session_start ();
?>

<?php
if(isset($_GET['click1']))
{
    //print_r($_SESSION);
    if(isset($_SESSION['cart']))
    {
       $email=$_SESSION['email'];
       $first_name=$_SESSION['first_name'];
       $last_name=$_SESSION['last_name'];
       $address=$_SESSION['address'];
       $products=$_SESSION['cart'];
       $order_id=time().mt_rand($email);
    //    print_r($products);
       foreach($products as $product)
       {
        reg_user::food_request($email,$address,$first_name,$last_name,$product['item_name'],$product['item_quantity'],$order_id,$connection);
       }
       $_SESSION['isdisable']=1;
      header('Location:../views/cartItem.php');
}
}

if(isset($_GET['click']))
{
   $results=reg_user::getOrder($connection);
   $records=mysqli_fetch_assoc($results);
   
   foreach($records as $record)
   {
      print_r($$record);
   }


}
?>