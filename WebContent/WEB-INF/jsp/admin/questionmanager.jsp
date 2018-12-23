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
                <a class="navbar-brand" href="index.html">题库管理</a>
            </div>
            <div style="text-align:center;">
             <h3><a href="#" >添加试卷</a></h3>
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
                        <h1 class="page-head-line">JAVA主导型题型</h1>
                    </div>
              </div>
                <div class="row">
                 <c:forEach var="paper" items="${ javalist }" >
                	  <div class="col-md-4 col-sm-4">
                	 	<div class="panel panel-default">
                        <div class="panel-heading">
                          <c:choose>
                          <c:when test="${paper.publish==false}">
                         	 <label class="publish"><a href="publishpaper?papername=${paper.name}&publish=true">&nbsp;&nbsp;未发布&nbsp;</a></label>
                          </c:when>
                          <c:otherwise>
                          	<label class="publish"><a href="publishpaper?papername=${paper.name}&publish=false">&nbsp;&nbsp;已发布&nbsp;</a></label>
                          </c:otherwise>
                          </c:choose>
                          <!-- 点击发布后要变为已发布 -->
                        </div>
                        <div class="panel-body">
                            <p>${paper.name} 试卷id：${paper.paperId}</p>
                        </div>
                        <div class="panel-footer">
                           	<li><a style="float:left;" href="showquestion?papername=${paper.name}">&nbsp;&nbsp;查看修改题目&nbsp;</a></li> 
                        </div>
                      </div>
					</div>
                </c:forEach>
            </div>
	        <c:forEach var="javapage" items="${ javapages }" >
				<li><a style="float:left;"href="showjavaonpaperbypage?pagenum=${javapage}">&nbsp;&nbsp;${javapage}&nbsp;</a></li>
			</c:forEach>
			
			
			
			
             <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">C++主导型题型</h1>
                    </div>
              </div>
                <div class="row">
                 <c:forEach var="paper" items="${ javalist }" >
                	  <div class="col-md-4 col-sm-4">
                	 	<div class="panel panel-warning"">
                        <div class="panel-heading">
                          	  <c:choose>
                          <c:when test="${paper.publish==false}">
                         	 <label class="publish"><a href="publishpaper?papername=${paper.name}&publish=true">&nbsp;&nbsp;未发布&nbsp;</a></label>
                          </c:when>
                          <c:otherwise>
                          	<label class="publish"><a href="publishpaper?papername=${paper.name}&publish=false">&nbsp;&nbsp;已发布&nbsp;</a></label>
                          </c:otherwise>
                          </c:choose>
                         </div>
                        <div class="panel-body">
                            <p>${paper.name}</p>
                        </div>
                        <div class="panel-footer">
                           	<li><a style="float:left;"href="#?pagenum=${paper.paperId}">&nbsp;&nbsp;查看修改题目&nbsp;</a></li> 
                        </div>
                      </div>
					</div>
                </c:forEach>
            </div>
	        <c:forEach var="javapage" items="${ javapages }" >
				<li><a style="float:left;"href="showjavaonpaperbypage?pagenum=${javapage}">&nbsp;&nbsp;${javapage}&nbsp;</a></li>
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
                          <c:choose>
                          <c:when test="${paper.publish==false}">
                         	 <label class="publish"><a href="publishpaper?papername=${paper.name}&publish=true">&nbsp;&nbsp;未发布&nbsp;</a></label>
                          </c:when>
                          <c:otherwise>
                          	<label class="publish"><a href="publishpaper?papername=${paper.name}&publish=false">&nbsp;&nbsp;已发布&nbsp;</a></label>
                          </c:otherwise>
                          </c:choose>
                        </div>
                        <div class="panel-body">
                            <p>${paper.name}</p>
                        </div>
                        <div class="panel-footer">
                           	<li><a style="float:left;"href="showjavapages?pagenum=${paper.paperId}">&nbsp;&nbsp;查看修改题目&nbsp;</a></li> 
                        </div>
                      </div>
					</div>
                </c:forEach>
            
	        <c:forEach var="javapage" items="${ javapages }" >
				<li><a style="float:left;"href="showjavaonpaperbypage?pagenum=${javapage}">&nbsp;&nbsp;${javapage}&nbsp;</a></li>
			</c:forEach>
                
                
                
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
	<script type="text/javascript">
		$(document).ready(function(){
			$(".publish").blur(function(){
				var paperid=$(".publish").text();
				if(paperid=='已发布'){
					$(".publish").text("未发布");
				}else{
					$(".publish").text("已发布");
				}
			});
			
		});
	</script>

</body>
</html>
