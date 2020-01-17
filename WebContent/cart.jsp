<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Cart</title>
<link rel="shortcut icon" href="images/truyum-logo-light.png" />
<link rel="stylesheet" type="text/css" href="styles/style.css" />
</head>
<body>
    <header>
    <h3 class="truyum">truYum</h3>
    <img src="images/truyum-logo-light.png" alt="logo" /> <nav> <a
        href="ShowMenuItemListCustomer" class="menu">Menu</a> <a href="ShowCart" class="cart">Cart</a>
    </nav> </header>
    <h1 class="menu-items">Cart</h1>
    <c:if test="${removeCartItemStatus==true }">
        <h4 class="removed-from-cart">Item removed from Cart successfully</h4>
    </c:if>
    <c:set var="cart" value="${cart}"></c:set>
    <table class="cart2">
        <col width=350>
        <col width=200>
        <col width=200>
        <col width=250>
        <tr>
            <th align="left">Name</th>
            <th align="left">Free Delivery</th>
            <th align="right">Price</th>
        </tr>
        <tr>

            <c:forEach items="${menuItem}" var="menuItem">
                <tr>
                    <td>${menuItem.getName()}</td>
                    <td align="center"><c:choose>
                            <c:when test="${menuItem.isFreeDelivery()==true}">Yes</c:when>
                            <c:otherwise>No</c:otherwise>
                        </c:choose></td>
                    <td align="right">Rs. ${menuItem.getPrice()}</td>

                    <td align="right"><a href="RemoveCart?menuItemId=${menuItem.getId()}">Delete</a></td>
                </tr>
            </c:forEach>
        </tr>
        <tr>
            <td></td>
            <th align="center">Total</th>
            <th align="right">Rs.${cart.getTotal() }</th>
        </tr>
    </table>
    <footer>
    <h4>Copyright&copy;2019</h4>
    </footer>
</body>
</html>