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
#div_right{
	width: :67%;
}
.table {
	float:left;
	width:30%;
	margin:15px 15px;
}
.table1{
	float:left;
	width:67%;
	margin: 15px 15px;
}
.table th {
	background-color:#00A5FF;
	color:#FFFFFF
}
.table3 tr{
	height:40px;
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
<script type="text/javascript" src="resources/js/jquery.js"></script>
<script language="JavaScript" type="text/JavaScript">
	function tocomment(tea_id,classid,comment_id){
		$("#comment_teacher").html("被评教老师：&nbsp;  &nbsp;"+tea_id+"&nbsp"+classid);
		$("#Comment_id").val(comment_id);
	    div_right = document.getElementsByTagName("div")[1];
	    div_right.style.display = "block";
	}
	function comment(){
		
		var select_1 = $("#select_1 option:selected").val();
		var select_2 = $("#select_2 option:selected").val();
		var select_3 = $("#select_3 option:selected").val();
		var select_4 = $("#select_4 option:selected").val();
		var select_5 = $("#select_5 option:selected").val();
		var SuitTeach=$('input:radio[name="SuitTeach"]:checked').val();
		if (select_1 == 0 | select_2 == 0 | select_3 == 0 | select_4 == 0 | select_5 == 0 | SuitTeach == null) {
			alert("请对该教师进行完整地评价后提交！");
		}
		else{
			
			alert("评教成功！");
			$("#myform").submit();
	    	div_right = document.getElementsByTagName("div")[1];
	    	div_right.style.display = "none";
		}
	}
</script>
</head>
<body>
	<div>
     	<p id="navbar">当前位置：个人中心>>学生评教</p>
     </div>
     <table class="table">
     	<tr >
     		<th>课程编号</th>
     		<th>课程名称</th>
     		<th>上课老师</th>
     		<th>评教状态</th>
     		<th>评教操作</th>
     	</tr>
     	<c:forEach items="${commentlist}" var="comment">
     		<tr>
     			<td>${comment.classid }</td>
     			<td>${comment.cname }</td>
     			<td>${comment.tname }</td>
     			<c:if test="${comment.status == 0}">
     				<td style = "color:#f00">未评教</td>
    				<td><button onclick = 'tocomment("${comment.tname }","${comment.classid }","${comment.comment_id}")' id = "ToComment" >点击评教</button></td>
     			</c:if>
     			<c:if test="${comment.status == 1}">
     				<td style = "color:#00f">已评教</td>
    				<td></td>
     			</c:if>
     		</tr>
     	</c:forEach>
     </table>
     <div style="float:left;margin-left:10px;display:none;" id="div_right">
     <form action="comment/Comment_Submit.do" method="post" id="myform">
	     <table border="0" >
		     <tr><td>
		 		<span id = "comment_teacher"></span><br/>
		 		<span><input type="hidden" id = "Comment_id" name = "Comment_id" value = ""/></span>
				<div>
				     <table border="1" cellspacing="0" class="table3">
					     <tr>
					     	<th>评测满分标准</th>
					     	<th>标准分</th>
					     	<th>评测结果</th>
					     </tr>
					     <tr>
					     	<td>T1： 注重师生互动，激发学生学习、思考和发言的积极性</td>
					     	<td style="text-align:center">5</td>
					     	<td>
					     		<select style="width:120px; height:30px" id = "tip_1" name = "tip_1">
									<option value="0">请选择...</option>
									<option value="5">满意</option>
									<option value="4">比较满意</option>
									<option value="3">一般</option>
									<option value="2">比较不满意</option>
									<option value="1">不满意</option>
								</select>
					     	</td>
					     </tr>
					     <tr>
					     	<td>T2： 注重理论联系实际，并能引入学科发展最新动态</td>
					     	<td style="text-align:center">5</td>
					     	<td>
					     		<select style="width:120px; height:30px" id="tip_2" name = "tip_2">
									<option value="0">请选择...</option>
									<option value="5">满意</option>
									<option value="4">比较满意</option>
									<option value="3">一般</option>
									<option value="2">比较不满意</option>
									<option value="1">不满意</option>
								</select>
					     	</td>
					     </tr>
					     <tr>
					     	<td>T3： 教学逻辑清晰，重难点突出，板书或多媒体课件简约清晰</td>
					     	<td style="text-align:center">5</td>
					     	<td>
					     		<select style="width:120px; height:30px" id="tip_3" name = "tip_3">
									<option value="0">请选择...</option>
									<option value="5">满意</option>
									<option value="4">比较满意</option>
									<option value="3">一般</option>
									<option value="2">比较不满意</option>
									<option value="1">不满意</option>
								</select>
					     	</td>
					     </tr>
					     <tr>
					     	<td>T4： 作业量适中，能认真批改并及时反馈</td>
					     	<td style="text-align:center">5</td>
					     	<td>
					     		<select style="width:120px; height:30px" id="tip_4" name = "tip_4">
									<option value="0">请选择...</option>
									<option value="5">满意</option>
									<option value="4">比较满意</option>
									<option value="3">一般</option>
									<option value="2">比较不满意</option>
									<option value="1">不满意</option>
								</select>
					     	</td>
					     </tr>
					     <tr>
					     	<td>T5： 教学端庄热情，尊重学生，富有感染力或亲和力</td>
					     	<td style="text-align:center">5</td>
					     	<td>
					     		<select style="width:120px; height:30px" id="tip_5" name = "tip_5">
									<option value="0">请选择...</option>
									<option value="5">满意</option>
									<option value="4">比较满意</option>
									<option value="3">一般</option>
									<option value="2">比较不满意</option>
									<option value="1">不满意</option>
								</select>
					     	</td>
					     </tr>
				     </table><br/>	
				 </div>
		     </td></tr>		     
				     <tr>
				     	<td>你是否推荐这位教师继续教这门课？ &nbsp;&nbsp;  &nbsp;&nbsp;<input id="RadioButton1" type="radio" name="SuitTeach" value="1" /><label for="RadioButton1">是</label> &nbsp;&nbsp;    &nbsp;&nbsp;   <input id="RadioButton2" type="radio" name="SuitTeach" value="0" /><label for="RadioButton2">否</label></td>
				     </tr>
				     <tr>
				     	<td>你认为该教师突出的优点是什么？&nbsp;&nbsp;  &nbsp;&nbsp;<textarea name="TeacherGood" rows="3" cols="20" id="TeacherGood" style="width:400px;"></textarea></td>
				     </tr>
				     <tr>
				     	<td>你认为该教师还有哪些需要改进的地方？&nbsp;&nbsp;  &nbsp;&nbsp;<textarea name="NeedChange" rows="3" cols="20" id="TeacherGood" style="width:400px;"></textarea></td>
				     </tr>
				     <tr align = "center">
				     	<td><br/><br/><input type = "button" id = "submit_button" value = "提交" onclick="comment()"></td>
				     </tr>
		 </table>
	 </form>
	 </div>
</body>
</html>