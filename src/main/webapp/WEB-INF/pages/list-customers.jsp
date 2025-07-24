<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Customers Info</title>
    <link href="${pageContext.request.contextPath}/css/style.css" type="text/css" rel="stylesheet"/>
</head>
<body>
<div id="wrapper">
    <div id="header">
        <h2>Customer Relationship Manager Application</h2>
    </div>
</div>
<div id="container">
    <div id="content">
        <%--Put new Button:: Add Customer--%>
        <input type="button" value="Add Customer" onclick="window.location.href='addForm'; return false;"
               class="add-button">
        <table>
            <tr>
                <th>CID</th>
                <th>firstName</th>
                <th>lastName</th>
                <th>email</th>
                <th>Action</th>
            </tr>
            <c:forEach var="customer" items="${customerList}">
                <c:url var="custUpdateLink" value="/customer/updateForm">
                    <c:param name="customerId" value="${customer.cid}"/>
                </c:url>
                <c:url var="custDeleteLink" value="/customer/delete">
                    <c:param name="customerId" value="${customer.cid}"/>
                </c:url>
                <tr>
                    <td>${customer.cid}</td>
                    <td>${customer.firstName}</td>
                    <td>${customer.lastName}</td>
                    <td>${customer.email}</td>
                    <td>
                        <a href="${custUpdateLink}">Update</a>&nbsp;&nbsp;
                        <a href="${custDeleteLink}"
                           onclick="if(!(confirm('Are you sure u want to delete this customer?')))return false;">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>