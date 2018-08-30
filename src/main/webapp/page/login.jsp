<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<title>登录页面</title>
    <meta name="renderer" content="webkit">	
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">	
	<meta name="Author" content="larry" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">	
	<meta name="apple-mobile-web-app-capable" content="yes">	
	<meta name="format-detection" content="telephone=no">	
	<link rel="Shortcut Icon" href="../favicon.ico" />
	<link rel="stylesheet" type="text/css" href="../common/layui/css/layui.css" media="all">
	<link rel="stylesheet" type="text/css" href="../common/css/gobal.css" media="all">
	<link rel="stylesheet" type="text/css" href="../common/css/animate.css" media="all">
	<link rel="stylesheet" type="text/css" href="../common/css/login.css" media="all">
</head>
<body>
<div class="larry-main layui-layout animated shake larry-delay2" id="larry_login">
	<div class="title">精斗云APP</div>
	<p class="info">管理系统</p>
	<div class="user-info">
		<div class="avatar"><img src="../common/images/admin.png" alt=""></div>
		<form class="layui-form" id="larry_form" action="" method="post">
			 <div class="layui-form-item">
			 	  <label class="layui-form-label">用户名:</label>
			 	  <input type="text" name="username" required  lay-verify="required" autocomplete="off" class="layui-input larry-input" placeholder="请输入您的用户名">
			 </div>
			 <div class="layui-form-item" id="password">
			 	  <label class="layui-form-label">密码:</label>
			 	  <input type="password" name="password" required lay-verify="required|password" autocomplete="off" class="layui-input larry-input" placeholder="请输入您的登录密码">
			 </div>
			 <div class="layui-form-item">
			 	 <button class="layui-btn larry-btn" lay-filter="submit" lay-submit>立即登录</button>
			 </div>
		</form>
	</div>
	<div class="copy-right">© 2016-2018 精斗云 版权所有  <a href="http://www.jdy.com" target="_blank">www.jdy.com</a></div>
</div>
	<!-- 加载js文件-->
<script type="text/javascript" src="../common/layui/layui.js"></script> 
<script type="text/javascript" src="../common/js/gobal.js"></script>
<script type="text/javascript" src="../common/js/login.js"></script>
<script type="text/javascript" src="../common/lib/md5.js"></script>
<script type="text/javascript">
	layui.config({
		base: 'common/lib/'
	});
	
</script>
</body>
</html>