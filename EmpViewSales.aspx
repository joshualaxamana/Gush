<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmpViewSales.aspx.cs" Inherits="EmpViewSales" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>View Sales</title>

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
            margin-bottom: 10px;
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
                <a class="navbar-brand" href="EmployeeInventory.aspx">Gush Souvenirs & Cafe</a>
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
                            <a href="EmployeeInventory.aspx"><i class="fa fa-bar-chart"></i>Inventory</a>
                        </li>
                        <li>
                            <a href="EmpViewSales.aspx"><i class="fa fa-edit fa-fw"></i>Sales</a>
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
                            <h1 class="page-header">Sales</h1>
                        </div>
                    </div>
                    <div class=" row">
                        <div class="col-lg-12">
                            <h3>Filter by date:</h3>
                        </div>
                    </div>
                    <div class="row row extra-bottom-padding-small">
                        <div class="col-lg-1">
                            <h5>Month:</h5>
                            <asp:DropDownList CssClass="gridstyle gridstyle text-center" ID="month" runat="server">
                                <asp:ListItem Text="Month"></asp:ListItem>
                                <asp:ListItem> 01</asp:ListItem>
                                <asp:ListItem> 02</asp:ListItem>
                                <asp:ListItem> 03</asp:ListItem>
                                <asp:ListItem> 04</asp:ListItem>
                                <asp:ListItem> 05</asp:ListItem>
                                <asp:ListItem> 06</asp:ListItem>
                                <asp:ListItem> 07</asp:ListItem>
                                <asp:ListItem> 08</asp:ListItem>
                                <asp:ListItem> 09</asp:ListItem>
                                <asp:ListItem> 10</asp:ListItem>
                                <asp:ListItem> 11</asp:ListItem>
                                <asp:ListItem> 12</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <div class="col-lg-1">
                            <h5>Date:</h5>
                            <asp:DropDownList CssClass="gridstyle gridstyle text-center" ID="date" runat="server">
                                <asp:ListItem Text="Date"></asp:ListItem>
                                <asp:ListItem> 01</asp:ListItem>
                                <asp:ListItem> 02</asp:ListItem>
                                <asp:ListItem> 03</asp:ListItem>
                                <asp:ListItem> 04</asp:ListItem>
                                <asp:ListItem> 05</asp:ListItem>
                                <asp:ListItem> 06</asp:ListItem>
                                <asp:ListItem> 07</asp:ListItem>
                                <asp:ListItem> 08</asp:ListItem>
                                <asp:ListItem> 09</asp:ListItem>
                                <asp:ListItem> 10</asp:ListItem>
                                <asp:ListItem> 11</asp:ListItem>
                                <asp:ListItem> 12</asp:ListItem>
                                <asp:ListItem> 13</asp:ListItem>
                                <asp:ListItem> 14</asp:ListItem>
                                <asp:ListItem> 15</asp:ListItem>
                                <asp:ListItem> 16</asp:ListItem>
                                <asp:ListItem> 17</asp:ListItem>
                                <asp:ListItem> 18</asp:ListItem>
                                <asp:ListItem> 19</asp:ListItem>
                                <asp:ListItem> 20</asp:ListItem>
                                <asp:ListItem> 21</asp:ListItem>
                                <asp:ListItem> 22</asp:ListItem>
                                <asp:ListItem> 23</asp:ListItem>
                                <asp:ListItem> 24</asp:ListItem>
                                <asp:ListItem> 25</asp:ListItem>
                                <asp:ListItem> 26</asp:ListItem>
                                <asp:ListItem> 27</asp:ListItem>
                                <asp:ListItem> 28</asp:ListItem>
                                <asp:ListItem> 29</asp:ListItem>
                                <asp:ListItem> 30</asp:ListItem>
                                <asp:ListItem> 31</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <div class="col-lg-1">
                            <h5>Year:</h5>
                            <asp:DropDownList CssClass="gridstyle gridstyle text-center" ID="year" runat="server">
                                <asp:ListItem Text="Year"></asp:ListItem>
                                <asp:ListItem> 2016</asp:ListItem>
                                <asp:ListItem> 2017</asp:ListItem>
                                <asp:ListItem> 2018</asp:ListItem>
                                <asp:ListItem> 2019</asp:ListItem>
                                <asp:ListItem> 2020</asp:ListItem>
                                <asp:ListItem> 2021</asp:ListItem>
                                <asp:ListItem> 2022</asp:ListItem>
                                <asp:ListItem> 2023</asp:ListItem>
                                <asp:ListItem> 2024</asp:ListItem>
                                <asp:ListItem> 2025</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-lg-6">
                            <asp:Button ID="goFilterDate" class="btn btn-info" runat="server" Text="Go" OnClick="goFilterDate_Click" />
                        </div>
                    </div>

                    <div class="row row extra-bottom-padding-small">
                        <div class="col-lg-4">
                            <h3>Filter by Product:</h3>
                            <asp:TextBox ID="productFilter" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row row extra-bottom-padding-large">
                        <div class="col-lg-4">
                          
                            <asp:Button ID="goProduct" CssClass="btn btn-info" runat="server" Text="Go" OnClick="goProduct_Click" />
                        </div>
                    </div>

                    <div class="row row extra-top-padding-large">
                        <div class="col-lg-12">
                            <asp:PlaceHolder ID="PlaceHolder1" runat="server" />
                        </div>

                    </div>
                </div>

        </form>

    </div>
 

    <!-- /#wrapper -->

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

