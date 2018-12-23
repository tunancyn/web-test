<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
                <a class="navbar-brand" href="index.html">查看修改试卷</a>
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
                                查看修改试卷
                            <br />
                            </div>
                        </div>

                    </li>

                    <li>
                        <ul class="nav nav-second-level collapse in">
                            <li>
                                <a class="active-menu" href="questionmanage"><i class="fa fa-toggle-on"></i>题库管理</a>
                            </li>
                            <li>
                                <a href="usermanage"><i class="fa fa-bell "></i>用户管理</a>
                            </li>
                             <li>
                                <a href="wordsmanage"><i class="fa fa-circle-o "></i>留言管理</a>
                            </li>
                             <li>
                                <a href="buttons.html"><i class="fa fa-code "></i>Buttons</a>
                            </li>
                        </ul>
                    </li>
                     
                </ul>
            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">试卷</h1>
                        <h1 class="page-subhead-line">可进行试卷信息的查看和修改操作</h1>

                    </div>
                </div>
                <!-- /. ROW  -->
                <div class="row">
            <div class="col-md-12">
               <div class="panel panel-info">
                        <div class="panel-heading">
                           试卷名称：
                        </div>
                        <div class="panel-body">
                            <form role="form">
                                        <div class="form-group">
                                           Q:<input class="form-control" type="text" name="q1">
                                        </div>
                                        <div class="row form-group">
	                                        <div calss="col-md-3">
	                                          A:<input type="text"  name="q1">
	                                          B:<input type="text" name="q1"><br/>
	                                          C:<input type="text" name="q1">
	                                          D:<input type="text" name="q1">
	                                        </div>
                                        </div> 
                                        <!-- <div class="form-group">
                                            <textarea class="form-control" rows="3" name="q10"></textarea>
                                        </div>-->
                                 		<div style="text-align:center;">
                                        <button type="submit" class="btn btn-info">修改 </button>
                                        <!-- <button type="submit" href="questionmanage" class="btn btn-info">取消</button> -->
                                        </div> 

                                    </form>
                            </div>
                        </div>
                            </div>
             </div>
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
