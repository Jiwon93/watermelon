<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>b</title>
</head>
<body>
<h1>
	Hello b world!  !
</h1>
<%-- 
	<c:choose>
		<c:when test="${fn:length(list) eq 0 }">
		</c:when>
		<c:otherwise>
			<c:forEach items="${list }" var="list" varStatus="status">
			</c:forEach>
		</c:otherwise>
	</c:choose>
 --%>
<P>  The time on the server is ${serverTime}. </P>
</body>
</html>