<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@include file="xdmin/common/head.jsp"%>

</head>
<body>
IncheonBreadList

<br>aaa : <c:out value="${resultCode }"/>
<br>aaa : <c:out value="${resultMsg }"/>
<br>aaa : <c:out value="${items }"/>
<br>aaa : <c:out value="${item }"/>
<br>aaa : <c:out value="${fn:length(item) }"/>

<c:forEach items="${item}" var="item" varStatus="status">
	<c:out value="${item.lot }"/>
	<br><c:out value="${item.no }"/>	
	<br><c:out value="${item.bsn_nm }"/>	
	<br><c:out value="${item.lt_addr }"/>	
	<br><c:out value="${item.cat }"/>
	<br><c:out value="${item.road_nm_addr }"/>
	<br><c:out value="${item.lat }"/>	
</c:forEach>

</body>
</html>