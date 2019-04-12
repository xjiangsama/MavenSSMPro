<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<form role="form" action="user/login" method="post">
	  <div class="form-group">
	  	<div class="input-group input-group-sm">
		    <label for="name">账户</label>
		    <input type="text" class="form-control" name="username" placeholder="请输入用户名">
	    </div>
	  </div>
	  <div class="form-group">
	  	<div class="input-group input-group-sm">
		    <label for="name">密码</label>
		    <input type="password" class="form-control" name="password" placeholder="请输入密码">
	    </div>
	  </div>
	  <button type="submit" class="btn btn-default">提交</button>
	</form>
</body>
</html>