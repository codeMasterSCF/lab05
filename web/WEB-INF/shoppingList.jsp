<%-- 
    Document   : shoppingList
    Created on : Oct 11, 2017, 1:43:07 PM
    Author     : 463849
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/header.html" />

        <h1>Shopping List</h1>
        
        <form method="post" action="/ShoppingList">
            Username: <input type="text" name="user" value="">
            <input type="submit" value="Register Name"><br><br>
        </form><br>
        
<c:import url="/WEB-INF/footer.html" />
