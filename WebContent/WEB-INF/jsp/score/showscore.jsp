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
<script type="text/javascript">
	function search(){
		
	}
</script>
</head>
<body>
	<div>
		<p id="navbar">当前位置：个人中心>>成绩查询</p>
	</div>
	<form action="score/Search.do" method = "post">
		<table style = "margin:0 auto">
			<tr>
	            <td class="table_titlebgcolor">学年：<select name="year" id="year" ValueField="Value" TextField="Text" style="height:27px;border-style:Groove;">
					<option selected="selected" value="0">(不填)</option>
					<option value="2024">2024</option>
					<option value="2023">2023</option>
					<option value="2022">2022</option>
					<option value="2021">2021</option>
					<option value="2020">2020</option>
					<option value="2019">2019</option>
					<option value="2018">2018</option>
					<option value="2017">2017</option>
					<option value="2016">2016</option>
					<option value="2015">2015</option>
					<option value="2014">2014</option>
					<option value="2013">2013</option>
					<option value="2012">2012</option>
					<option value="2011">2011</option>
					<option value="2010">2010</option>
					<option value="2009">2009</option>
					<option value="2008">2008</option>
					<option value="2007">2007</option>
					<option value="2006">2006</option>
					<option value="2005">2005</option>
					<option value="2004">2004</option>
					<option value="2003">2003</option>
					<option value="2002">2002</option>
					<option value="2001">2001</option>
					<option value="2000">2000</option>
					<option value="1999">1999</option>
					<option value="1998">1998</option>
					<option value="1997">1997</option>
					<option value="1996">1996</option>
				</select>&nbsp;&nbsp;
				                学期：<select name="term" id="term" ValueField="Value" TextField="Text" style="height:27px;border-style:Groove;width:100px;">
					<option selected="selected" value="0">(不填)</option>
					<option value="春季学期">春季学期</option>
					<option value="夏季学期">夏季学期</option>
					<option value="秋季学期">秋季学期</option>
					<option value="冬季学期">冬季学期</option>
				</select>
				&nbsp;&nbsp;
				<button id = "search" name = "search" type = "submit">搜索</button>
				</td>
				</tr>
	
		</table>
	</form>
     <table class="table">
     	<tr >
     		<th>学年</th>
     		<th>学期</th>
     		<th>课程名称</th>
     		<th>课程学分</th>
     		<th>考试成绩</th>
     		<th>所获学分</th>
     	</tr>
     	<c:forEach items="${scorelist}" var="score">
     		<tr>
     			<td>${score.year }</td>
     			<td>${score.term}</td>
     			<td>${score.cname}</td>
     			<td>${score.credit}</td>
     			<td>${score.score}</td>
     			<c:if test="${score.score >= 60}">
     				<td>${score.credit}</td>
     			</c:if>
     			<c:if test="${score.score < 60}">
     				<td>0</td>
     			</c:if>
     		</tr>
     	</c:forEach>
     </table>
</body>
</html>