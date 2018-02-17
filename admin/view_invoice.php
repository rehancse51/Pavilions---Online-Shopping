<?php
//$admin_pages='view_invoice';
//include './admin_master.php';
?>
<?php
require '../classes/super_admin.php';
$obj_super_admin = new Super_admin();


$order_id = $_GET['id'];
$customer_query_result = $obj_super_admin->select_customer_info_by_id($order_id);
$customer_info = mysqli_fetch_assoc($customer_query_result);

$shipping_query_result = $obj_super_admin->select_shipping_info_by_id($order_id);
$shipping_info = mysqli_fetch_assoc($shipping_query_result);

$payment_query_result = $obj_super_admin->select_payment_info_by_id($order_id);
$payment_info = mysqli_fetch_assoc($payment_query_result);

$product_query_result = $obj_super_admin->select_product_info_by_id($order_id);
?>
<html>
    <head>
        <link id="bootstrap-style" href="../assets/admin_assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="../assets/admin_assets/css/bootstrap-responsive.min.css" rel="stylesheet">
        <link id="base-style" href="../assets/admin_assets/css/style.css" rel="stylesheet">
        <link id="base-style-responsive" href="../assets/admin_assets/css/style-responsive.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>
        <!-- end: CSS -->


        <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
                <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
                <link id="ie-style" href="css/ie.css" rel="stylesheet">
        <![endif]-->

        <!--[if IE 9]>
                <link id="ie9style" href="css/ie9.css" rel="stylesheet">
        <![endif]-->

        <!-- start: Favicon -->
        <link rel="shortcut icon" href="../assets/admin_assets/img/favicon.ico">



    </head>
    <body>
        <div class="row-fluid sortable">		
            <div class="box span12">
                <div class="box-header" data-original-title>
