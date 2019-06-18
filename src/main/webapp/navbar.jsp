<%--
  Created by IntelliJ IDEA.
  User: victor
  Date: 2019-06-12
  Time: 17:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<nav class="navbar navbar-expand-lg navbar-light">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
        <ul class="navbar-nav ">
            <li class="nav-item active">
                <a class="nav-link" href=" index.jsp">首页 <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a href="${pageContext.request.contextPath}/showProductByPage.action?category=泰迪熊" class="nav-link">泰迪熊</a>
            </li>
            <li class="nav-item">
                <a href="${pageContext.request.contextPath}/showProductByPage.action?category=Buzz Lightyear" class="nav-link">Buzz Lightyear</a>
            </li>
            <li class="nav-item">
                <a href="${pageContext.request.contextPath}/showProductByPage.action?category=LEGO积木" class="nav-link">LEGO积木</a>
            </li>

            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    更多产品
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="nav-link" href="${pageContext.request.contextPath}/showProductByPage.action?category=芭比娃娃">芭比娃娃</a>
                    <a class="nav-link " href="${pageContext.request.contextPath}/showProductByPage.action?category=NERF">NERF</a>
                </div>
            </li>
            <li class="nav-item">
                <a href="showProductByPage.action" class="nav-link">全部产品</a>
            </li>
        </ul>
    </div>
</nav>
