<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Admin Menu List</title>
<link rel="shortcut icon" href="images/truyum-logo-light.png" />
<link rel="stylesheet" type="text/css" href="styles/style.css" />
</head>
<body>
    <header>
    <h3 class="truyum">truYum</h3>
    <img src="images/truyum-logo-light.png" alt="logo" /> <nav> <a
        href="ShowMenuItemListAdmin" class="menu">Menu</a> </nav> </header>
    <h1 class="menu-items">Menu Items</h1>
    <table>
        <col width=450>
        <col width=130>
        <col width=250>
        <col width=300>
        <col width=250>
        <col width=250>
        <tr>
            <th align="left">Name</th>
            <th align="center">Price</th>
            <th align="center">Active</th>
            <th align="center">Date of Launch</th>
            <th align="center">Category</th>
            <th align="center">Free Delivery</th>
            <th align="center">Action</th>
        </tr>

        <c:forEach items="${menuItem}" var="menuItem">
            <tr>
                <td align="left">${menuItem.getName()}</td>
                <td align="center">Rs. ${menuItem.getPrice()}</td>
                <td align="center"><c:choose>
                        <c:when test="${menuItem.isActive()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>
                <td align="center"><f:formatDate value="${menuItem.getDateOfLaunch()}"
                        pattern="dd/MM/yyyy" /></td>
                <td align="center">${menuItem.getCategory()}</td>
                <td align="center"><c:choose>
                        <c:when test="${menuItem.isFreeDelivery()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>
                <td align="center"><a href="ShowEditMenuItem?menuItemId=${menuItem. getId()}">Edit</a></td>
            </tr>
        </c:forEach>
    </table>
    <footer>
    <h4>Copyright&copy;2019</h4>
    </footer>
</body>
</html>