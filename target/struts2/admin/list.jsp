<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page isELIgnored="false" %>
<HTML>
<HEAD>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath}/css/listStyle.css" rel="stylesheet" type="text/css" />
<script language="javascript" src="${pageContext.request.contextPath}/js/public.js"></script>
<script type="text/javascript">
//批量删除
function batchDelete(){
	var ckStudentIds = document.getElementsByName('ckStudentId');
	var ids = '';
	for(var i=0;i<ckStudentIds.length;i++){
		if(ckStudentIds[i].checked == true){
			ids += ckStudentIds[i].value + ',';
		}

	}
	//2.去除最后一个逗号
	ids = ids.substring(0,ids.length - 1);
	alert(ids);

	location.href = '${pageContext.request.contextPath}/batchDeleteProduct.action?ids=' + ids;
}


//全选
	function checkAll(){
		var ckAllTag = document.getElementById('ckAll');
		var checkState = ckAllTag.checked;
		//	遍历
		var ckStudentIds = document.getElementsByName('ckStudentId');
		for (var i=0; i<ckStudentIds.length; i++) {
			ckStudentIds[i].checked = checkState;
		}
	}
<%--	跳转页面--%>
	function addProduct() {
		window.location.href = "${pageContext.request.contextPath}/admin/add.jsp";
	}
//	删除提示框
    function deleteProduct(productName,productId){
		if (confirm('是否要删除['+productName+']这件商品？')) {
		//确定删除
			location.href = '${pageContext.request.contextPath}/deleteProductById.action?id=${product.id}'+productId;
		}else {
		//	不删除
		}

	}
