<%-- 
    Document   : shoppingList
    Created on : Oct 11, 2017, 1:43:07 PM
    Author     : 463849
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/header.html" />

        <h1>Shopping List</h1>
         
        <div>Hello, ${user} <a href="ShoppingList?action=logout">Logout</a></div>
        
        <h2>List</h2>
        <form method="post" action="ShoppingList?action=add">
            Add Item: <input type="text" name="item">
            <input type="submit" value="Add">
        </form>
        
        <form method="post" action="ShoppingList?action=delete">
            <c:forEach var="item" items="${sessionScope.itemList}">
                <input type="radio" name="items" value="<c:out value="${item}"/>">
                <label><c:out value="${item}"/></label><br>
            </c:forEach>
        
            <c:if test="${not empty sessionScope.itemList}">
                <br><input type="submit" value="Delete">
            </c:if>
        </form>
        
<c:import url="/WEB-INF/footer.html" />