<!--                    <h2><i class="halflings-icon user"></i><span class="break"></span>Inovice Info Goes Here.</h2>-->
<!--                    <div class="box-icon">
                        <a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
                        <a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
                        <a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
                    </div>-->
                </div>
                <div class="box-content">
                    <h1 class="text-center">Ordered Customer Information</h1> <button style="float: right;" onclick="myFunction()" class="btn btn-primary btn-lg">Print</button>
                    <table class="table table-striped table-bordered bootstrap-datatable datatable">
                        <tr>
                            <th>Customer Name</th>
                            <td><?php echo $customer_info['first_name'] . ' ' . $customer_info['last_name']; ?></td>
                        </tr>
                        <tr>
                            <th>Email Address</th>
                            <td><?php echo $customer_info['email_address']; ?></td>
                        </tr>
                        <tr>
                            <th>Address</th>
                            <td><?php echo $customer_info['address']; ?></td>
                        </tr>
                        <tr>
                            <th>Phone Number</th>
                            <td><?php echo $customer_info['phone_number']; ?></td>
                        </tr>
                        <tr>
                            <th>Home District</th>
                            <td><?php echo $customer_info['district_name']; ?></td>
                        </tr>

                    </table>            

                    <h2 class="text-center">Ordered Shipping Information</h2>
                    <table class="table table-striped table-bordered bootstrap-datatable datatable">
                        <tr>
                            <th>Customer Name</th>
                            <td><?php echo $shipping_info['full_name']; ?></td>
                        </tr>
                        <tr>
                            <th>Email Address</th>
                            <td><?php echo $shipping_info['email_address']; ?></td>
                        </tr>
                        <tr>
                            <th>Address</th>
                            <td><?php echo $shipping_info['address']; ?></td>
                        </tr>
                        <tr>
                            <th>Phone Number</th>
                            <td><?php echo $shipping_info['phone_number']; ?></td>
                        </tr>
                        <tr>
                            <th>Home District</th>
                            <td><?php echo $shipping_info['district_name']; ?></td>
                        </tr>
                    </table>

                    <h2 class="text-center">Ordered Product Information</h2>
                    <table class="table table-striped table-bordered bootstrap-datatable datatable">
                        <tr>

                            <th>Product ID</th>
                            <th>Product Name</th>
                            <th>Product Image</th>
                            <th>Product Price</th>
                            <th>Product Quantity</th>
                            <th>Total Price</th>
                        </tr>
                        <?php while ($product_info = mysqli_fetch_assoc($product_query_result)) { ?>
                            <tr>

                                <td><?php echo $product_info['product_id']; ?></td>
                                <td><?php echo $product_info['product_name']; ?></td>
                                <td><img src="<?php echo $product_info['product_image']; ?>" alt="<?php echo $product_info['product_name']; ?>" width="50" height="50"></td>
                                <td><?php echo $product_info['product_price']; ?></td>
                                <td><?php echo $product_info['product_quantity']; ?></td>
                                <td><?php echo $product_info['product_quantity'] * $product_info['product_price']; ?></td>
                            </tr>
                        <?php } ?>
                    </table>
                    <h2 class="text-center">Ordered Payment Information</h2>
                    <table class="table table-striped table-bordered bootstrap-datatable datatable">
                        <tr>
                            <th>Payment Type</th>
                            <td><?php echo $payment_info['payment_type']; ?></td>
                        </tr>
                        <tr>
                            <th>Payment Status</th>
                            <td><?php echo $payment_info['payment_status']; ?></td>
                        </tr>
                    </table>
                </div>
            </div>
            

        </div>
        <script>
            function myFunction() {
                window.print();
            }
        </script>

        <script src="../assets/admin_assets/js/jquery-1.9.1.min.js"></script>
        <script src="../assets/admin_assets/js/jquery-migrate-1.0.0.min.js"></script>

        <script src="../assets/admin_assets/js/jquery-ui-1.10.0.custom.min.js"></script>

        <script src="../assets/admin_assets/js/jquery.ui.touch-punch.js"></script>

        <script src="../assets/admin_assets/js/modernizr.js"></script>

        <script src="../assets/admin_assets/js/bootstrap.min.js"></script>

        <script src="../assets/admin_assets/js/jquery.cookie.js"></script>

        <script src='../assets/admin_assets/js/fullcalendar.min.js'></script>

        <script src='../assets/admin_assets/js/jquery.dataTables.min.js'></script>

        <script src="../assets/admin_assets/js/excanvas.js"></script>
        <script src="../assets/admin_assets/js/jquery.flot.js"></script>
        <script src="../assets/admin_assets/js/jquery.flot.pie.js"></script>
        <script src="../assets/admin_assets/js/jquery.flot.stack.js"></script>
        <script src="../assets/admin_assets/js/jquery.flot.resize.min.js"></script>

        <script src="../assets/admin_assets/js/jquery.chosen.min.js"></script>

        <script src="../assets/admin_assets/js/jquery.uniform.min.js"></script>

        <script src="../assets/admin_assets/js/jquery.cleditor.min.js"></script>

        <script src="../assets/admin_assets/js/jquery.noty.js"></script>

        <script src="../assets/admin_assets/js/jquery.elfinder.min.js"></script>

        <script src="../assets/admin_assets/js/jquery.raty.min.js"></script>

        <script src="../assets/admin_assets/js/jquery.iphone.toggle.js"></script>

        <script src="../assets/admin_assets/js/jquery.uploadify-3.1.min.js"></script>

        <script src="../assets/admin_assets/js/jquery.gritter.min.js"></script>

        <script src="../assets/admin_assets/js/jquery.imagesloaded.js"></script>

        <script src="../assets/admin_assets/js/jquery.masonry.min.js"></script>

        <script src="../assets/admin_assets/js/jquery.knob.modified.js"></script>

        <script src="../assets/admin_assets/js/jquery.sparkline.min.js"></script>

        <script src="../assets/admin_assets/js/counter.js"></script>

        <script src="../assets/admin_assets/js/retina.js"></script>

        <script src="../assets/admin_assets/js/custom.js"></script>
        <!-- end: JavaScript-->











    </body>
</html>
