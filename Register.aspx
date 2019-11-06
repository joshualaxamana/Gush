<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" EnableEventValidation="false" %>

<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Gush Souvenirs & Cafe - Registration</title>

    <!-- Bootstrap Core CSS -->
    <link href="Dashboard/css/bootstrap.min.css" rel="stylesheet" />

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
    <style>
        body {
            background-image: url("http://i67.tinypic.com/262mcly.png");
        }
    </style>
    <form id="form1" runat="server">

        <!-- 
        NAV BAR

        <![endif]-->

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-static-top" role="navigation">
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






        <div class="container">
            <div class="row">
                <center><img src="img/logo.png" alt="Logo" /></center>
                <div class="col-md-4 col-md-offset-4">
                    <div class="login-panel panel panel-default">
                        <div class="panel-heading">
                            <h2>
                                <center><b>Registration</b></center>
                            </h2>
                        </div>
                        <div class="panel-body">
                            <form role="form">
                                <fieldset>
                                    <div class="form-group">
                                        <div id="error" runat="server" class="alert alert-danger"
                                            visible="false">
                                            Username already taken!
                                        </div>
                                        <label class="control-label col-lg-4">Username</label>
                                        <asp:TextBox ID="txtUserName" runat="server"
                                            class="form-control" MaxLength="50" required />
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-lg-4">Password</label>
                                        <asp:TextBox ID="txtPassword" runat="server"
                                            class="form-control" MaxLength="20" type="password" required />
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-lg-4">First Name</label>
                                        <asp:TextBox ID="txtFN" runat="server"
                                            class="form-control" MaxLength="50" required />
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-lg-4">Last Name</label>
                                        <asp:TextBox ID="txtLN" runat="server"
                                            class="form-control" MaxLength="50" required />
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-lg-4">User Level</label>
                                        <asp:TextBox ID="txtUserLevel" runat="server"
                                            class="form-control" MaxLength="50" required />
                                    </div>
                                    <!-- Change this to a button or input when using this as a form -->
                                    <div class="form-group">
                                        <div class="col-lg-offset-4 col-lg-8">
                                            <asp:Button ID="btnRegister" runat="server"
                                                CssClass="btn btn-success" Text="Register"
                                                OnClick="btnRegister_Click" />
                                        </div>
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- jQuery -->
        <script src="Dashboard/vendor/jquery/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="Dashboard/vendor/bootstrap/js/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="Dashboard/vendor/metisMenu/metisMenu.min.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="Dashboard/dist/js/sb-admin-2.js"></script>
    </form>
</body>

</html>

