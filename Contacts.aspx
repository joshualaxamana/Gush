<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contacts.aspx.cs" Inherits="Contacts" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Gush Souvenirs & Cafe</title>

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
                        <a href="items.aspx">Featured Items</a>
                    </li>
                    <li>
                        <a href="Events.aspx">Events</a>
                    </li>
                     <li>
                        <a href="Contacts.aspx">Contact Us</a>
                    </li>

                     <ul class="nav navbar-nav navbar-right">
                     <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <span class="glyphicon glyphicon-menu-hamburger" aria-hidden="true"></span></a>
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
                <h1 class="page-header">Contacts
                    <small></small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a>
                    </li>
                    <li class="active">Contacts</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <!-- Content Row -->
        <div class="row">
            <!-- Map Column -->
            <div class="col-md-8">
                <!-- Embedded Google Map -->
                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15612.715364857733!2d121.9243209!3d11.9621166!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x8e5990cf67f03ecb!2sGush+Souvenirs+%26+Cafe!5e0!3m2!1sen!2sph!4v1479815571498" width="600" height="450" frameborder="0" style="border: 0" allowfullscreen></iframe>
                <!-- Contact Details Column -->
                <div class="col-md-4">
                    <h3>Contact Details</h3>
                    <p>
                        2nd Floor, Pats Bar Building, Station 2 Beach Front, Boracay Philippines

Malay, Aklan<br>
                    </p>
                    <p>
                        <i class="fa fa-phone"></i>
                        <abbr title="Phone">P</abbr>: 0917 885 0264
                    </p>
                    <p>
                        <i class="fa fa-envelope-o"></i>
                        <abbr title="Email">E</abbr>: <a href="argarnica@sugarrush.asia">argarnica@sugarrush.asia</a>
                    </p>
                    <p>
                        <i class="fa fa-clock-o"></i>
                        <abbr title="Hours">H</abbr>: Mon. - Sun.:9:00AM-11:00PM
                    </p>

                </div>
            </div>
            <!-- /.row -->


            <!-- /.row -->

            <hr>

            <!-- Footer -->
            <footer>
                <div class="row">
                    <div class="col-lg-12">
                        <p>Copyright &copy; Gush Souvenirs & Cafe 2016</p>
                    </div>
                </div>
            </footer>

        </div>
        <!-- /.container -->

        <!-- jQuery -->
        <script src="Business/js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="Business/js/bootstrap.min.js"></script>

        <!-- Contact Form JavaScript -->
        <!-- Do not edit these files! In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
        <script src="Business/js/jqBootstrapValidation.js"></script>
        <script src="Business/js/contact_me.js"></script>
</body>

</html>
<%--  --%>