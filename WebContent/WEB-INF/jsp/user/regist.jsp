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
                <a class="navbar-brand" href="login">
					<h3>返回登录界面</h3>
                   <!--  <img src="assets/img/logo.png" /> -->
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
                    <h4 class="page-head-line" style="text-align:center;">Please Regist To Enter </h4>

                </div>

            </div>
            <div class="row">
            	<div class="col-sm-6 col-sm-offset-3" style="text-align:center;" >
                    <hr />
                    <form class="from-contorl" method="post" action="userregist">
                        <input id="name" type="text" class="form-control" name="name" placeholder="Enter  Name "/>
                        <label id="namelabel"></label>
                        <input id="pwd" type="password" class="form-control" name="password" placeholder="Enter Password"/>
                        <label id="pwdlabel"></label>
                        <input id="repwd" type="password" class="form-control" name="repassword"  placeholder="Enter Password Again"/>
                        <label id="repwdlabel"></label>
                        <input id="email" type="email" class="form-control" name="email" placeholder="Enter Email"/>
                         <label id="emaillabel">${registMsg}</label>
                        <hr />
                        <button type ="submit" class="btn btn-info"><span class="glyphicon glyphicon-user"></span> &nbsp;Regist </button>
                        <!-- 使用ajax的alert弹出，激活消息已发送至邮箱，请从邮箱登录 -->
                     </form>
                </div>
            </div>
        </div>
    </div>
    <!-- CONTENT-WRAPPER SECTION END-->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-12" style="text-align:center;">
                   &copy; 2007-2018 tulunkeji | By : <a href="http://www.tulun1024.com/" target="_blank">图论官网</a>
                </div>

            </div>
        </div>
    </footer>
    <!-- FOOTER SECTION END-->
    <!-- JAVASCRIPT AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY SCRIPTS -->
    
    <!-- BOOTSTRAP SCRIPTS  -->
    <!-- <script src="assets/js/bootstrap.js"></script> 
    <script src="assets/js/jquery-1.11.1.js"></script>-->
    <script src="assets/js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript">
    	$(document).ready(function(){
    		$("#name").blur(function(){ 
    			$("#namelabel").text("正在服务器端验证...");
    			var name=$("#name").val();
    			if(name==null || name==""){
    				$("#namelabel").css("color", "red");
    				$("#namelabel").text("用户名不能为空，重新输入");return;
    			}
    			$.ajax({
    				url:"checkregist",
    				type:"post",
    				data:{name:name},
    				success: function(data){
    					/* out.println()输出字符串带回车换行，要去掉 */
    					data = data.replace("\r\n", "");
    					if(data == 'no'){
    						$("#namelabel").css("color", "green");
    						$("#namelabel").text("用户名可以使用");		
    					}else{
    						$("#namelabel").css("color", "red");
    						$("#namelabel").text("用户名已被占用，重新输入");	
    					}
    				},
    				error: function(data){
    					alert("ajax验证注册用的用户名失败!");
    				}
    			});
    		});
    		$("#pwd").blur(function(){
    			var pwd=$("#pwd").val();
    			if(pwd==null || pwd==""){
    				$("#pwdlabel").css("color", "red");
    				$("#pwdlabel").text("密码不能为空");
    			}else{
    				$("#pwdlabel").text("");
    			}
    		});
    		$("#repwd").blur(function(){
    			var pwd=$("#pwd").val();
    			var repwd=$("#repwd").val();
    			if(pwd!=repwd){
    				$("#repwdlabel").css("color", "red");
    				$("#repwdlabel").text("两次密码不一致，请重新输入");
    			}else{
    				$("#repwdlabel").text("");
    			}
    		});
    		$("#email").blur(function(){
    			var email=$("#email").val();
    			if(email==null || email==""){
    				$("#emaillabel").css("color", "red");
    				$("#emaillabel").text("邮箱输入不正确，请重新输入");
    			}else{
    				$("#emaillabel").text("");
    			}
    		})
    	});
    </script>
    
</body>
</html>
