<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin</title>

    <!-- Bootstrap Core CSS -->
    <link href="Dashboard/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!-- MetisMenu CSS -->
    <link href="Dashboard/vendor/metisMenu/metisMenu.min.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="Dashboard/dist/css/sb-admin-2.css" rel="stylesheet" />

    <!-- Morris Charts CSS -->
    <link href="Dashboard/vendor/morrisjs/morris.css" rel="stylesheet" />

    <!-- Custom Fonts -->
    <link href="Dashboard/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

               <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="Dashboard.aspx">Gush Souvenirs & Cafe</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i><i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                    
                        <li class="divider"></li>
                        <li><a href="Home.aspx"><i class="fa fa-sign-out fa-fw"></i>Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
 
                        <li>
                            <a href="Dashboard.aspx"><i class="fa fa-dashboard fa-fw"></i>Dashboard</a>
                        </li>

                        <li>
                            <a href="Inventory.aspx"><i class="fa fa-bar-chart"></i>Inventory</a>
                        </li>
                        <li>
                            <a href="ViewSales.aspx"><i class="fa fa-edit fa-fw"></i>Sales</a>
                        </li>
                        <li>
                            <a href="Logs.aspx"><i class="fa fa-bar-chart"></i>Logs</a>
                        </li>
                                                <li>
                            <a href="Reports.aspx"><i class="fa fa-bar-chart"></i>Reports</a>
                        </li>

                        
                        <!-- /.nav-second-level -->
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
        <!-- /#wrapper -->
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Dashboard</h1>
                </div>

            </div>
            <div class="row">
                <div class="col-lg-5">
                    <h4>Total Sales This Year: </h4>
                    <asp:Label ID="totalsales" runat="server"></asp:Label>
                </div>
                <div class="col-lg-5">
                    <h4>Today's sales: </h4>
                    <asp:Label ID="daysales" runat="server"></asp:Label>

                </div>
            </div>


            <div class="row">
                <div class="col-lg-5">
                    <h4>Items with Low Inventory:</h4>
                    <asp:PlaceHolder ID = "PlaceHolder1" runat="server" />
                </div>
            </div>



        </div>
    </div>





    <!-- jQuery -->
    <script src="Dashboard/vendor/jquery/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="Dashboard/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="Dashboard/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="Dashboard/vendor/morrisjs/morris.min.js"></script>
    <script src="Dashboard/vendor/raphael/raphael.min.js"></script>
    <script src="Dashboard/data/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="Dashboard/dist/js/sb-admin-2.js"></script>
</body>

</html>
