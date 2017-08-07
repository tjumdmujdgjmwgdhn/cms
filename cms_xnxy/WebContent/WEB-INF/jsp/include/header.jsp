<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<!-- <body> -->
<div class="top">
    	<div class="topbg">
            <div class="logo_sign">
            	<div class="logo"></div>
                <div class="sign">
                	<span>欢迎您</span>
                    <span class="sp_home">
                    		<a href="toIndex1.action">首页</a>
                    </span>
                    <span class="sp_backstage">
                    		<a href="toHome.action">后台管理</a>
                    </span>
                    <!-- <span class="sp_signout">退出</span> -->
                </div>
            </div> 
            <div class="nav1">
            	<ul class="navUI">
                	<li><a href="toIndex1.action">首页</a></li>
                	<c:forEach items="${categorys }" var="category" varStatus="state">
                		 <li><a href="toList.action?id=${category.id }">${category.name }</a></li>
                	</c:forEach>
                </ul>
            </div>
            <div class="banner">
            	<div class="banimg"><img width="1072" height="241" src="theme/1/images/front/banner.png"></div>
            </div>
        </div>
    </div>
</body>
</html>