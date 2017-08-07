<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table width="100%" border="0" cellspacing="0" cellpadding="0"
		class="tab1">
		<tbody>
			<tr>
				<th class="tl pl5">标题</th>
				<th class="tl pl5">所属栏目</th>
				<th class="tl pl5">作者</th>
				<th class="tl pl5">发布日期</th>
				<th class="tl pl5">点击次数</th>
				<th class="tl pl5">操作</th>
			</tr>
			<c:forEach items="${Articles }" var="article" varStatus="state">
				<tr>
				<td class="pl5">${article.title }</td>
				<td class="pl5">${article.category.name }</td>
				<td class="pl5">${article.author }</td>
				<td class="pl5"><fmt:formatDate value="${article.publisurDate }" pattern="yy/MM/dd" /></td>
				
				<td class="pl5">10</td>
				<!-- 拓展 js -->
				<td class="pl5">
					<span class="ico_edit" val="${article.id }"></span>
					<span class="ico_del ml5" val="${article.id }"></span>
				</td>
			</tr>
			</c:forEach>
			<%-- <tr>
				<td class="pl5">杰普微信公开课11</td>
				<td class="pl5">科学</td>
				<td class="pl5">boss</td>
				<td class="pl5">2017-1-1</td>
				<td class="pl5">10</td>
				<!-- 拓展 js -->
				<td class="pl5">
					<span class="ico_edit" val="${a.id }"></span>
					<span class="ico_del ml5" val="${a.id }" id="one"></span>
				</td>
			</tr>
			<tr>
				<td class="pl5">杰普微信公开课</td>
				<td class="pl5">科学</td>
				<td class="pl5">boss</td>
				<td class="pl5">2017-1-1</td>
				<td class="pl5">10</td>
				<!-- 拓展 js -->
				<td class="pl5">
					<span class="ico_edit" val="${a.id }"></span>
					<span class="ico_del ml5" val="${a.id }"></span>
				</td>
			</tr>
			<tr>
				<td class="pl5">杰普微信公开课</td>
				<td class="pl5">科学</td>
				<td class="pl5">boss</td>
				<td class="pl5">2017-1-1</td>
				<td class="pl5">10</td>
				<!-- 拓展 js -->
				<td class="pl5">
					<span class="ico_edit" val="${a.id }"></span>
					<span class="ico_del ml5" val="${a.id }"></span>
				</td>
			</tr> --%>
		</tbody>
	</table>

</body>
</html>