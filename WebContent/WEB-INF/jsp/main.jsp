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
    <meta charset="UTF-8">
    <meta name="Keywords" content="关键字,关键词">
    <meta name="Description" content="描述和简介">
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="resources/css/public.css">
    <link rel="stylesheet" type="text/css" href="resources/css/index.css">
    <link rel="stylesheet" href="resources/css/font-awesome.min.css" />
    <script type="text/javascript" src="resources/js/jquery-3.1.1.min.js"></script>
    <style type="text/css">
	</style>
</head>
<body>
    <div id="header-navBar">
        <ul>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
        </ul>
        <div class="title"><div class="logo"><img src="resources/images/logo.jpg"></div>三峡大学教务管理系统</div>
        <div class="msg fr flchild clearFix">
            <div class="msg-img"><img src="resources/images/image2.jpg"/></div>
            <p>欢迎你,<span>${sessionScope.STUDENT_SESSION_KEY.sname}</span></p>
            <div class="operation">
                <p><a href="http://www.baidu.com">个人信息</a></p>
                <p><a href="student/outLogin.do">退出登录</a></p>
            </div>
        </div>
    </div>
    <div id = "main" class="flchild clearFix">
        <div id="header-sideBar" class="fl">
            <ul class="sideBar-submenu">
                <li><a
                        href="http://www.baidu.com" target="mainframe">
                    <i class="icon-dashboard"></i><span class="menu-text">主页</span>
                	</a>
                </li>
                <li><a>
                    <i class="icon-desktop"></i><span class="menu-text">即时事务</span>
                    <b class="arrow icon-angle-down fr"></b>

                	</a>
                    <ul class="submenu">
                        <li><a href="#">公告通知</a><b class="icon-double-angle-right fr"></b></li>
                        <li><a href="#">重大新闻</a><b class="icon-double-angle-right fr"></b></li>
                    </ul>
                </li>
                <li><a>
                    <i class="icon-book"></i><span class="menu-text">各类报名</span>
                    <b class="arrow icon-angle-down fr"></b>
                	</a>
                    <ul class="submenu">
                        <li><a href="enroll/toEnroll.do" target="mainframe">英语四六级报名</a><b class="icon-double-angle-right fr"></b></li>
                        <li><a href="#">普通话报名</a><b class="icon-double-angle-right fr"></b></li>
                        <li><a href="#">计算机等级考试报名</a><b class="icon-double-angle-right fr"></b></li>
                    </ul>
                </li>
                <li><a>
                    <i class="icon-adn "></i><span class="menu-text">学生选课</span>
                    <b class="arrow icon-angle-down fr"></b>
                	</a>
                    <ul class="submenu">
                        <li><a href="show_course/getAllCourseByCommonality.do?profession=公共类" target="mainframe">全校公共选修课</a><b class="icon-double-angle-right fr"></b></li>
                        <li><a href="show_course/getAllCourseByTogether.do?profession=${sessionScope.STUDENT_SESSION_KEY.type}&year=${sessionScope.STUDENT_SESSION_KEY.year}" target="mainframe">通实核心课程</a><b class="icon-double-angle-right fr"></b></li>
                        <li><a href="show_course/getAllCourse.do?profession=${sessionScope.STUDENT_SESSION_KEY.profession}&learn=是&year=${sessionScope.STUDENT_SESSION_KEY.year}" target="mainframe">专业必修课</a><b class="icon-double-angle-right fr"></b></li>
                        <li><a href="show_course/getAllCourse.do?profession=${sessionScope.STUDENT_SESSION_KEY.profession}&learn=否&year=${sessionScope.STUDENT_SESSION_KEY.year}" target="mainframe">专业选修课</a><b class="icon-double-angle-right fr"></b></li>
                    </ul>
                </li>
                <li><a>
                    <i class="icon-asterisk "></i><span class="menu-text">个人中心</span>
                    <b class="arrow icon-angle-down fr"></b>
                	</a>
                    <ul class="submenu">
                        <li><a href="select_course/already_select.do?sid=${sessionScope.STUDENT_SESSION_KEY.sid}" target="mainframe">已选课程</a><b class="icon-double-angle-right fr"></b></li>
                        <li><a href="score/ShowScore.do?sid=${sessionScope.STUDENT_SESSION_KEY.sid }" target="mainframe">成绩查询</a><b class="icon-double-angle-right fr"></b></li>
                        <li><a href="comment/Comment.do?sid=${sessionScope.STUDENT_SESSION_KEY.sid }" target="mainframe">学生评教</a><b class="icon-double-angle-right fr"></b></li>
                    </ul>
                </li>
                <li><a>
                    <i class="icon-apple "></i><span class="menu-text">友情链接</span>
                    <b class="arrow icon-angle-down fr"></b>
                	</a>
                    <ul class="submenu">

                        <li><a href="http://www.ctgu.edu.cn" target="mainframe">学校官网</a><b class="icon-double-angle-right fr"></b></li>
                        <li><a href="http://www.baidu.com" target="mainframe">百度一下</a><b class="icon-double-angle-right fr"></b></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div id="main-content">
            <iframe id="mainframe" name="mainframe" style="width: 101.5%;border: 0;" src="resources/mainframe.html"></iframe>
        </div>

    </div>
    <script type="text/javascript">
        var height = jQuery(window).height() - 116;
        jQuery("#mainframe").attr("height", "" + height + "px;");
    </script>
    <div id="footer">
            <span>Copyright 2001-2018 ChinaUnix.net All Rights Reserved 宜昌皓辰网域网络信息技术有限公司. 版权所有</span>
            <p>鄂ICP证041476号 鄂ICP证060528号</p>
    </div>
    <script type="text/javascript">
        $(document).ready(function()
        {
            var a = 0;
            $(".sideBar-submenu li").click(function()
                {

                    if($(this).children(".submenu").is(":hidden"))
                    //判断对象是显示还是隐藏
                    {
                        if(!$(this).children(".submenu").is(":animated")){
                            //如果当前没有进行动画，则添加新动画
                            $(this).children(".submenu").animate({height:'show'},500)
                                .end().siblings().find(".submenu").hide(500);

                            $(this).children("a").children("b").attr("class","arrow icon-angle-up fr").end().end().siblings().
                            children("a").children("b").attr("class","arrow icon-angle-down fr");
                        }
                    }else if(a===0){
                       if(!$(this).children(".submenu").is(":animated")){
                           $(this).children(".submenu").animate({height:'hide'},500)
                               .end().siblings().find(".submenu").hide(500);
                           $(this).children("a").children("b").attr("class","arrow icon-angle-down fr").end().end().siblings().
                           children("a").children("b").attr("class","arrow icon-angle-down fr");
                       }
                    }
                    if(a > 0)
                        a = 0;
                }
            );
            $(".submenu").click(function () {
                a++;
            });
        });
    </script>
</body>
</html>