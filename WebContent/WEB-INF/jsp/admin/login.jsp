<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>登录</title>

<!-- BOOTSTRAP STYLES-->
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<!-- FONTAWESOME STYLES-->
<link href="assets/css/font-awesome.css" rel="stylesheet" />
<!-- GOOGLE FONTS-->
<link href='https://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />

</head>
<body style="background-color: #E2E2E2;">
	<div class="container">
		<div class="row text-center " style="padding-top: 100px;">
			<div class="col-md-12">
				<img src="assets/img/logo-invoice.png" />
			</div>
		</div>
		<div class="row ">

			<div
				class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">

				<div class="panel-body">
					<form role="form" method="post" action="adminlogin">
						<hr />
						<h5>Enter Details to Login</h5>
						<br />
						<div class="form-group input-group">
							<span class="input-group-addon"><i class="fa fa-tag"></i></span>
							<input type="text" class="form-control" name="name"
								placeholder="Your Username " />
						</div>
						<div class="form-group input-group">
							<span class="input-group-addon"><i class="fa fa-lock"></i></span>
							<input type="password" class="form-control" name="pwd"
								placeholder="Your Password" />
						</div>
						<div class="form-group">
							<label class="checkbox-inline"> <input type="checkbox" />
								Remember me
							</label>
						</div>
						
						<input type="submit" class="form-control btn btn-primary" value="Login Now" > 

						<hr />
						<span> <a href="register">Register</a>
						</span>
						<span class="pull-right"> <a href="forgetpwd">Forget
									password ? </a>
						</span>
					</form>
				</div>

			</div>


		</div>
	</div>

</body>
</html>
