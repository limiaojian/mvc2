<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<title>用户管理</title>
	<meta name="renderer" content="webkit">	
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">	
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">	
	<meta name="apple-mobile-web-app-capable" content="yes">	
	<meta name="format-detection" content="telephone=no">	
	<link rel="Shortcut Icon" href="/favicon.ico" />
	<!-- load css -->
	<link rel="stylesheet" type="text/css" href="../common/layui/css/layui.css" media="all">
    <link rel="stylesheet" type="text/css" href="../common/css/gobal.css" media="all">
    <link rel="stylesheet" type="text/css" href="../common/css/common.css" media="all">
    <link rel="stylesheet" type="text/css" href="../common/css/flink.css" media="all">
</head>
<style type="text/css" media="screen">
	.larry-tj{
		margin-left: 10px;
		margin-right: 25px;
	}
	.larry-btn-btn{
		width: 230px;
		padding-top: 10px;
		margin: 0 auto;
	}
	.layui-form .layui-form-label{
		padding-left: 15px;
		color: #666666;
	}
	.layui-form .layui-input-block{
		width: 300px;
	}
	.layui-form .layui-input-block input,.layui-form .layui-input-block textarea{
		color: #aaaaaa;
	}
</style>
<body>
<div class="layui-fluid larry-wrapper">
  	<form class="layui-form">
  		<input type="hidden" name="id" value="${user.id}">
		<div class="layui-form-item">
			<label class="layui-form-label">用户名</label>
			<div class="layui-input-block">
				<input type="text" name="username" value="${user.username}" class="layui-input linksName" lay-verify="required" placeholder="请输入用户名">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">密码</label>
			<div class="layui-input-block">
				<input type="password" name="password" value="${user.password}" class="layui-input" lay-verify="required" placeholder="请输入密码">
			</div>
		</div>
		<div class="layui-form-item larry-btn-btn">
				<button class="layui-btn larry-tj" lay-submit lay-filter="add">立即提交</button>
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
		</div>
	</form>
</div>

<!-- 加载js文件 -->
<script type="text/javascript" src="../common/layui/layui.js"></script> 
<script type="text/javascript" src="../common/js/common.js"></script>
<script type="text/javascript" src="../common/lib/md5.js"></script>
<script type="text/javascript">
	
	layui.config({
		base:'/common/lib/'
	});

	layui.use(['form','layer','jquery'],function(){
		   var $ = layui.$,
		   form = layui.form,
		   layer = layui.layer;
		   
		   form.on('submit(add)',function(data){
				data.field.password = hex_md5(data.field.password);
		     	var ajaxReturnData;
		        //登陆验证
		        $.ajax({
		            url: '/user/save',
		            type: 'post',
		            async: false,
		            data: data.field,
		            success: function (data) {
		                ajaxReturnData = data;
		            }
		        });
		        //结果回应
		        if (ajaxReturnData == '0') {
		        	top.layer.msg('保存成功', {icon: 1});
		            var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
		            parent.layer.close(index); //再执行关闭                        //刷新父页面
		            parent.location.reload();
		        } else {
		        	top.layer.msg('保存失败', {icon: 5});
		        }
		        return false;
		   });
		});
</script>
</body>
</html>