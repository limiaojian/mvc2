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
	<link rel="stylesheet" type="text/css" href="../common/layui/css/layui.css" media="all">
    <link rel="stylesheet" type="text/css" href="../common/css/gobal.css" media="all">
    <link rel="stylesheet" type="text/css" href="../common/css/animate.css" media="all">
    <link rel="stylesheet" type="text/css" href="../common/css/common.css" media="all">
    <link rel="stylesheet" type="text/css" href="../common/css/user.css" media="all">
</head>
</head>
<body>
<div class="layui-fluid larry-wrapper">
    <div class="layui-row  animated bounceIn">
    	<div class="layui-col-lg12 layui-col-md12 layui-col-sm12 layui-col-xs12">
            <div class="layui-btn-group larry-group" id="larry_group">
                <button class="layui-btn"  data-type="add"><i class="layui-icon">&#xe61f;</i><cite>新增</cite></button>
            </div>
    	</div>

    	<div class="layui-col-lg10 layui-col-md10 layui-col-sm12 layui-col-xs12">
    		<div class="user-tables">
    			<table id="userTables" lay-filter="userTables"></table>
    		</div>
    	</div>
    </div>
</div>
<script type="text/html" id="userbar">
  <a class="layui-btn layui-btn-sm" lay-event="edit">编辑</a>
  <a class="layui-btn layui-btn-danger layui-btn-sm" lay-event="del">删除</a>
</script>

<!-- 加载js文件 -->
<script type="text/javascript" src="../common/layui/layui.js"></script> 
<script type="text/javascript" src="../common/js/common.js"></script> 
<script type="text/javascript" src="../common/js/user.js"></script> 
<script type="text/javascript">
	layui.config({
		base: '/common/lib/'
	});
</script>
</body>
</html>