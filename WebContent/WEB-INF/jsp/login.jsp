<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%  String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
		<base href="<%=basePath %>"/>
		<title>教务管理系统</title>
		<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="resources/css/font-awesome.min.css">
		<link rel="stylesheet" type="text/css" href="resources/css/login.css">
		<script type="text/javascript" src="resources/js/jquery-3.1.1.min.js"></script>
		<script type="text/javascript" src="resources/js/vector.js"></script>
		<script type="text/javascript" src="resources/js/login.js"></script> 
	</head>
	<body id="output" leftmargin="0" onload="changeImg()">
	<div id="container">
		<div class="main_bar"> 
			<div id="login_form">
				<div class="title">
					<div class="logo"><img src="resources/images/logo.jpg"></div><span style="display: inline-block;margin-left: 120px;">三峡大学教务管理系统&nbsp;<span style="font-size: 14px;">(版本号：v2.25.3)</span></span>
				</div>
				<form id="loginForm" action="student/toMain.do" method="post">
				<div id="form_widget">
					<br>
					<div class="psd" id="div_user">
						<span id="user_msg" class="msg" style="color: red;">${message}</span>
						<i class="icon-user psd-icon" id="user_icon"></i><input type="text" placeholder="请输入学工号" id="box_name" name="sid" class="txt" />
					</div>
					<br>
					<div class="psd" id="div_pwd">
						<span id="pwd_msg" class="msg"></span>
						<i class="icon-key psd-icon" id="pwd_icon"></i><input type="password" placeholder="请输入密码" id="box_pass" name="password" class="txt" />
						<i class="icon-eye-close judge-icon"></i>
					</div>
					<br>
					<div class="psd" id="div_code">
						<span id="code_msg" class="msg"></span>
						<i class="icon-exclamation-sign psd-icon" id="code_icon"></i>
						<input type="text" id="vcode" placeholder="验证码" />
					</div>
						<span id="code" title="看不清，换一张"></span>
					<div class="button_top">					
					<input id="submit_button" type="button" value="登录" class="btn" onmouseover="this.style.backgroundColor='#FF8D00'" onmouseout="this.style.backgroundColor='#FC5628'">
					<br>
					</div>
					
				</div>
				</form>
			</div>
		</div>
		<div id="footer" style="color: white;">
					<p><a href="#">关于我们</a>|<a href="#">联系方式</a>|<a href="#">广告合作</a>|<a href="#">法律声明</a>|<a href="#">免费注册</a> </p>
					 <span>Copyright 2001-2018 ChinaUnix.net All Rights Reserved 宜昌皓辰网域网络信息技术有限公司. 版权所有</span>
            		<p>鄂ICP证041476号 鄂ICP证060528号</p>
		</div>
		 <div class="cover">
    </div>
   <div id="ajaxLoad" class="showLoad">
         <div class="loadAll">
            <img src="resources/images/loading.gif">正在努力加载中，请稍候...</div>
    </div>
		</div> 
	</body>		
</html>

