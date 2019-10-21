 <div class="col-md-3 col-sm-4">
                        <p class="paddingm">Modules</p>
                        <ul style="list-style: none">
                            <!--Item-->
                                <?php if($userInfo['role_id']!=2){ ?>
                            <li><a href="../view/item.php"><i class="glyphicon glyphicon-gift"></i>Item</a></li>
                                <?php } ?>
                            <!--Customer-->
                                <?php if($userInfo['role_id']!=2){ ?>
                            <li><a href="../view/customer.php"><i class="glyphicon glyphicon-user"></i>Customer</a></li>
                                <?php } ?>
                            <!--Order-->
                                <?php if($userInfo['role_id']!=2){ ?>
                            <li><a href="../view/order.php"><i class="glyphicon glyphicon-shopping-cart"></i>Order</a></li>
                                <?php } ?>
                            <!--Payment-->
                                <?php if($userInfo['role_id']!=2){ ?>
                            <li><a href="../view/payment.php"><i class="glyphicon glyphicon-credit-card"></i>Payment</a></li>
                                <?php } ?>
                             <!--Purchase Order-->
                                <?php if($userInfo['role_id']!=2){ ?>
                            <li><a href="../view/purchaseorder.php"><i class="glyphicon glyphicon-file"></i>Purchase Order</a></li>
                                <?php } ?>
                             <!--Stock-->
                                <?php if($userInfo['role_id']!=2){ ?>
                            <li><a href="../view/stock.php"><i class="glyphicon glyphicon-oil"></i>Stock</a></li>
                                <?php } ?>
                            <!--User-->
                                <?php if($userInfo['role_id']==1 || $userInfo['role_id']==2 || $userInfo['role_id']==3){ ?>
                            <li><a href="../view/user.php"><i class="glyphicon glyphicon-stats"></i>User</a></li>
                                <?php } ?>
                            <!--Supplier-->
                                <?php if($userInfo['role_id']!=2){ ?>
                            <li><a href="../view/supplier.php"><i class="glyphicon glyphicon-sunglasses"></i>Supplier</a></li>
                                <?php } ?>
                            <!--Rating and feedback-->
                                <?php if($userInfo['role_id']!=2){ ?>
                            <li><a href="../view/feedback.php"><i class="glyphicon glyphicon-star"></i>Feedback</a></li>
                                <?php } ?>
                            <!--Notification-->
                                <?php if($userInfo['role_id']!=4){ ?>
                            <li><a href="../view/notification.php"><i class="glyphicon glyphicon-new-window"></i>Notification</a></li>
                                <?php } ?>
                            <!--Backup-->
                                <?php if($userInfo['role_id']==2 || $userInfo['role_id']==1){ ?>
                            <li><a href="../view/backup.php"><i class="glyphicon glyphicon-barcode"></i>Backup</a></li>
                                <?php } ?>
                            <!--Reports-->
                                <?php //if($userInfo['role_id']!=2){ ?>
                            <li><a href="../view/report.php"><i class="glyphicon glyphicon-certificate"></i>Reports</a></li>
                                <?php //} ?>
                            
                            
                            <?php if($userInfo['role_id']==1){ ?>
                            <li><a href="../view/usertracking.php"><i class="glyphicon glyphicon-transfer"></i>User Tracking</a></li>
                                <?php } ?>
                            
                        </ul>
                    </div>