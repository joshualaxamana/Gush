<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

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
    <link href="Dashboard/css/bootstrap.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="Dashboard/css/modern-business.css" rel="stylesheet" />

    <!-- Custom Fonts -->
    <link href="Dashboard/font-awesome/css/font-awesome.min.css" rel="stylesheet" />

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

    <!-- Header Carousel -->
    <header id="myCarousel" class="carousel slide">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <div class="fill" style="background-image: url('img/gushhome.png');"></div>
            </div>
            <div class="item">
                <div class="fill" style="background-image: url('img/banner4.png');"></div>
            </div>
            <div class="item">
                <div class="fill" style="background-image: url('img/beerbb.png');"></div>
            </div>
            <div class="item">
                <div class="fill" style="background-image: url('img/banner5.png');"></div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>
    </header>

    <!-- Page Content -->
    <div class="container">

        <!-- Marketing Icons Section -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    <center>Gush Souvenirs & Cafe </center>
                </h1>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i> About Us</h4>
                    </div>
                    <div class="panel-body">
                        <p>GushShop Corporation established 2014 as e-commerce platform of personalize apparel. In 2015, open it’s first retail store in Boracay Island and the trade name was Gush Souvenirs and Cafe.</p>
                        <a href="About.aspx" class="btn btn-default">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="glyphicon glyphicon-fire"></i> Upcoming Events</h4>
                    </div>
                    <div class="panel-body">
                        <p>November 15, 2016 - Rave Revolution</p>
                        <p>November 21, 2016 - Cocktail All U Can</p>
                        <p>November 26, 2016 - Cocktail All U Can</p>
                        <p>November 30, 2016 - Beer All U Can</p>
                        <a href="#" class="btn btn-default">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-compass"></i> Location</h4>
                    </div>
                    <div class="panel-body">
                        <p>2nd Floor, Pats Bar Building, Station 2 Beach Front, Boracay Philippines, Malay, Aklan</p>
                        <a href="#" class="btn btn-default">Learn More</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->

        <!-- Portfolio Section -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">New Items</h2>
            </div>
            <div class="col-md-4 col-sm-6">
                    <img class="img-responsive img-portfolio img-hover" src="http://i68.tinypic.com/2vblnwy.png" width="350" height="100" alt="">
   
            </div>
            <div class="col-md-4 col-sm-6">
             
                    <img class="img-responsive img-portfolio img-hover" src="http://i68.tinypic.com/2vblnwy.png" width="350" height="100" alt="">
  
            </div>
            <div class="col-md-4 col-sm-6">
              
                    <img class="img-responsive img-portfolio img-hover" src="http://i68.tinypic.com/2vblnwy.png" width="350" height="100" alt="">

            </div>
            <div class="col-md-4 col-sm-6">
                    <img class="img-responsive img-portfolio img-hover" src="http://i68.tinypic.com/2vblnwy.png" width="350" height="100" alt="">
            </div>
            <div class="col-md-4 col-sm-6">
                    <img class="img-responsive img-portfolio img-hover" src="http://i68.tinypic.com/2vblnwy.png" width="350" height="100" alt="">
            </div>
            <div class="col-md-4 col-sm-6">
                    <img class="img-responsive img-portfolio img-hover" src="http://i68.tinypic.com/2vblnwy.png" width="350" height="100" alt="">
            </div>
        </div>
        <!-- /.row -->

        <!-- Features Section -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">Why Gush?</h2>
            </div>
            <div class="col-md-6">
                <h3><b>Mission</b></h3>
                <p>Gush Souvenirs & Cafe is social enterprise to provide assistance to Aetas(indigenous people) and 
                    local residents of Boracay by giving jobs and scholarship program. </p>
                  <p> You're not just gonna spend money if you buy from us but rather you will be 
                    part of "<B>giving back to the community</b>" circle. </p>
                <p>A place where you can chill for different reasons; Boardgames, sungka, karaoke and drinks. </p>
                <p><b>Our aim is to make our customers journey in Boracay to be a memorable experience and build a happy community.</b></p>
            </div>
            <div class="col-md-6">
                <img class="img-responsive" src="img/logo.png" alt="">
            </div>
        </div>
        <!-- /.row -->

        <hr>

        <!-- Call to Action Section -->
        <div class="well">
            <div class="row">
                <div class="col-md-8">
                    <span class="glyphicon glyphicon-phone" aria-hidden="true"></span> Call: 0917-885-0264 |         
                       <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> Email: argarnica@sugarrush.asia |
                        <span class="glyphicon glyphicon-globe" aria-hidden="true"></span> Facebook: <a href="https://www.facebook.com/gushshop">Gush Souvenirs & Cafe</a>
                    <br /><B>Feel free to get back to us with your inquiries, feedback and questions.</B>
                </div>
                <div class="col-md-4">
                    <a class="btn btn-lg btn-default btn-block" href="Contacts.aspx">Contact Us!</a>
                </div>
            </div>
        </div>

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

    <!-- Script to Activate the Carousel -->
    <script>
        $('.carousel').carousel({
            interval: 5000 //changes the speed
        })
    </script>

</body>

</html>
