<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Edit Menu Item</title>
<link rel="shortcut icon" href="images/truyum-logo-light.png" />
<link rel="stylesheet" type="text/css" href="styles/style.css" />
<script type="text/javascript" src="js/script.js"></script>
</head>
<body>
    <c:set var="menuItem" value="${menuItem }"></c:set>
    <header>
    <h3 class="truyum">truYum</h3>
    <img src="images/truyum-logo-light.png" alt="logo" /> <nav> <a
        href="ShowMenuItemListAdmin" class="menu">Menu</a> </nav> </header>
    <h1 class="menu-items">Edit Menu Item</h1>
    <form action="EditMenuItem" method="post" name="menuItemForm"
        onsubmit="return validateMenuItemForm()">
        <input type="hidden" name="id" value="${menuItem.getId()}">
        <table class="menuedit">
            <tr>
                <td><label for="Name"><b>Name</b></label></td>
            </tr>
            <tr>
                <td colspan=7><input type="textbox" id="Name" name="name"
                    value="${menuItem.getName()}" autofocus size=123 spellcheck="false"
                    autocomplete="off" placeholder="Sandwich"></td>
            </tr>
            <tr>
                <td><label for="Price"><b>Price(Rs.)</b></label></td>
                <td><label><b>Active</b></label></td>
                <td><label><b>Date of Launch</b></label></td>
                <td><label><b>Category</b></label></td>
            </tr>
            <tr>
                <td><input type="textbox" id="price" name="price" autofocus size=20
                    value="${menuItem.getPrice()}" spellcheck="false" autocomplete="off"
                    placeholder="97"></td>
                <td><c:choose>
                        <c:when test="${menuItem.isActive()==true }">
                            <input type="radio" value="yes" name="active" checked />yes
                    <input type="radio" value="No" name="active" />No
                    </c:when>
                        <c:otherwise>
                            <input type="radio" value="yes" name="active" />yes
                    <input type="radio" value="No" name="active" checked="checked" />No
                    </c:otherwise>


                    </c:choose></td>
                <f:formatDate value="${menuItem.getDateOfLaunch() }" pattern="dd/MM/yyyy"
                    var="dateOfLaunch" />
                <td><input type="textbox" id="date" name="dateoflaunch" value="${dateOfLaunch}"
                    autofocus size=20 spellcheck="false" autocomplete="off" placeholder="27/04/2022"></td>
                <td><select name="category">

                        <option value="${menuItem.getCategory()}">${menuItem.getCategory()}</option>
                        <option value="Starters">Starters</option>
                        <option value="Main Course">Main Course</option>
                        <option value="Dessert">Dessert</option>
                        <option value="Drinks">Drinks</option>
                </select></td>
            </tr>
            <tr>
                <c:choose>
                    <c:when test="${menuItem.isFreeDelivery()==true }">
                        <td><input type="checkbox" value="Yes" name="freedelivery"
                            checked="checked" />Free Delivery</td>
                    </c:when>
                    <c:otherwise>
                        <td><input type="checkbox" value="No" name="freedelivery" />Free
                            Delivery</td>
                    </c:otherwise>
                </c:choose>

            </tr>
            <tr>
                <td><input type="submit" value="Save" size="35" class="button" /></td>
            </tr>
        </table>
    </form>
    <footer>
    <h4>Copyright&copy;2019</h4>
    </footer>
</body>
</html>