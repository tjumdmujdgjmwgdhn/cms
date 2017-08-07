<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<style type="text/css">
.btn_left {
	position: absolute;
	bottom: 30px;
	margin-left: 10px
}
</style>

<!-- 
<div class="c_condition">
	<span><select><option>--资源栏目--</option></select></span> <span><select><option>--资源类型--</option></select></span>
	<span><select><option>--审核状态--</option></select></span> <span><select><option>--转码状态--</option></select></span>
	<span>关键字：<input type="text"></span> <span class="btn_gray">搜索</span>
</div> 
-->
<script>
$(function(){
	//为删除图标绑定事件
	$(".pl5 .ico_del").off("click");
	$(".pl5 .ico_del").on("click",function(){
		//获取点击元素的id
		var id = $(this).attr("val");
		//通过ajax删除id为id的栏目
		$.post("manager/deleteCategory.action",{
			"category_id":id	//参数
		},function(){			//回调函数
			alert("删除成功");
			//模拟点击"栏目管理"
			$("span:contains('栏目管理')").trigger("click");
		});
	});
	//为修改图标绑定事件
	$(".pl5 .ico_edit").off("click");
	$(".pl5 .ico_edit").on("click",function(){
		//获取要修改元素的id
		var id = $(this).attr("val");
		//将class为"rightContent"的元素替换为action返回页面
		$(".rightContent").load("updateCategory",{
			"category_id":id
		});
	});
	
	
});
</script>
<div class="divtable">
	<table width="100%" border="0" cellspacing="0" cellpadding="0"
		class="tab1">
		<tbody>
		<tr>
			<th class="tl pl5">栏目名称</th>
			<th class="tl pl5">栏目编号</th>
			<th class="tl pl5">操作</th>
		</tr>
		<c:forEach items="${categorys }" var="part" varStatus="state">
			<tr>
				<td class="pl5">${part.name} </td>
				<td class="pl5"><span class="fontLv">
					${part.code }</span>
				</td>
				<td class="pl5">
					<span class="ico_edit" val="${part.id }"></span>
					<span class="ico_del ml5" val="${part.id }"></span>
				</td>
			</tr>
		</c:forEach>
			<%-- <tr>
				<th class="tl pl5">栏目名称</th>
				<th class="tl pl5">栏目编号</th>
				<th class="tl pl5">操作</th>
			</tr>
			
			<tr>
				<td class="pl5">财经</td>
				<td class="pl5"><span class="fontLv">
					1</span>
				</td>
				<td class="pl5">
					<span class="ico_edit" val="${category.id }"></span>
					<span class="ico_del ml5" val="${category.id }"></span>
				</td>
			</tr>
			<tr>
				<td class="pl5">社会</td>
				<td class="pl5">
				<span class="fontLv">2</span>
				</td>
				<td class="pl5">
					<span class="ico_edit" val="${category.id }"></span>
					<span class="ico_del ml5" val="${category.id }"></span>
				</td>
			</tr>
			<tr>
				<td class="pl5">汽车</td>
				<td class="pl5">
				<span class="fontLv">3</span>
				</td>
				<td class="pl5">
					<span class="ico_edit" val="${category.id }"></span>
					<span class="ico_del ml5" val="${category_id }"></span>
				</td>
			</tr>
			<tr>
				<td class="pl5">军事</td>
				<td class="pl5">
				<span class="fontLv">4</span>
				</td>
				<td class="pl5">
					<span class="ico_edit" val="${category.id }"></span>
					<span class="ico_del ml5" val="${category_id }"></span>
				</td>
			</tr>
			<tr>
				<td class="pl5">游戏</td>
				<td class="pl5">
				<span class="fontLv">5</span>
				</td>
				<td class="pl5">
					<span class="ico_edit" val="${category.id }"></span>
					<span class="ico_del ml5" val="${category_id }"></span>
				</td>
			</tr> --%>
			
		</tbody>
	</table>
</div>
<div class="btn_left">
	<!-- <span class="btnL"><em class="btnR">添加</em></span> -->
	<!-- <span class="btnL"><em class="btnR">推荐</em></span>  -->
</div>
</body>
</html>