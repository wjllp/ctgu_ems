<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%  String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath %>"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>英语等级报名</title>
<script type="text/javascript" src="resources/js/jquery-3.1.1.min.js"></script>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	width:100%;
	height:100%;
	background: url("resources/images/background_img.jpg")  0 -350px;
}
#navbar{
	font:bold 18px/20px "楷体";
	margin-left: 10px;
}
.content{
	width:300px;
	height: 40px;
	margin-left: 440px;
	margin-top: 5px;
	line-height: 40px;
}
.content .text{
	width:190px;
	height: 20px;
	border: 1px solid rgb(0,0,0,0.5);
	border-radius:5px;
	margin-left: 5px;
	overflow: hidden;
}
.btn{
	width:80px;
	height:30px;
	line-height:20px;
	font-size:16px;
	margin-left:450px;
	margin-top:15px;
	border:1px solid skyblue;
	background-color: skyblue;
	color:white;
	border-radius: 5px;
	cursor:pointer;
}
</style>

</head>
<body>
	<div>
		<p id="navbar">当前位置：各类报名>>英语四六级报名</p>
    </div>
    <form action="enroll/checkEroll.do" id= "enroll_form" method="post">
    	<h2 align="center">英 语 等 级 考 试 报 名 系 统</h2>
    	<div class="content" style="margin-left: 408px;margin-top: 60px;">
    		<span>身份证号:</span><input class="text" name="identify" type="text"/>
    	</div>
    	<div class="content">
    		<span>姓名:</span><input name="sname"  class="text" type="text"/>
    	</div>
    	<div class="content">
    		<span>类型:</span><select class="text" name="type">
		    					<option value="0">--请选择考试类型--</option>
								<option value="1">英语四六级</option>
								<option value="2">小语种</option>
		    				</select>
    	</div>
    	<div>
    		<input type="submit" class="btn" value="确定"/><input type="reset" class="btn" style="border:1px solid red; margin-left: 50px;background-color: red;" value="取消"/>
    	</div>
    </form>
</body>
</html>