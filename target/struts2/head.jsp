<%--
  Created by IntelliJ IDEA.
  User: victor
  Date: 2019-06-12
  Time: 17:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<div class="info-top-grid">
    <div class="info-contact-agile">
        <ul>
            <li>
                <span class="fas fa-phone-volume"></span>
                <p>+(000)123 4565 32</p>
            </li>
            <li>
                <span class="fas fa-envelope"></span>
                <p><a href="mailto:info@example.com">info@example1.com</a></p>
            </li>
            <li>
            </li>
        </ul>
    </div>
</div>
<div class="container-fluid">
    <div class="hedder-up row">
        <div class="col-lg-3 col-md-3 logo-head">
            <h1><a class="navbar-brand" href="index.jsp">Toys Store</a></h1>
        </div>
        <div class="col-lg-5 col-md-6 search-right">

        </div>
        <div class="col-lg-4 col-md-3 right-side-cart">
            <div class="cart-icons">
                <ul>
                    <li>
                        <font color="#ff0000">${user.username}</font>
                    </li>
                    <li>
                        <button type="button" onclick="javascript:window.location.href='myacount.action'" data-toggle="modal" data-target="#exampleModal"> <span class="far fa-user"></span></button>
                    </li>
                    <li class="toyscart toyscart2 cart cart box_1">
                        <a href="cart.jsp">
                          <span class="fas fa-cart-arrow-down"></span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>

