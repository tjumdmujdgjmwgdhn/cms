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
	<!-- 导入头部页面（logo, 导航） -->
   <jsp:include page="include/header.jsp"></jsp:include>
    <div class="content">
    	<div class="congw">
           <div class="conlist">
           		<div class="position">
                   	<span class="poshome">您现在的位置：</span>
                       <a href="toIndex1.action">首页</a> >> 
                        <c:forEach items="${categorys }" var="category">
                       	<c:if test="${param.id==category.id }">
                       		 <a href="toList.action?id=${category.id }">
								${category.name }
                     		 </a>
                     	<!-- 	 <div class="search_result"> -->
                     		 <c:forEach items="${Articles }" var="article">
                     		 <c:if test="${category.id==article.category.id }">
                     		 	 <div class="art_box">
                        	<div class="art_img">
                        		<a href="toContent.action?id=${article.id }">
                        			<img src="theme/1/images/front/doc.png">
                        		</a>
                        	</div>
                            <div class="art_txt">
                            	<div class="title">${article.title }<span class="icon_pen"></span></div>
                                <div class="tag_txt"><span>栏目名称：${category.name }</span>
                                <span class="pl30">点击数：10</span>
                             	</div>
                                <div class="tag_txt">
                                	<span>作者：${article.author }</span>
                                	<span class="pl30">发表日期：<fmt:formatDate value="${article.publisurDate }" pattern="yy/MM/dd" /></span>
                                </div>
                            </div>
                        </div>            
                     		 </c:if>
                     		 </c:forEach>
                       	</c:if>
                       </c:forEach>
                           <div class="page">分页</div>
                </div>
                 </div>
           </div>
            <div class="link">
            	<div class="linelink">
            		<span>友情链接：</span><a href="javascript:void(0)">上海教育网</a><a href="javascript:void(0)">上海教育网</a><a href="javascript:void(0)">上海教育网</a><a href="javascript:void(0)">上海教育网</a><a href="javascript:void(0)">上海教育网</a><a href="javascript:void(0)">上海教育网</a>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="include/footer.jsp"></jsp:include>
    
<!-- </div> -->
</body>
</html>