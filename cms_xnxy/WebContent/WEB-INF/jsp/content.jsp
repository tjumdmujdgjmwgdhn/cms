<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%= request.getScheme()%>://<%= request.getServerName() %>:<%= request.getServerPort() %>/<%= request.getContextPath() %>/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>杰普信息管理系统</title>
<link rel="stylesheet" type="text/css" href="theme/1/css/common.css">
<link rel="stylesheet" type="text/css" href="theme/1/css/front/style.css">
</head>

<body>
<div id="main">
   
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
            <div class="nav">
            	<ul class="navUI">
                	<li><a href="toIndex1.action">首页</a></li>
                	<c:forEach items="${categorys }" var="category">
                		<li><a href="toList.action?id=${category.id }">${category.name }</a></li>
                	</c:forEach>
                    <!-- <li><a href="toList.action?id=1">财经</a></li>
					<li><a href="toList.action?id=1">社会</a></li>
					<li><a href="toList.action?id=1">汽车</a></li>
					<li><a href="toList.action?id=1">军事</a></li>
					<li><a href="toList.action?id=1">游戏</a></li>
 -->               
                </ul>
            </div>
            <div class="banner">
            	<div class="banimg"><img width="1072" height="241" src="theme/1/images/front/banner.png"></div>
            </div>
        </div>
    </div>


    <div class="content">
    	<div class="congw">
           <div class="conarticle">
           	<c:forEach items="${Articles }" var="article">
              <c:if test="${param.id==article.id }">
               <c:forEach items="${categorys }" var="category">
             <c:if test="${category.id==article.category.id }">
             <!-- 将点击次数加1 -->
               <div class="position">
                <span class="poshome">您现在的位置：</span>
                 <a href="toIndex1.action">首页</a> >> 
                  <a href="toList.action?id=${category.id }">
                   ${category.name }
                  </a>
             </div>
                <div class="title">${article.title }</div>
                   							<div class="abstract">
                    						<span>更新时间：<fmt:formatDate value="${article.publisurDate }" pattern="yy/MM/dd" /></span>
                        					<span>发布人：${article.author }</span>
                        					<span>点击${article.clickTimes }次</span>
                    					</div>
                    				<div class="details">
									<center>
									${article.content }
                    				<!-- <p>很多内容很多内容很多内容很多内容很多内容很多内容</p>
                    				<p>很多内容很多内容很多内容很多内容很多内容很多内容</p>
                    				<p>很多内容很多内容很多内容很多内容很多内容很多内容</p>
                    				<p>很多内容很多内容很多内容很多内容很多内容很多内容</p> -->
									</center>
                    				</div>
                       			 	</c:if>
                       			 </c:forEach>
              
              
              
              	</c:if>
                        </c:forEach>
              
             
                </div>
            
                                               
                    
                    
           </div>
            <div class="link">
            	<div class="linelink">
            		<span>友情链接：</span><a href="javascript:void(0)">上海教育网</a><a href="javascript:void(0)">上海教育网</a><a href="javascript:void(0)">上海教育网</a><a href="javascript:void(0)">上海教育网</a><a href="javascript:void(0)">上海教育网</a><a href="javascript:void(0)">上海教育网</a>
                </div>
            </div>
        </div>
    </div>
  
  <div class="footer">
    	<div class="foot">
        	<p>杰普信息发布系统 技术支持：<a href="javascript:void(0)">上海杰普软件科技有限公司</a>      电话：021-xxxxxxx</p>
        </div>
    </div>


</div>
</body>
</html>