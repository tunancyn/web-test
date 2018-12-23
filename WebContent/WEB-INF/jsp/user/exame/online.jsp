<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                <a class="navbar-brand" href="index.html">

                    <img src="assets/img/logo.png" />
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
                                    <a class="media-left" href="#">
                                        <img src="assets/img/64-64.jpg" alt="" class="img-rounded" />
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
                             <li><a class="menu-top-active" href="login">在线答题 </a></li>
                             <li><a href="history">历史浏览 </a></li>
                             <li><a href="center">个人中心</a></li>
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
                        <h1 class="page-head-line">JAVA主导型题型</h1>
                    </div>
              </div>
                <div class="row">
                 <c:forEach var="paper" items="${ javalist }" >
                	  <div class="col-md-4 col-sm-4">
                	 	<div class="panel panel-default">
                        <div class="panel-heading">
                          	   ${paper.name}
                        </div>
                        <div class="panel-body">
                            <p>试题以java为主</p>
                        </div>
                        <div class="panel-footer">
                           	<li><a style="float:left;" href="javaquestion?pagenum=${paper.paperId}">&nbsp;&nbsp;开始答题&nbsp;</a></li> 
                        </div>
                      </div>
					</div>
                </c:forEach>
            </div>
	        <c:forEach var="javapage" items="${ javapages }" >
				<li><a style="float:left;"href="showjavaonline?pagenum=${javapage}">&nbsp;&nbsp;${javapage}&nbsp;</a></li>
			</c:forEach>
			
			
			
			
             <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">C++主导型题型</h1>
                    </div>
              </div>
                <div class="row">
                 <c:forEach var="paper" items="${ javalist }" >
                	  <div class="col-md-4 col-sm-4">
                	 	<div class="panel panel-primary">
                        <div class="panel-heading">
                          	   ${paper.name}
                        </div>
                        <div class="panel-body">
                            <p>试题以C++为主</p>
                        </div>
                        <div class="panel-footer">
                           	<li><a style="float:left;"href="#?pagenum=${paper.paperId}">&nbsp;&nbsp;开始答题&nbsp;</a></li> 
                        </div>
                      </div>
					</div>
                </c:forEach>
            </div>
	        <c:forEach var="javapage" items="${ javapages }" >
				<li><a style="float:left;"href="showjavaonline?pagenum=${javapage}">&nbsp;&nbsp;${javapage}&nbsp;</a></li>
			</c:forEach>
			
			
            
             <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">数据结构主导型题型</h1>
                    </div>
              </div>
               <c:forEach var="paper" items="${ javalist }" >
                	  <div class="col-md-4 col-sm-4">
                	 	<div class="panel panel-success">
                        <div class="panel-heading">
                          	   ${paper.name}
                        </div>
                        <div class="panel-body">
                            <p>试题以数据结构为主</p>
                        </div>
                        <div class="panel-footer">
                           	<li><a style="float:left;"href="showjavapages?pagenum=${paper.paperId}">&nbsp;&nbsp;开始答题&nbsp;</a></li> 
                        </div>
                      </div>
					</div>
                </c:forEach>
            
	        <c:forEach var="javapage" items="${ javapages }" >
				<li><a style="float:left;"href="showjavaonline?pagenum=${javapage}">&nbsp;&nbsp;${javapage}&nbsp;</a></li>
			</c:forEach>
		</div>
     </div>
             
    <!-- CONTENT-WRAPPER SECTION END-->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-12" style="text-align:center;">
                    &copy; 2015 YourCompany | By : <a href="http://www.designbootstrap.com/" target="_blank">DesignBootstrap</a>
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
