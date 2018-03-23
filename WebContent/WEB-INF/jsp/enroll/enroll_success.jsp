<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%  String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <base href="<%=basePath %>"/>
    <meta name="Keywords" content="关键字,关键词">
    <meta name="Description" content="描述和简介">
    <script type="text/javascript" src="resources/js/jquery-3.1.1.min.js"></script>
    <title>Title</title>
    <style type="text/css">
        *{margin:0;padding:0;}
        body,ul,li,ol,dl,dd,p,h1,h2,h3,h4,h5,h6{ margin:0;}
        a{text-decoration:none;}
        img{border:none;}
        ol,ul{list-style:none;}
        body {
	margin: 0;
	padding: 0;
	width:100%;
	height:100%;
	background: url("resources/images/background_img.jpg")  0 -350px;
}
        .cover {
            position: fixed;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            z-index: 99;
            width: 100%;
            height: 100%;
            opacity:0.2;
            padding: 0 20px 0 0;
            background: #f6f4f5;
        }
        .show
        {
            position: fixed;
            top: 20%;
            left: 42%;
            z-index: 100;
            margin-left: -80px;
        }
        .show  .panel
        {
            width: 450px;
            height: 280px;
            line-height: 50px;
            border: 2px solid rgb(0,155,255);
            border-radius: 10px;
            background: #fff;
        }
        .show  .panel img
        {
            margin: 30px 0 0 165px;
        }
        .show  .panel p{
        	height:30px;
            font-size: 14px;
            line-height:30px;
            color: rgba(0,0,0,0.6);
            margin-left: 75px;
        }
        .show  .panel > span{
        	display:inline-block;
        	width:180px;
        	height:30px;
        	margin-left:140px;
        	font-size: 20px;
        	line-height:20px;
        	/* color: rgba(32,161,249,0.79); */
        }
        .show  .panel p span{
        	color: rgba(32,161,249,0.79);
        	font-size: 16px;
        }
        .show  .panel a{
            margin-left: 170px;
            width: 85px;
            height: 35px;
            font-size: 16px;
            text-align: center;
            line-height: 35px;
            border-radius: 5px;
            background-color: rgba(24,97,249,0.79);
            color: white;
            display: inline-block;
        }
        #state{
        	margin-left: 180px;
        }
	</style>
</head>
<body>
    <div class="cover"></div>
    <div  class="show">
        <div class="panel">
            <img src="resources/images/right.png"/>
            <p><span id="span_state" class="state">恭喜你！</span><span>${sessionScope.STUDENT_SESSION_KEY.sname}</span>同学，你的
                <span>四六级报名</span></p>
                <span id="state" class="state">报名成功！</span><br>
            <a  href="enroll/toEnroll.do">返回</a>
        </div>
    </div>
    <script>
    
    </script>
</body>
</html>