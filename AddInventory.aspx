<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddInventory.aspx.cs" Inherits="AddInventory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>AddInventory</title>

    <!-- Bootstrap Core CSS -->
    <link href="Dashboard/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="Dashboard/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="Dashboard/vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="Dashboard/vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="Dashboard/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="Dashboard/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
        .row.extra-bottom-padding-small {
            margin-bottom: 5px;
        }

        .row.extra-bottom-padding-large {
            margin-bottom: 20px;
        }

        .row.extra-top-padding-large {
            margin-bottom: 10px;
        }
    </style>
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
                <a class="navbar-brand" href="admin.aspx">Gush Souvenirs & Cafe</a>
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
        <form id="form1" runat="server">
            <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Add Inventory</h1>
                    </div>
                </div>

                <br />
                <div class="row row extra-bottom-padding-large">
                    <h4>Product Information</h4>
                    <h5>Product Name:</h5>
                    <asp:TextBox ID="productName" runat="server" />
                    <h5>Product Intial Quantity:</h5>
                    <asp:TextBox ID="productQty" runat="server" />
                    <h5>Product Required Quantity:</h5>
                    <asp:TextBox ID="productQtyReq" runat="server" />
                    <h5>Product Price:</h5>
                    <asp:TextBox ID="productPrice" runat="server" />
                    <h5>Product Cost:</h5>
                    <asp:TextBox ID="productCost" runat="server" />
                    <asp:Label ID="status" runat="server"></asp:Label>
                </div>

                <div class="row">                
                    <asp:Button ID="clearText" class="btn btn-info" runat="server" Text="Clear" OnClick="clearText_Click"/>
                    <asp:Button ID="addProduct" class="btn btn-info" runat="server" Text="Add New Product" OnClick="addProduct_Click" />
                    <asp:Button ID="back" class="btn btn-info" runat="server" Text="Back" OnClick="back_Click" />
                </div>
            </div>
        </form>

    </div>



    <!-- jQuery -->
    <script src="Dashboard/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="Dashboard/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="Dashboard/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="Dashboard/vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="Dashboard/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="Dashboard/vendor/datatables-responsive/dataTables.responsive.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="Dashboard/dist/js/sb-admin-2.js"></script>
</body>
</html>
