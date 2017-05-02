<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/include_page/include-header.jsp"%>
<%@ include file="/include_page/include-body.jsp"%>
<!--StyleSheet-->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/flag-icon.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/metisMenu.min.css">
<link rel="stylesheet" href="css/sb-admin-2.css">
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
                <a class="navbar-brand" href="index.html"><i class="fa fa-y-combinator  fa-fw"></i> YShip Demo</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i><i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
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
                            <a href="#"><i class="fa fa-sitemap fa-fw"></i><b>申請メニュー</b><span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="flot.html"><i class="fa fa-shopping-basket fa-fw"></i>申請する</a>
                                </li>
                                <li>
                                    <a href="morris.html"><i class="fa fa-history fa-fw"></i>申請履歴</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="index.html"><i class="fa fa-info-circle fa-fw"></i>商品到着の周知</a>
                        </li>
                        <li>
                            <a href="index.html"><i class="fa fa-credit-card-alt  fa-fw"></i>決済完了にする</a>
                        </li>
                        <li>
                            <a href="index.html"><i class="fa fa-rocket fa-fw"></i>国際EMS配送開始</a>
                        </li>
                        <li>
                            <a href="index.html"><i class="fa fa-truck fa-fw"></i>国内配送開始</a>
                        </li>  
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">国家別住所</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
				<div style="float:left; margin:10px;">
					<h1>
					<span class="label label-info"><span class="flag-icon flag-icon-us"></span>E 54Th St, Elmwood Park</span>
					</h1>
				</div>
				<div style="float:left; margin:10px;">
					<h1>
					<span class="label label-info"><span class="flag-icon flag-icon-de"></span>E 54Th St, Elmwood Park</span>
					</h1>
				</div>
				<div style="float:left; margin:10px;">
					<h1>
					<span class="label label-info"><span class="flag-icon flag-icon-cn"></span>E 54Th St, Elmwood Park</span>
					</h1>
				</div>
				<div style="float:left; margin:10px;">
					<h1>
					<span class="label label-info"><span class="flag-icon flag-icon-tw"></span>E 54Th St, Elmwood Park</span>
					</h1>				
				</div>
				<div style="float:left; margin:10px;">
					<h1>
					<span class="label label-info"><span class="flag-icon flag-icon-kr"></span>E 54Th St, Elmwood Park</span>
					</h1>
				</div>
            </div>
            <!-- /.row -->
			<div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">現在情報</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
				<div class="col-lg-3 col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-cart-arrow-down fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">26</div>
                                    <!-- <div>到着案内</div> -->
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                            	<span class="pull-right"><i class="fa fa-info-circle "></i></span>
                                <span class="pull-left">到着案内</span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-money fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">12</div>
                                    <!-- <div>決済要請</div> -->
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                            	<span class="pull-right"><i class="fa fa-info-circle "></i></span>
                                <span class="pull-left">決済要請</span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-plane fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">1</div>
                                    <!-- <div>配送中</div> -->
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                            	<span class="pull-right"><i class="fa fa-info-circle "></i></span>
                                <span class="pull-left">配送中</span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-red">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-smile-o fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">13</div>
                                    <!-- <div>配送済</div> -->
                                </div>
                            </div>
                        </div>
						<a href="#">
                            <div class="panel-footer">
                                <span class="pull-right"><i class="fa fa-info-circle "></i></span>
                                <span class="pull-left">配送済</span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->
</body>
</html>