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
                <a class="navbar-brand">用户管理</a>
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
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">用户信息管理</h1>
                        <h1 class="page-subhead-line">对于用户信息，管理员可进行删除或修改</h1>

                    </div>
                </div>
               
                <!-- /. ROW  -->
                 <div class="row">
                   <div class="col-md-12">
                       <div class="panel panel-primary">
      <!-- Default panel contents -->
      <div class="panel-heading">所有用户信息</div>

      <!-- Table -->
     <table class="table table-striped">
					<thead>
						<tr>
							<th>编号</th>
							<th>姓名</th>
							<th>密码</th>
							<th>邮箱</th>
							<th>状态</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="user" items="${ userlist }" >
						<tr>
							<th>${user.userId}</th>
							<th>${user.name}</th>
							<th>${user.password}</th>
							<th>${user.email}</th>
							<th>${user.active}</th>
							<th><a href="modifyuser?name=${user.name}&pwd=${user.password}&email=${user.email}&active=${user.active}">&nbsp;修改&nbsp;</a>
							<a href="deletuser?username=${user.name}">&nbsp;删除&nbsp;</a>
							<!-- http://localhost/exameonline/modifyuser?name=zhang%20san&pwd=111&email=&active= -->
							 </th>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			<c:forEach var="userpage" items="${ userpages }" >
			<a style="float:left;"href="showjavauserbypage?pagenum=${userpage}">&nbsp;&nbsp;${userpage}&nbsp;</a>
			</c:forEach>
     </div>
                   </div>
                     </div>
            </div>
            <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
    <!-- /. WRAPPER  -->
    <div id="footer-sec">
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


</body>
</html>
