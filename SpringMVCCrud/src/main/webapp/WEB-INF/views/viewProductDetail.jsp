<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Save Product</title>
</head>
<body>
<div id="global">
    <h4>The product has been saved.</h4>
        <h5>Details:</h5>
        Product Name: ${product.name}<br/>
        Description: ${product.description}<br/>
        <p>Following files are uploaded successfully.</p>
        <ol>
        <c:forEach items="${product.images}" var="image">
            <li>${image.originalFilename}
            <%-- <img width="100" src="<c:url value="../upload/"/>${image.originalFilename}"/> --%>
            <img src="${pageContext.request.contextPath}/upload/${image.originalFilename}"><br><br>
            </li>
        </c:forEach>
        </ol>
</div>
</body>
</html>