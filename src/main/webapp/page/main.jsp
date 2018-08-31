<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<title>后台首页</title>
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
	<link rel="stylesheet" type="text/css" href="../common/css/main.css" media="all">
</head>
</head>
<body>
<div class="layui-fluid larry-wrapper">
	<div class="layui-row layui-col-space20 larry-shortcut" id="shortcut">
		<div class="layui-col-xs12 layui-col-sm6 layui-col-md4 layui-col-lg2 larry-col">
            <section class="panel pos-r larry-ico-rotate">
            	<div class="inline-block layui-bg-green larry-ico"><i class="larry-icon">&#xe641;</i></div>
            	<div class="inline-block right-value">
            		<a data-href="/user/personInfo.do">
                        <h3 class="no-count">个人信息</h3>
            		</a>
            	</div>
            </section>
		</div>
		<div class="layui-col-xs12 layui-col-sm6 layui-col-md4 layui-col-lg2 larry-col">
            <section class="panel pos-r larry-ico-rotate">
            	<div class="inline-block layui-bg-red larry-ico"><i class="larry-icon">&#xe70b;</i></div>
            	<div class="inline-block right-value">
            		<a data-href="/user/list.do">
                        <h3 class="no-count">用户管理</h3>
            		</a>
            	</div>
            </section>
		</div>
		<div class="layui-col-xs12 layui-col-sm6 layui-col-md4 layui-col-lg2 larry-col">
            <section class="panel pos-r larry-ico-rotate">
            	<div class="inline-block layui-bg-blue larry-ico"><i class="larry-icon">&#xe6d2;</i></div>
            	<div class="inline-block right-value">
            		<a data-href="/role/list.do">
            			<h3 class="no-count">角色管理</h3>
            		</a>
            	</div>
            </section>
		</div>
		<div class="layui-col-xs12 layui-col-sm6 layui-col-md4 layui-col-lg2 larry-col">
            <section class="panel pos-r larry-ico-rotate">
            	<div class="inline-block layui-bg-pale larry-ico"><i class="larry-icon">&#xe6e2;</i></div>
            	<div class="inline-block right-value">
            		<a data-href="/menu/list.do">
                        <h3 class="no-count">菜单管理</h3>
            		</a>
            	</div>
            </section>
		</div>
		<div class="layui-col-xs12 layui-col-sm6 layui-col-md4 layui-col-lg2 larry-col">
            <section class="panel pos-r larry-ico-rotate">
            	<div class="inline-block layui-bg-orange larry-ico"><i class="larry-icon">&#xe8a0;</i></div>
            	<div class="inline-block right-value">
            		<a data-href="/friendLink/list.do">
            			<h3 class="no-count">友链管理</h3>
            		</a>
            	</div>
            </section>
		</div>
		<div class="layui-col-xs12 layui-col-sm6 layui-col-md4 layui-col-lg2 larry-col">
            <section class="panel pos-r larry-ico-rotate">
                <div class="inline-block layui-bg-red larry-ico"><i class="larry-icon">&#xe82b;</i></div>
                <div class="inline-block right-value">
                    <a data-href="/systemDoc/four.do">
                        <h3 class="no-count">404页面</h3>
                    </a>
                </div>
            </section>
        </div>
	</div>
	<div class="layui-row layui-col-space20">
		<div class="layui-col-xs12 layui-col-sm12 layui-col-md6 layui-col-lg6">
			<section class="larry-panel">
				<div class="larry-panel-header">
                    <div class="larry-panel-title inline-block">OneManage更新日志</div>
                    <div class="tools inline-block fr down"><i class="larry-icon">&#xe93a;</i></div>
                </div>
                <div class="larry-panel-body">
                    <ul class="layui-timeline">
                    
                        <li class="layui-timeline-item">
                          <i class="layui-icon layui-timeline-axis">&#xe756;</i>
                          <div class="layui-timeline-content layui-text">
                            <div class="layui-timeline-title"><h3 class="layui-timeline-title">2016-12-31 OneManage首个版本面世。</h3></div>
                          	<ul>
                                    <li>
                                        首个由One源码官方出品的一款基于SpringMVC +Spring +Mybatis + LarryCMS + Layui的通用后台管理系统。
                                    </li>
                                    <li>
                                        系统具备了用户管理，角色管理，菜单管理等基本功能，可以在此基础上进行二次开发。
                                    </li>
                                    <li>
				首个版本在2017年的最后一天上线，也将在2018年不断的更新版本，希望大家喜欢。
                                    </li>
                                </ul>
                          </div>
                        </li>
                        <li class="layui-timeline-item">
                          <i class="layui-icon layui-anim layui-anim-rotate layui-anim-loop layui-timeline-axis"></i>
                          <div class="layui-timeline-content layui-text">
                            <div class="layui-timeline-title">更久以前，在学习并在项目中使用了LarryCMS和Layui</div>
                          </div>
                        </li>
                    </ul>
                </div>
			</section>
		</div>
		
		<div class="layui-col-xs12 layui-col-sm12 layui-col-md6 layui-col-lg6">
			<section class="larry-panel">
                <div class="larry-panel-header">
                    <div class="larry-panel-title inline-block">系统概览</div>
                    <div class="tools inline-block fr down"><i class="larry-icon">&#xe93a;</i></div>
                </div>
                <div class="larry-panel-body">
                    <div class="larry-table">
                        <table class="layui-table larry-table-info">
                            <colgroup>                
                                <col width="150">                
                                <col>
                            </colgroup>
                            <tbody>
                                <tr>
                                    <td><span class="tit">系统名称:</span></td>
                                    <td><span class="info">OneManage</span></td>
                                </tr>
                                <tr>
                                    <td><span class="tit">版本信息:</span></td>
                                    <td><span class="info iframe"> OneManage v1.0.0</span></td>
                                </tr>
                                <tr>
                                    <td><span class="tit">开发作者:</span></td>
                                    <td>One源码</td>
                                </tr>
                                <tr>
                                    <td><span class="tit">官网地址:</span></td>
                                    <td><span class="info"><a href="http://www.y-one.cn" class="official" target="_blank">http://www.y-one.cn</a></span></td>
                                </tr>
                                
                                <tr>
                                    <td><span class="tit">服务器环境:</span></td>
                                    <td>Linux + Tomcat 7.0 + MySQL5.7 </td>
                                </tr>
                                <tr>
                                    <td><span class="tit">系统源码下载:</span></td>
                                    <td>
                                    	<a href="http://www.y-one.cn/code/ac4fcacc04224a71b8b49a5e683e88fb.html" class="official" target="_blank">OneManage管理系统</a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </section>
		</div>
        <!-- 数据统计 -->
        <div class="layui-col-xs12 layui-col-sm12 layui-col-md6 layui-col-lg6">
            <section class="larry-panel">
                <div class="larry-panel-header">
                    <div class="larry-panel-title inline-block">数据统计</div>
                    <div class="tools inline-block fr down"><i class="larry-icon">&#xe93a;</i></div>
                </div>
                <div class="larry-panel-body">
                    <div class="larry-seo-stats" id="larry_counts"></div>
                </div>
            </section>
        </div>
        <!-- 系统公告 -->
        <div class="layui-col-xs12 layui-col-sm12 layui-col-md6 layui-col-lg6">
            <section class="larry-panel">
                <div class="larry-panel-header">
                    <div class="larry-panel-title inline-block">系统公告</div>
                    <div class="tools inline-block fr down"><i class="larry-icon">&#xe93a;</i></div>
                </div>
                <div class="larry-panel-body layrr-document">
                    <fieldset class="layui-elem-field content">
                        <legend>后续版本更新计划</legend>
                        <div class="layui-field-box">
                            <p>
                                整体的SSM后台管理框架功能已经初具雏形，前端界面风格采用了结构简单、性能优良、页面美观大气的LarryCMS页面展示框架后续将不断的更新版本，加一些常用的功能，比如安全权限框架shiro,代码生成器等功能。
                                感谢大家的关注和支持！<br>点这里访问：<a href="http://www.y-one.cn" target="_blank">ONE源码官网</a><br>
                                <hr class="layui-bg-orange">
                                <span style="color:#FF5722; ">关于框架，大家可以加群讨论：<a target="_blank" href="//shang.qq.com/wpa/qunwpa?idkey=9570e8b276e68968e472abb6895219215ad35eefc1d769ad207b51f19dbbfa88"><img border="0" src="//pub.idqqimg.com/wpa/images/group.png" alt="ONE源码官方群" title="ONE源码官方群"></a>
                            </p>
                        </div>
                    </fieldset>
                </div>
            </section>
        </div>
	</div>
</div>
<!-- 加载js文件 -->
<script type="text/javascript" src="../common/layui/layui.js"></script> 
<script type="text/javascript" src="../common/js/common.js"></script> 
<script type="text/javascript" src="../common/js/main.js"></script> 
<!--[if lt IE 9]>
  <script src="/common/js/html5.min.js"></script>
  <script src="/common/js/respond.min.js"></script>
<![endif]-->
<script type="text/javascript">
	layui.config({
		base: '/common/lib/'
	});
	
</script>
</body>
</html>