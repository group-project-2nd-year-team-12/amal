<?php 

class reg_user{

    public function __construct()
    {
        
    }
    public function loging($email,$password,$connection)
    {
        
        $query="SELECT level,email FROM  boarder WHERE email='$email' AND password='$password' 
        UNION SELECT level,email FROM  boarding_owner WHERE email='$email' AND password='$password'
       UNION SELECT level,email FROM administrator  WHERE email='$email' AND password='$password'
                 LIMIT 1 ";
        $result_set=mysqli_query($connection,$query);
                 return  $result_set;
    }
    

    public function forgotPassword($email,$connection)
    {
        $query="SELECT * FROM  boarder WHERE email='$email'  UNION SELECT * FROM  boarding_owner WHERE email='$email' 
                 LIMIT 1 ";
        $result_set=mysqli_query($connection,$query);
        return $result_set; 
    }   

    public function newPassword($token,$connection)
    {
        $query="SELECT * FROM  boarder WHERE token='$token'  UNION SELECT * FROM  boarding_owner WHERE token='$token' 
                 LIMIT 1 ";
        $result_set=mysqli_query($connection,$query);
        return $result_set; 
    }   

    public function savePassword($newtoken,$email,$password,$level,$connection)
    {
        $query="UPDATE $level SET password='{$password}',token='{$newtoken}' WHERE email='{$email}'  ";
        $result_set=mysqli_query($connection,$query);
        return $result_set;
    }   

}


?>