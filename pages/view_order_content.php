<?php

  require './classes/super_admin.php';
$obj_super_admin=new Super_admin();
   $order_id=$_GET['id'];
  $customer_query_result=$obj_super_admin->select_customer_info_by_id($order_id);
  $customer_info=  mysqli_fetch_assoc($customer_query_result);
  
  $shipping_query_result=$obj_super_admin->select_shipping_info_by_id($order_id);
  $shipping_info=  mysqli_fetch_assoc($shipping_query_result);
  
  $payment_query_result=$obj_super_admin->select_payment_info_by_id($order_id);
  $payment_info=  mysqli_fetch_assoc($payment_query_result);
  
  $product_query_result=$obj_super_admin->select_product_info_by_id($order_id);
  
?>


<div class="row-fluid sortable" style="width: 980px; margin-left: 100px;">		
    <div class="box span12">
        <div class="box-header" data-original-title>
            <div class="box-icon">
                <a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
                <a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
                <a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
            </div>
        </div>
        <div class="row"> </div>
        <div class="box-content">
            <h3 class="text-center">Customer Information</h3> <a href="invoice.php?id=<?php echo $order_id?>" style="float: right;"><input type="submit" value="Invoice"></a>
            <table class="table table-striped table-bordered bootstrap-datatable datatable">
                <tr>
                    <th>Customer Name</th>
                    <td><?php echo $customer_info['first_name'].' '.$customer_info['last_name'];?></td>
                </tr>
                <tr>
                    <th>Email Address</th>
                    <td><?php echo $customer_info['email_address'];?></td>
                </tr>
                <tr>
                    <th>Address</th>
                    <td><?php echo $customer_info['address'];?></td>
                </tr>
                <tr>
                    <th>Phone Number</th>
                    <td><?php echo $customer_info['phone_number'];?></td>
                </tr>
                <tr>
                    <th>Home District</th>
                    <td><?php echo $customer_info['district_name'];?></td>
                </tr>
                
            </table>            
            
            <h3 class="text-center">Shipping Information</h3>  <h4  class="text-right"><a href="edit_shipping_info.php?id=<?php echo $shipping_info['shipping_id'];?>">Click to edit shipping info</a></h4>
            <table class="table table-striped table-bordered bootstrap-datatable datatable">
                <tr>
                    <th>Customer Name</th>
                    <td><?php echo $shipping_info['full_name'];?></td>
                 </tr>
                <tr>
                    <th>Email Address</th>
                    <td><?php echo $shipping_info['email_address'];?></td>
                </tr>
                <tr>
                    <th>Address</th>
                    <td><?php echo $shipping_info['address'];?></td>
                </tr>
                <tr>
                    <th>Phone Number</th>
                    <td><?php echo $shipping_info['phone_number'];?></td>
                </tr>
                <tr>
                    <th>Home District</th>
                    <td><?php echo $shipping_info['district_name'];?></td>
                </tr>
              </table>
            
            <h3 class="text-center">Product Information</h3> 
            <table class="table table-striped table-bordered bootstrap-datatable datatable">
                <tr>
                    
                    <th>Product ID</th>
                    <th>Product Name</th>
                    
                    <th>Product Price</th>
                    <th>Product Quantity</th>
                    <th>Total Price</th>
                </tr>
                <?php while ($product_info=  mysqli_fetch_assoc($product_query_result)){?>
                <tr>
                    
                    <td><?php echo $product_info['product_id'];?></td>
                    <td><?php echo $product_info['product_name'];?></td>
                    <td><?php echo $product_info['product_price'];?></td>
                    <td><?php echo $product_info['product_quantity'];?></td>
                    <td><?php echo $product_info['product_quantity']*$product_info['product_price'];?></td>
                 </tr>
                <?php } ?>
             </table>
            <h3 class="text-center">Payment Information</h3><i class="fa fa-money"></i>
            <table class="table table-striped table-bordered bootstrap-datatable datatable">
                <tr>
                    <th>Payment Type</th>
                    <td><?php echo $payment_info['payment_type'];?></td>
                </tr>
                
              </table>
        </div>
    </div>
</div>






