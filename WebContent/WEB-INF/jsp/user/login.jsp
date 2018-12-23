<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
    <title>Free Responsive Admin Theme - ZONTAL</title>
    <!-- BOOTSTRAP CORE STYLE  -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME ICONS  -->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLE  -->
    <link href="assets/css/style.css" rel="stylesheet" />
     <!-- HTML5 Shiv and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <header>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <strong>Email: </strong>info@yourdomain.com
                    &nbsp;&nbsp;
                    <strong>Support: </strong>+90-897-678-44
                </div>

            </div>
        </div>
    </header>
    <!-- HEADER END-->
    <div class="navbar navbar-inverse set-radius-zero">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" +>
					<h3>登录</h3>
                   <!--   <img src="assets/img/logo.png" />-->
                </a>

            </div>

            <div class="left-div">
                <i class="fa fa-user-plus login-icon" ></i>
        </div>
            </div>
        </div>
    <!-- LOGO HEADER END-->
   
    <!-- MENU SECTION END-->
    <div class="content-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h4 class="page-head-line">Please Login To Enter </h4>

                </div>

            </div>
            <div class="row">
                <div class="col-md-6">
                    <hr />
                    <br/>
                     <form method="post" action="checklogin">
                        <input type="text" id="name" class="form-control" name="name" placeholder="Enter  Name "/>
                        <br/>
                        <input type="password" id="password" class="form-control" name="password" placeholder="Enter Password"/>
                        <label id="pwdlabel" >${errorMsg}</label>
                        <hr />
                        <div style="text-align:center;">
                        	<button class="btn btn-info"  type="submit"><span class="glyphicon glyphicon-user"></span> &nbsp;Log Me In </button>&nbsp;
                        	<a href="regist" class="btn btn-info" ><span class="glyphicon glyphicon-user"></span> &nbsp;To Regist </a>
                        </div>
                     </form>
                </div>
                <div class="col-md-6">
                    <div class="alert alert-info">
                        本系统为编程类答题系统，主要面向的科目类型有，数据结构，c++，java，数据结构，linux等；
                        <br />
                         <strong> 注意事项：</strong>
                        <ul>
                            <li>
                                请注册账号进行登录，若有账号，请直接登录；
                            </li>
                            <li>
                               系统中会定期更新题库，可根据需要进行选择；
                            </li>
                            <li>
                                对于已近作答过的试卷可在历史浏览中进行查看；
                            </li>
                            <li>
                                对于资料修改可在个人中心中进行
                            </li>
                        </ul>
                       
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- CONTENT-WRAPPER SECTION END-->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-12" style="text-align: center;">
                    &copy; 2007-2018 tulunkeji | By : <a href="http://www.tulun1024.com/" target="_blank">图论官网</a>
                </div>

            </div>
        </div>
    </footer>
    <!-- FOOTER SECTION END-->
    <!-- JAVASCRIPT AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.11.1.js"></script>
    <!-- BOOTSTRAP SCRIPTS  -->
    <script src="assets/js/bootstrap.js"></script>
	<script type="text/javascript">
	
		$(document).ready(function(){
			/* 异步发送请求，在服务端验证用户名是否被占用过 */
			$("#name").blur(function(){
				$("#pwdlabel").text("");
			});
			$("#password").blur(function(){
				$("#pwdlabel").text("");
			});
		})
	</script>
</body>
</html>
