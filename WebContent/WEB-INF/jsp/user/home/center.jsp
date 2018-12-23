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
                <a class="navbar-brand" href="center">
					 <h3>在线答题</h3>
                   <!--  <img src="assets/img/logo.png" /> -->
                </a>

            </div>

            <div class="left-div">
                <div class="user-settings-wrapper">
                    <ul class="nav">

                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                                <span class="glyphicon glyphicon-user" style="font-size: 25px;"></span>
                            </a>
                            <div class="dropdown-menu dropdown-settings">
                                <div class="media">
                                    <a class="media-left" href="center">
                                        <!-- <img src="assets/img/64-64.jpg" alt="" class="img-rounded" /> -->
                                        <h3>在线答题</h3>
                                    </a>
                                    <div class="media-body">
                                        <h4 class="media-heading">Jhon Deo Alex </h4>
                                        <h5>Developer & Designer</h5>

                                    </div>
                                </div>
                                <hr />
                                <h5><strong>Personal Bio : </strong></h5>
                                Anim pariatur cliche reprehen derit.
                                <hr />
                                <a href="#" class="btn btn-info btn-sm">Full Profile</a>&nbsp; <a href="login.html" class="btn btn-danger btn-sm">Logout</a>

                            </div>
                        </li>


                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- LOGO HEADER END-->
    <section class="menu-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="navbar-collapse collapse ">
                        <ul id="menu-top" class="nav navbar-nav navbar-right">
                             <li><a  href="online">在线答题 </a></li>
                             <li><a href="history">历史浏览 </a></li>
                             <li><a class="menu-top-active" href="center">个人中心</a></li>
                             <li><a  href="login">下线</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- MENU SECTION END-->
    <div class="content-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h4 class="page-head-line">Center</h4>

                </div>

            </div>
           
           
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                      <div class="notice-board">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                         			  个人资料 
                                <div class="pull-right" >
                                    <!-- <div class="dropdown">
										        <button class="btn btn-success dropdown-toggle btn-xs" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
										    <span class="glyphicon glyphicon-cog"></span>
										    <span class="caret"></span>
										  </button>
										  <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
										    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">修改资料</a></li>
										  </ul>
									</div> -->
                                </div>
                            </div>
                            <div class="panel-body">
                               
                                <ul >
                                   
                                     <li>
                                     <span class="glyphicon glyphicon-align-left text-success" ></span> 
                                                                                                                    姓名：${name}
                                    </li>
                                     <li>
                                     <span class="glyphicon glyphicon-info-sign text-danger" ></span>  
                                          email：${email}
                                    </li>
                                </ul>
                            </div>
                            <div class="panel-footer">
                                <a href="#" class="btn btn-default btn-block"> <i class="glyphicon glyphicon-repeat"></i> 修改资料</a>
                            </div>
                        </div>
                    </div>
                    <hr />
                     
                    <hr />
                </div>
                
            </div>
        </div>
    </div>
    <!-- CONTENT-WRAPPER SECTION END-->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-12" style="text-align:center;">
                    &copy; 2015 YourCompany | By DesignBootstrap-More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
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
</body>
</html>
