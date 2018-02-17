<?php
  $query_result= $obj_app->select_all_publish_manufacturer_info();
    $result=$obj_app->select_all_category();
?>

<div class="footer-widget">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="single-widget">
                                <h2>Manufacturer List</h2>
                                <ul class="nav nav-pills nav-stacked">
                                    
                                    <?php while($manufacturer_info=mysqli_fetch_assoc($query_result)){?> 
                                    <li><a href="manufacturer.php?id=<?php echo $manufacturer_info['manufacturer_id'];?>"><?php echo $manufacturer_info['manufacturer_name'];?></a></li>
                                    <?php }?>
                                  </ul>
                            </div>
                        </div>
                        <div class="col-sm-5" style="padding-right: 100px;">
                            <div class="single-widget">
                                <h4 style="color: #666666; padding-top: 10px;">Terms and policy</h4>
                                <p style="color: #999999;">
                                   With the aid of object-oriented technologies, an Internet-based maintenance model named IBOOM was developed for the Hong Kong Marine Police fleet. 
                                   TERMS. Class: A class is a blueprint or prototype that defines the variables and the methods common to all objects of a certain kind.
                                   Inheritance: A class inherits its state 
                                </p>
                            </div>
                        </div>
                        
                        <div class="col-sm-3">
                            <div class="single-widget">
                                <h4 style="color: #666666">Active category list</h4>
                                <ul class="nav nav-pills nav-stacked">
                                    <li><a href="index.php" class="active">Home</a></li>
                                    <?php while ($category_info=  mysqli_fetch_assoc($result)) {?>
                                    <li><a href="category.php?id=<?php echo $category_info['category_id'];?>"><?php echo $category_info['category_name'];?></a></li>
                                    <?php }?>
                                    
                                    
                                    <?php if(isset($_SESSION['customer_id'])) {?>
                                    <li><a href="profile.php">Profile</a></li>
                                    <?php }?>
                                </ul>
                            </div>
                        </div>
                       

                    </div>
                </div>
            </div>