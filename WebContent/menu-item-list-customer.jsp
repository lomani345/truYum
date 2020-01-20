<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Customer menu List</title>
<link rel="shortcut icon" href="images/truyum-logo-light.png" />
<link rel="stylesheet" type="text/css" href="styles/style.css" />
</head>
<body>

    <header>
    <h3 class="truyum">truYum</h3>
    <img src="images/truyum-logo-light.png" alt="logo" /> <nav> <a
        href="ShowMenuItemListCustomer" class="menu">Menu</a> <a href="ShowCart" class="cart">Cart</a>
    </nav> </header>
    <h1 class="menu-items">Menu Items</h1>
    <c:if test="${addCartStatus==true }">
        <span class="Item-added-to-cart-successfully"><b>Item added to Cart Successfully</b></span>
    </c:if>
    <table class="customer">
        <col width=200>

        <tr>
            <th align="left">Name</th>
            <th align="center">Free Delivery</th>
            <th align="right">Price</th>
            <th align="center">Category</th>
            <th align="center" colspan=3>Action</th>
        </tr>

        <c:forEach items="${menuItem}" var="menuItem">
            <tr>
                <td>${menuItem.getName()}</td>
                <td align="center"><c:choose>
                        <c:when test="${menuItem.isFreeDelivery()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>
                <td align="right">Rs. ${menuItem.getPrice()}</td>
                <td align="center">${menuItem.getCategory()}</td>
                <td align="center"><a href="AddToCart?menuItemId=${menuItem.getId()}">Add
                        to cart</a></td>
            </tr>
        </c:forEach>
    </table>
    <footer>
    <h4>Copyright&copy;2019</h4>
    </footer>
</body>
</html>