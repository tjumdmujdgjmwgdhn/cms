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

<script>
$(function(){
	//为删除图标绑定事件
	$(".divtable .pl5 .ico_del").off("click");
	
	$(".divtable").on("click",".pl5 .ico_del",function(){
		alert("删除");
		//获取点击元素的id
		var id = $(this).attr("val");
		//通过ajax删除id为id的栏目
		$.post("deleteFriendLink.action",{
			"friendlink_id":id	//参数
		},function(){			//回调函数
			alert("删除成功");
		//showMsg("删除成功");   角落小弹框
			//模拟点击"栏目管理"
			$("span:contains('系统设置')").trigger("click");
		});
	});

	//为修改图标绑定事件
	//$(".divtable").off("click");
	$(".divtable .pl5 .ico_edit").off("click");
	$(".divtable").on("click",".pl5 .ico_edit",function(){
		alert("修改");
		//获取要修改元素的id
		var id = $(this).attr("val");
		//将class为"rightContent"的元素替换为action返回页面
		$(".rightContent").load("updateFriendLink",{
			"friendlink_id":id
		});
	});
	
	
	
	
	$("form").off("submit");
	$("form").on("submit",function(){
		//异步提交
		$("form").ajaxSubmit(function(){
			$("form input").val("");//清空表单内容
			alert("操作成功");
			$("span:contains('系统设置')").trigger("click");
			//alert("添加成功");
		});
		//阻止表单的默认提交行为
		return false;
	});
});
</script>	
<div class="editingarea">
	<div style="float:left;width:48%">
		<div class="c_flex">
			<span class="c_flexible"></span>
		</div>
		<div class="c_editview">
			<div class="c_r_right_border">
			<form action="baseSet.action" method="post">
				<div class="website_base">
					<div class="c_condition website_condition dot_line">
						<span class="yx_txt_center">添加友情链接</span>
					</div>
					<div class="divtable mt5">
						<table width="100%" border="0" cellspacing="0" cellpadding="0"
							class="tab3">
							<tbody>
								<tr>
									<td class="tr" width="80">链接名称：</td>
									<td class="pl5"><input type="text" name="name"></td>
								</tr>
								<tr>
									<td class="tr" width="80">链接地址：</td>
									<td class="pl5"><input type="text" name="address"></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="c_condition website_condition dot_line">
						<button class="btn_gray mr5 ml5">添加</button>
					</div>
				</div>
				</form>
			</div>
		</div>
		
		<div class="c_editview">
			<div class="c_r_right_border">
			<form action="manager/updateBasicSet.action" method="post">
				<div class="website_base">
					<div class="c_condition website_condition dot_line">
						<span class="yx_txt_center">基础设置链接</span>
					</div>
					<div class="divtable mt5">
						<table width="100%" border="0" cellspacing="0" cellpadding="0"
							class="tab3">
							<tbody>
								<tr>
									<td class="tr" width="80">公司名称：</td>
									<td class="pl5"><input  style="width:80%" type="text" name="" value="杰普软件科技有限公司"></td>
								</tr>
								<tr>
									<td class="tr" width="80">公司地址：</td>
									<td class="pl5"><input  style="width:80%" type="text" name="" value="昆山市巴城学院路828号"></td>
								</tr>
								<tr>
									<td class="tr" width="80">版权信息：</td>
									<td class="pl5"><input style="width:80%" type="text" name="" value="Copyright @ 2013 by Briup Technology,Inc. , All rights Reserved. ICP 05024518"></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="c_condition website_condition dot_line">
						<button class="btn_gray mr5 ml5">设置</button>
					</div>
				</div>
				</form>
			</div>
		</div>
	</div>
	<div style="float:right;width:50%">
		<div class="divtable">
			<table width="100%" border="0" cellspacing="0" cellpadding="0"
				class="tab1">
				<tbody>
					<tr>
						<th class="tl pl5">链接名称</th>
						<th class="tl pl5">链接地址</th>
						<th class="tl pl5">操作</th>
					</tr>
					<%System.out.println("前台添加友情链接 =================="+session.getAttribute("FriendLinks")); %>
					<c:forEach items="${FriendLinks }" var="friendlink" varStatus="state">
						<tr>
						<td class="pl5">${friendlink.name }</td>
						<td class="pl5">
							<span class="fontLv">${friendlink.address }</span>
						</td>
						<td class="pl5">
							<span class="ico_edit" val="${friendlink.id }"></span>
							<span class="ico_del ml5" val="${friendlink.id }"></span>
						</td>
						</tr>
					</c:forEach>
					<!-- <tr>
						<td class="pl5">百度</td>
						<td class="pl5">
							<span class="fontLv">http://www.baidu.com</span>
						</td>
						<td class="pl5">
							<span class="ico_edit"></span>
							<span class="ico_del ml5"></span>
						</td>
					</tr>
					<tr>
						<td class="pl5">杰普软件科技有限公司</td>
						<td class="pl5">
							<span class="fontLv">http://www.briup.com</span>
						</td>
						<td class="pl5">
							<span class="ico_edit"></span>
							<span class="ico_del ml5"></span>
						</td>
					</tr> -->
					
				</tbody>
			</table>
		</div>
	</div>
	
</div>
</body>
</html>