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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	width:100%;
	height:100%;
	background: url("resources/images/background_img.jpg")  0 -350px;
}
.table{
	width:75%;
	margin: 5px 150px;
}
.table th {
	background-color:#00A5FF;
	color:#FFFFFF
}
.table,.table th,.table td
{
	font-size:0.95em;
	text-align:center;
	padding:4px;
	border:1px solid #dddddd;
	border-collapse:collapse
}
.table tr:nth-child(odd){
	background-color:#aae1fe;
}
.table tr:nth-child(even){
	background-color:#fdfdfd;
}
a{
	text-decoration: none;
	color:inherit;
	 
}
span {
	height:20px;
	width:100px;
	color: red;
	line-height:20px;
	font-size: 16px;
	display: inline-block;
	margin: 10px 0 0 150px;
}
#navbar{
	font:bold 18px/20px "楷体";
	margin-left: 10px;
}
</style>
</head>
<body>
	<div>
		<p id="navbar">当前位置：个人中心>>已选课程</p>
	</div>
	<% String []arry = new String[50]; 
     	arry[0] = "";
     	arry[10] = "星期一(1-2节)";
     	arry[11] = "星期一(3-4节)";
     	arry[12] = "星期一(5-6节)";
     	arry[13] = "星期一(7-8节)";
     	arry[14] = "星期一(9-10节)";
     	arry[15] = "星期二(1-2节)";
     	arry[16] = "星期二(3-4节)";
     	arry[17] = "星期二(5-6节)";
     	arry[18] = "星期二(7-8节)";
     	arry[19] = "星期二(9-10节)";
     	arry[20] = "星期三(1-2节)";
     	arry[21] = "星期三(3-4节)";
     	arry[22] = "星期三(5-6节)";
     	arry[23] = "星期三(7-8节)";
     	arry[24] = "星期三(9-10节)";
     	arry[25] = "星期四(1-2节)";
     	arry[26] = "星期四(3-4节)";
     	arry[27] = "星期四(9-10节)";
     	arry[28] = "星期五(1-2节)";
     	arry[29] = "星期五(3-4节)";
     	arry[30] = "星期五(5-6节)";
     	arry[31] = "星期五(7-8节)";
     	arry[32] = "星期五(9-10节)";
     	arry[33] = "星期六(1-2节)";
     	arry[34] = "星期六(3-4节)";
     	arry[35] = "星期六(5-6节)";
     	arry[36] = "星期六(7-8节)";
     	arry[37] = "星期六(9-10节)";
     	arry[38] = "星期日(1-2节)";
     	arry[39] = "星期日(3-4节)";
     	arry[40] = "星期日(5-6节)";
     	arry[41] = "星期日(7-8节)";
     	arry[42] = "星期日(9-10节)";
     %>
     <span style="">${msg}</span>
	<table class="table">
		<tr>
			<th>班级</th>
			<th>课程名称</th>
			<th>教师名称</th>
			<th>教室</th>
			<th>上课时间</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${listCourse}" var="list">
			<tr>
			<c:set var="time" value="${list.time }" scope="session"/>
			<td>${list.classid}班</td>
			<td>${list.cname}</td>
			<td>${list.tname}</td>
			<td>${list.classroom}</td>
			<td>${list.sweek }-${list.eweek}周<%=arry[Integer.parseInt(session.getAttribute("time").toString())/100] %>
			<%=arry[Integer.parseInt(session.getAttribute("time").toString())%100] %></td>
			<td><a onclick="return confirm('是否要退课？')"  href="select_course/cancel_selectCourse.do?classid=${list.classid}&sid=${sessionScope.STUDENT_SESSION_KEY.sid}">退课</a></td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>