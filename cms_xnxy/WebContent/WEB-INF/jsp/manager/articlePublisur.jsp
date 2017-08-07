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
	$("form").off("submit");
	$("form").on("submit",function(){
		//异步提交
		$("form").ajaxSubmit(function(){
			$("form input").val("");//清空表单内容
			$("form textarea").val("");//清空表单内容
			$("form select").val("");//清空表单内容
			alert("添加成功");
		});
		//阻止表单的默认提交行为
		return false;
	});
});
</script>	

<div class="editingarea">
	<div class="c_flex">
		<span class="c_flexible"></span>
	</div>
	<div class="c_editview">
		<div class="c_r_right_border">
			<div class="website_base">
				<form action="manager/articlePublisur.action" method="post">
				<div class="c_condition website_condition dot_line">
					<span class="yx_txt_center">信息发布</span>
				</div>
				<div class="divtable mt5">
					<table width="100%" border="0" cellspacing="0" cellpadding="0"
						class="tab3">
						<tbody>
							<tr>
								<td class="tr" width="80">标题：</td>
								<td class="pl5"><input type="text" name="title"></td>
							</tr>
							<tr>
								<td class="tr" width="80">作者：</td>
								<td class="pl5"><input type="text" name="author"></td>
							</tr>
							<tr>
								<td class="tr" width="80">所属栏目：</td>
								<td class="pl5">
									<select name="category.id">
										<option value="">--请选择--</option>
										<c:forEach items="${categorys }" var="part" varStatus="state">
											<option value=${part.id }>--${part.name }--</option>
										</c:forEach>
										<!-- <option value="">--财经--</option>
										<option value="">--社会--</option>
										<option value="">--汽车--</option>
										<option value="">--军事--</option>
										<option value="">--游戏--</option> -->
									</select>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<textarea name="content" class="website_edit" cols="100"></textarea>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="btn_left btn_left_bcol">
					<button class="btn_gray mr5 ml5">发布</button>
				</div>
				</form>
			</div>
		</div>
	</div>
</div>

</body>
</html>