<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page isELIgnored="false" %>
<HTML>
<HEAD>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<LINK href="${pageContext.request.contextPath}/admin/css/listStyle.css" type="text/css" rel="stylesheet">
<script language="javascript" src="${pageContext.request.contextPath}/admin/js/public.js"></script>
<script language="javascript" src="${pageContext.request.contextPath}/admin/js/check.js"></script>

</HEAD>
<script type="text/javascript">
	//设置类别的默认值
	function setProductCategory(t) {
		var category = document.getElementById("category");

		var ops = category.options;
		for ( var i = 0; i < ops.length; i++) {

			if (ops[i].value == t) {
				ops[i].selected = true;
				return;
			}
		}

	};
</script>
<body onload="setProductCategory('${product.category}')">
	<form id="userAction_save_do" name="Form1" action="UpdateProduct.action" method="post">

		<table cellSpacing="1" cellPadding="5" width="100%" align="center"
			bgColor="#eeeeee" style="border: 1px solid #8ba7e3" border="0">
			<tr>
				<td class="ta_01" align="center" bgColor="#afd1f3" colSpan="4"
					height="26"><strong><STRONG>修改商品信息</STRONG> </strong></td>
			</tr>


			<tr>
				<td align="center" bgColor="#f5fafe" class="ta_01">编号：</td>
				<td class="ta_01" bgColor="#ffffff">
					<input type="text" name="id" class="bg" value="${product.id}" readonly="readonly"/>
				</td>

				<td align="center" bgColor="#f5fafe" class="ta_01">单价：</td>
				<td class="ta_01" bgColor="#ffffff">
					<input type="text" name="price" class="bg" value="${product.price}"/>
				</td>
			</tr>
			<tr>
				<td align="center" bgColor="#f5fafe" class="ta_01">名称：</td>
				<td class="ta_01" bgColor="#ffffff">
					<input type="text" name="name" class="bg"  value="${product.name}"/>
				</td>

				<td align="center" bgColor="#f5fafe" class="ta_01">类别：</td>
				<td class="ta_01" bgColor="#ffffff">
					<select name="category" id="category" >
						<option value="">--选择商品性别--</option>
						<option value="Yo-Yo球">泰迪熊</option>
						<option value="四驱车">Buzz Lightyear</option>
						<option value="布偶熊">LEGO积木</option>
						<option value="芭比娃娃">芭比娃娃</option>
						<option value="LEGO积木">NERF</option>

				</select>
				</td>
			</tr>


			<tr>
				<td align="center" bgColor="#f5fafe" class="ta_01">库存量：</td>
				<td class="ta_01" bgColor="#ffffff" colSpan="3">
					<input type="text" name="pnum" size="30" value="${product.pnum}" />
				</td>
			</tr>

			<TR>
				<TD class="ta_01" align="center" bgColor="#f5fafe">商品描述：</TD>
				<TD class="ta_01" bgColor="#ffffff" colSpan="3">
				<textarea name="description" cols="30" rows="3" style="WIDTH: 96%">
					${product.description}
				</textarea>
				</TD>
			</TR>

			<TR>
				<td align="center" colSpan="4" class="sep1">
					<img src="admin/images/shim.gif">
				</td>
			</TR>


			<tr>
				<td class="ta_01" style="WIDTH: 100%" align="center" bgColor="#f5fafe" colSpan="4">
					<input type="submit" class="button_ok" value="确定">
					<FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>



					<input type="reset" value="重置" class="button_cancel">
					<FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
					<INPUT class="button_ok" type="button" onclick="history.go(-1)" value="返回" />
					<span id="Label1"> </span>
				</td>
			</tr>
		</table>
	</form>




</body>
</HTML>