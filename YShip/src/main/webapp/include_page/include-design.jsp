<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
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
<script type="text/javascript">
$(document).ready(function(){
    $("#initialization").on("click", function(e){ //initialization Button
        e.preventDefault();
        fn_initialization();
    });
});
 
function fn_initialization(){
    var comSubmit = new ComSubmit();
    comSubmit.setUrl("<c:url value='/initialization.do' />");
    comSubmit.submit();
}
</script>
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
                <a class="navbar-brand" href="mypage.do"><i class="fa fa-y-combinator  fa-fw"></i> Y!Ship Demo</a>
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
                                    <a href="#applyForm" id="applyForm"><i class="fa fa-shopping-basket fa-fw"></i>申請する</a>
                                </li>
                                <li>
                                    <a href="#applyhistory" id="applyhistory"><i class="fa fa-history fa-fw"></i>申請履歴</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#this" id="initialization"><i class="fa fa-flask fa-fw"></i><font color="#d9534f">初期状態にする</font></a>
                        </li>  
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <div id="page-wrapper">
			<!-- Inner Page -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->
</body>
</html>