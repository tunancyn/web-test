<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>模板之家</title>

    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!--CUSTOM BASIC STYLES-->
    <link href="assets/css/basic.css" rel="stylesheet" />
    <!--CUSTOM MAIN STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand">用户信息修改</a>
            </div>
        </nav>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li>
                        <div class="user-img-div">
                            <img src="assets/img/user.png" class="img-thumbnail" />

                            <div class="inner-text">
                                管理员
                            <br />
                            </div>
                        </div>

                    </li>
				</ul>

                     <li>
                         <ul class="nav nav-second-level collapse in">
                           <li>
                                <a href="questionmanage"><i class="fa fa-toggle-on"></i>题库管理</a>
                            </li>
                            <li>
                                <a class="active-menu" href="usermanage"><i class="fa fa-bell "></i>用户管理</a>
                            </li>
                             <li>
                                <a href="wordsmanage"><i class="fa fa-circle-o "></i>留言管理</a>
                            </li>
                             <li>
                                <a href="buttons.html"><i class="fa fa-code "></i>Buttons</a>
                            </li>
                        </ul>
                    </li>
            </div>

        </nav>
        <div id="page-wrapper">
            <div id="page-inner">
                <!-- /. ROW  -->
                 <div class="row">
                   <div class="col-md-12">
                       <div class="panel panel-primary">
      <!-- Default panel contents -->
        <div class="panel-heading">修改用户信息</div>
			<div class="col-md-12">
			<form role="form" method="get" action="modify">
				<div class="col-sm-4 col-sm-offset-4">
					<br/>
					<div class="form-group form-inline">
						姓名: <input id="name" type="text" value="${name}" name="name" class="form-control">
					</div>
					<div class="form-group form-inline">
						密码: <input id="pwd" type="text" value="${pwd}" name="pwd" class="form-control">
					</div>
					<div class="form-group form-inline">
						邮箱: <input id="email" type="text" value="${email}" name="email" class="form-control">
					</div>
					<div class="form-group form-inline">
						状态: <input id="active" type="text" value="${active}" name="active" class="form-control">
					</div>
					<div class="form-group">
						<label class="errmsg" style="color: red;">${errmsg}</label>
					</div>
					<div class="row">
						<div class="col-sm-offset-4">
							<input type="submit" class="btn btn-primary" value="修改">
							<a href="usermanage"><input type="button" class="btn btn-primary" value="返回"></a>
						</div>
					</div>
				</div>
			</form>
      </div>
                   </div>
                     </div>
            </div>
            <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
    <!-- /. WRAPPER  -->
    <div id="footer-sec" style="text-align:center;">
        Copyright &copy; 2016.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
    </div>
    <!-- /. FOOTER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
    <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#name").focus(function(){
				$(".errmsg").text("");
			});
			$("#pwd").focus(function(){
				$(".errmsg").text("");
			});
		});
	</script>

</body>
</html>
