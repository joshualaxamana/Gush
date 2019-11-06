<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Items.aspx.cs" Inherits="Items" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Modern Business - Start Bootstrap Template</title>

    <!-- Bootstrap Core CSS -->
    <link href="Business/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Business/css/modern-business.css" rel="stylesheet" />
    <link href="Business/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="Home.aspx">Gush Souvenirs & Cafe</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="about.aspx">About Us</a>
                    </li>
                    <li>
                        <a href="Items.aspx">Featured Items</a>
                    </li>
                    <li>
                        <a href="Events.aspx">Events</a>
                    </li>
                    <li>
                        <a href="contacts.aspx">Contact Us</a>
                    </li>

                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-menu-hamburger" aria-hidden="true"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="Register.aspx">Register <span class="glyphicon glyphicon-pencil"></span></a></li>
                                <li class="divider"></li>
                                <li><a href="Login.aspx">Login <span class="glyphicon glyphicon-user"></span></a></li>
                            </ul>
                        </li>
                    </ul>
                    <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
    </nav>
    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Feautured Items
                   
                </h1>
            </div>
        </div>
        <!-- /.row -->

        <!-- Projects Row -->
        <div class="row">
            <div class="col-md-4 img-portfolio">

                <img src="http://i68.tinypic.com/2vblnwy.png" alt="">

                <h3>Shirt</h3>
                <p>php 350</p>
            </div>
            <div class="col-md-4 img-portfolio">

                <img src="http://i68.tinypic.com/2vblnwy.png" alt="">

                <h3>Shirt</h3>
                <p>php 450</p>
            </div>
            <div class="col-md-4 img-portfolio">

                <img src="http://i68.tinypic.com/2vblnwy.png" alt="">

                <h3>Shirt</h3>
                <p>php 350</p>
            </div>
        </div>
        <!-- /.row -->

        <!-- Projects Row -->
        <div class="row">
            <div class="col-md-4 img-portfolio">

                <img src="http://i68.tinypic.com/2vblnwy.png" alt="">

                <h3>Shirt</h3>
                <p>php 450</p>
            </div>
            <div class="col-md-4 img-portfolio">

                <img src="http://i68.tinypic.com/2vblnwy.png" alt="">

                <h3>Shirt</h3>
                <p>php 350</p>
            </div>
            <div class="col-md-4 img-portfolio">

                <img src="http://i68.tinypic.com/2vblnwy.png" alt="">

                <h3>Shirt</h3>
                <p>php 450</p>
            </div>
        </div>

        <!-- Projects Row -->
        <div class="row">
            <div class="col-md-4 img-portfolio">

                <img src="http://i68.tinypic.com/2vblnwy.png" alt="">

                <h3>Shirt</h3>
                <p>php 350</p>
            </div>
            <div class="col-md-4 img-portfolio">

                <img src="http://i68.tinypic.com/2vblnwy.png" alt="">

                <h3>Shirt</h3>
                <p>php 450</p>
            </div>
            <div class="col-md-4 img-portfolio">

                <img src="http://i68.tinypic.com/2vblnwy.png" alt="">

                <h3>Shirt</h3>
                <p>php 350</p>
            </div>
        </div>
        <!-- /.row -->

        <hr>

        <!-- Pagination -->
        <div class="row text-center">
            <div class="col-lg-12">
                <ul class="pagination">
                    <li>
                        <a href="#">&laquo;</a>
                    </li>
                    <li class="active">
                        <a href="#">1</a>
                    </li>
                    <li>
                        <a href="#">2</a>
                    </li>
                    <li>
                        <a href="#">3</a>
                    </li>
                    <li>
                        <a href="#">4</a>
                    </li>
                    <li>
                        <a href="#">5</a>
                    </li>
                    <li>
                        <a href="#">&raquo;</a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- /.row -->

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Your Website 2014</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="Dashboard/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="Dashboard/js/bootstrap.min.js"></script>

</body>

</html>
