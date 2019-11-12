<?php
require "../config/database.php";
require "../models/Db.php";
require "../models/products.php";
require "../models/protypes.php";
require "../models/manufactures.php";
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Mobile Admin</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="public/css/bootstrap.min.css" />
    <link rel="stylesheet" href="public/css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="public/css/uniform.css" />
    <link rel="stylesheet" href="public/css/select2.css" />
    <link rel="stylesheet" href="public/css/matrix-style.css" />
    <link rel="stylesheet" href="public/css/matrix-media.css" />
    <link href="public/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
</head>

<body>

    <!--Header-part-->
    <div id="header">
        <h1><a href="dashboard.php">Dashboard</a></h1>
    </div>
    <!--close-Header-part-->

    <!--top-Header-menu-->
    <div id="user-nav" class="navbar navbar-inverse">
        <ul class="nav">
            <li class="dropdown" id="profile-messages"><a title="" href="#" data-toggle="dropdown"
                    data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i> <span
                        class="text">Welcome Super Admin</span><b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <li><a href="#"><i class="icon-user"></i> My Profile</a></li>
                    <li class="divider"></li>
                    <li><a href="#"><i class="icon-check"></i> My Tasks</a></li>
                    <li class="divider"></li>
                    <li><a href="login.php"><i class="icon-key"></i> Log Out</a></li>
                </ul>
            </li>
            <li class="dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages"
                    class="dropdown-toggle"><i class="icon icon-envelope"></i> <span class="text">Messages</span> <span
                        class="label label-important">5</span> <b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <li><a class="sAdd" title="" href="#"><i class="icon-plus"></i> new message</a></li>
                    <li class="divider"></li>
                    <li><a class="sInbox" title="" href="#"><i class="icon-envelope"></i> inbox</a></li>
                    <li class="divider"></li>
                    <li><a class="sOutbox" title="" href="#"><i class="icon-arrow-up"></i> outbox</a></li>
                    <li class="divider"></li>
                    <li><a class="sTrash" title="" href="#"><i class="icon-trash"></i> trash</a></li>
                </ul>
            </li>
            <li class=""><a title="" href="#"><i class="icon icon-cog"></i> <span class="text">Settings</span></a></li>
            <li class=""><a title="" href="../logout.php"><i class="icon icon-share-alt"></i> <span
                        class="text">Logout</span></a></li>
        </ul>
    </div>

    <!--start-top-serch-->
    <div id="search">
        <form action="result.php" method="get">
            <input type="text" placeholder="Search here..." name="key" />
            <button type="submit" class="tip-bottom" title="Search"><i class="icon-search icon-white"></i></button>
        </form>
    </div>
    <!--close-top-serch-->

    <!--sidebar-menu-->

    <div id="sidebar"> <a href="#" class="visible-phone"><i class="icon icon-th"></i>Tables</a>
        <ul>
            <li><a href="index.php"><i class="icon icon-home"></i> <span>Dashboard</span></a> </li>
            <li> <a href="form.php"><i class="icon icon-th-list"></i> <span>Add New Product</span></a></li>
            <li> <a href="manufactures.php"><i class="icon icon-th-list"></i> <span>Manufactures</span></a></li>
            <li> <a href="add_manufactures.php"><i class="icon icon-th-list"></i> <span>Add Manufactures</span></a></li>
            <li> <a href="user.php"><i class="icon icon-th-list"></i> <span>User</span></a></li>
            <li> <a href="protype.php"><i class="icon icon-th-list"></i> <span>Protype</span></a></li>
            <li> <a href="add_protype.php"><i class="icon icon-th-list"></i> <span>Add Protype</span></a></li>


        </ul>
    </div>

    <!-- BEGIN CONTENT -->
    <div id="content">
        <div id="content-header">
            <div id="breadcrumb"> <a href="#" title="Go to Home" class="tip-bottom current"><i class="icon-home"></i>
                    Home</a></div>
            <h1>Edit Product</h1>
        </div>
        <div class="container-fluid">
            <hr>
            <div class="row-fluid">
                <div class="span12">
                    <div class="widget-box">
                        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
                            <h5>Product Detail</h5>
                        </div>
                        <div class="widget-content nopadding">

                            <!-- BEGIN USER FORM -->
                            <?php
                    $id = $_GET['id'];
                    echo $id;
                    $manu = new Protype;
                    $getManufactureById = $manu->getProtypeByIdRight($id);
                    foreach($getManufactureById as $key=>$value){
               		 ?>
                            <form action="xl_editmanufacture.php?id=<?php echo $id ?>" method="post"
                                class="form-horizontal" enctype="multipart/form-data">
                                <div class="control-group">
                                    <label class="control-label">Name :</label>
                                    <div class="controls">
                                        <input type="text" class="span11" value="<?php echo $value['type_name'] ?>"
                                            name="name" />
                                    </div>
                                </div>
                                <div class="control-group">
                                    <form id="Form_upload" method="post" enctype="multipart/form-data">
                                        <label class="control-label">Choose an image :</label>
                                        <td><img class="img-fluid" src='public/images/<?php echo $value['type_img'] ?>'
                                                alt=""></td>
                                        <div class="controls">
                                            <input type="file" name="fileToUpload" id="fileToUpload">
                                            <?php $_FILES["fileToUpload"]["name"] = $value['type_img']?>
                                            <img src="../public/images/<?php echo $value['type_img'] ?>" width="100"><br>
                                        </div>
                                    </form>
                                    <div class="form-actions">
                                        <button type="submit" name="edit" class="btn btn-success">Edit</button>
                                    </div>
                                </div>
                                    
                                <?php } ?>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- END CONTENT -->

    <!--Footer-part-->
    <div class="row-fluid">
        <div id="footer" class="span12"> 2017 &copy; TDC - Lập trình web 1</div>
    </div>
    <!--end-Footer-part-->
    <script src="public/js/jquery.min.js"></script>
    <script src="public/js/jquery.ui.custom.js"></script>
    <script src="public/js/bootstrap.min.js"></script>
    <script src="public/js/jquery.uniform.js"></script>
    <script src="public/js/select2.min.js"></script>
    <script src="public/js/jquery.dataTables.min.js"></script>
    <script src="public/js/matrix.js"></script>
    <script src="public/js/matrix.tables.js"></script>
</body>

</html>