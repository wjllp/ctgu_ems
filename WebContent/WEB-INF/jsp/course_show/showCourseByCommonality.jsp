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
.table {
	float:left;
	width:30%;
	margin:15px 10px;
}
.table1{
	float:left;
	width:65%;
	margin: 15px 10px;
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
#navbar{
	font:bold 18px/20px "楷体";
	margin-left: 10px;
}
</style>
</head>
<body>
	<div>
		
     	<p id="navbar">当前位置：学生选课>>全校公共选修课</p>
     </div>
     <table class="table">
     	<tr >
     		<th>课程编号</th>
     		<th>课程名称</th>
     		<th>操作</th>
     	</tr>
     	<c:forEach items="${list}" var="course">
     		<tr>
     			<td>${course.cid }</td>
     			<td>${course.cname}</td>
     			<td><a href="show_course/classMsgByCommonality.do?cname=${course.cname }&college=所有学院">选取</a></td>
     		</tr>
     	</c:forEach>
     </table>
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
     <table class="table table1">
     	<tr >
     		<th>班级</th>
     		<th>课程名称</th>
     		<th>教师</th>
     		<th>教室</th>
     		<th>上课时间</th>
     		<th>人数限制</th>
     		<th>已选人数</th>
     		<th>操作</th>
     	</tr>
     	<c:forEach items="${list1}" var="course1">
     		<tr>
     			<c:set var="time" value="${course1.time}" scope="session"/><!--通过中间变量time来获取el表达式的值，用来再嵌入的java代码中使用  -->
     			<td>${course1.classid }班</td>
     			<td>${course1.cname}</td>
     			<td>${course1.tname }</td>
     			<td>${course1.classroom}</td>
     			<td>${course1.sweek }-${course1.eweek }周  <%=arry[Integer.parseInt(session.getAttribute("time").toString())/100] %> 
     			 <%=arry[Integer.parseInt(session.getAttribute("time").toString())%100] %></td>
     			<td>${course1.confine}</td>
     			<td>${course1.number}</td>
     			<td><a href="select_course/selectCourses.do?classid=${course1.classid }&sid=${sessionScope.STUDENT_SESSION_KEY.sid}&time=${course1.time }&courseURL=show_course/classMsgByCommonality.do">选取</a></td>
     		</tr>
     	</c:forEach>
     </table>
</body>
</html>