</script>
</HEAD>
<body>
	<br>
	<form id="Form1" name="Form1" action="${pageContext.request.contextPath}/searchProduct.action" method="post">
		<table cellSpacing="1" cellPadding="0" width="100%" align="center"
			bgColor="#f5fafe" border="0">
			<TBODY>
				<tr>
					<td class="ta_01" align="center" bgColor="#afd1f3"><strong>查
							询 条 件</strong>
					</td>
				</tr>
				<tr>
					<td>
						<table cellpadding="0" cellspacing="0" border="0" width="100%">
							<tr>

								<td height="22" align="center" bgColor="#f5fafe" class="ta_01">
									玩具编号</td>
								<td class="ta_01" bgColor="#ffffff">
									<input type="text" name="id" size="15"  class="bg" />
								</td>
								<td height="22" align="center" bgColor="#f5fafe" class="ta_01">
									玩具种类：</td>
								<td class="ta_01" bgColor="#ffffff">
									<select name="category" id="category">
										<option value="" selected="selected">--选择玩具类别--</option>
									<option value="泰迪熊">泰迪熊</option>
									<option value="Buzz Lightyear">Buzz Lightyear</option>
									<option value="LEGO积木">LEGO积木</option>
									<option value="芭比娃娃">芭比娃娃</option>
									<option value="NERF">NERF</option>

								</select>
								</td>
							</tr>

							<tr>
								<td height="22" align="center" bgColor="#f5fafe" class="ta_01">
									&nbsp;&nbsp;&nbsp;玩具名称：</td>
								<td class="ta_01" bgColor="#ffffff">
									<input type="text" name="name" size="15" value="" id="Form1_userName" class="bg" />
								</td>
								<td height="22" align="center" bgColor="#f5fafe" class="ta_01">
									价格区间：</td>
								<td class="ta_01" bgColor="#ffffff">
									<input type="text" name="minprice" size="10" value="" /> - <input type="text" name="maxprice" size="10" value="" />
								</td>
							</tr>

							<tr>
								<td width="100" height="22" align="center" bgColor="#f5fafe"
									class="ta_01"></td>
								<td class="ta_01" bgColor="#ffffff">
									<font face="宋体" color="red"> &nbsp;</font>
								</td>
								<td align="right" bgColor="#ffffff" class="ta_01"><br>
									<br></td>
								<td align="right" bgColor="#ffffff" class="ta_01">
									<button type="submit" id="search" name="search"
										value="&#26597;&#35810;" class="button_view">
										&#26597;&#35810;</button> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="reset" name="reset" value="&#37325;&#32622;" class="button_view" />
								</td>
							</tr>
						</table>
					</td>

				</tr>
				<tr>
					<td class="ta_01" align="center" bgColor="#afd1f3"><strong>玩具列表</strong>
					</TD>
				</tr>
				<tr>
					<td class="ta_01" align="right">
						<button type="button" id="batchDelete" name="batchDelete" value="&#28155;&#21152;"
								class="button_add" onclick="batchDelete()">批量删除
						</button>
						<button type="button" id="add" name="add" value="&#28155;&#21152;"
							class="button_add" onclick="addProduct()">&#28155;&#21152;
						</button>
					</td>
				</tr>
				<tr>
					<td class="ta_01" align="center" bgColor="#f5fafe">
						<table cellspacing="0" cellpadding="1" rules="all"
							bordercolor="gray" border="1" id="DataGrid1"
							style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; WIDTH: 100%; WORD-BREAK: break-all; BORDER-BOTTOM: gray 1px solid; BORDER-COLLAPSE: collapse; BACKGROUND-COLOR: #f5fafe; WORD-WRAP: break-word">
							<tr
								style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; BACKGROUND-COLOR: #afd1f3">
								<td height="22" width="5%" align="center">
									<input type="checkbox"  id='ckAll' onclick="checkAll()"> 全选
								</td>
								<td align="center" width="24%">编号</td>
								<td align="center" width="18%">名称</td>
								<td align="center" width="9%">价钱</td>
								<td align="center" width="9%">库存</td>
								<td width="8%" align="center">类别</td>
								<td width="8%" align="center">编辑</td>

								<td width="8%" align="center">删除</td>
							</tr>
							<c:forEach items="${pageResult.list}" var="product">
									<tr onmouseover="this.style.backgroundColor = 'white'"
										onmouseout="this.style.backgroundColor = '#F5FAFE';">
										<td height="22" width="5%" align="center" bgColor="#f5fafe" >
											<input type="checkbox"  name='ckStudentId' value="${product.id}>">
										</td>
										<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="23">${product.id}</td>
										<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="18%">${product.name}</td>
										<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="8%">${product.price}</td>
										<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="8%">${product.pnum}</td>
										<td style="CURSOR: hand; HEIGHT: 22px" align="center">${product.category}</td>
										<td align="center" style="HEIGHT: 22px" width="7%">
											<a href="${pageContext.request.contextPath}/findProductById.action?id=${product.id}">
												<img src="${pageContext.request.contextPath}/admin/images/edit.gif"
												border="0" style="CURSOR: hand">
											</a>
										</td>
	
										<td align="center" style="HEIGHT: 22px" width="7%">
											<a href="javascript:deleteProduct('${product.name}','${product.id}')">
												<img src="${pageContext.request.contextPath}/admin/images/del.gif"
												width="16" height="16" border="0" style="CURSOR: hand">
										    </a>
										</td>
									</tr>
							</c:forEach>

							<tr>
								<td colspan="8" align="right">
								当前页：&nbsp;&nbsp;${pageResult.currentPage}/${pageResult.totalPage}&nbsp;&nbsp;总条数：${pageResult.totalCount}&nbsp;&nbsp;&nbsp;
								</td>
							</tr>
							<tr>
								<td colspan="8" align="center">
									<c:if test="${pageResult.currentPage-1 != 0}">
										<a href="${pageContext.request.contextPath}/adminProductList.action?page=${pageResult.currentPage-1}">上一页</a>
									</c:if>

									<c:forEach var="p" begin="1" end="${pageResult.totalPage}">
										<a href="${pageContext.request.contextPath}/adminProductList.action?page=${p}">${p}</a>
										&nbsp;
									</c:forEach>

									<c:if test="${pageResult.currentPage +1 <= pageResult.totalPage}">
										<a href="${pageContext.request.contextPath}/adminProductList.action?page=${pageResult.currentPage+1}">下一页</a>
									</c:if>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</TBODY>
		</table>
	</form>
</body>
</HTML>

