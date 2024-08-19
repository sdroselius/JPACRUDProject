<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Woofer Park</title>
<jsp:include page="bootstrapHead.jsp" />

</head>
<body>

<c:choose>
<c:when test="${empty dogPark }">
	<h1>Park not found</h1>
</c:when>
<c:otherwise>
	<h1>${dogPark.name }</h1>
	
	<a href="goToEditPark.do?parkId=${dogPark.id }">Edit Dog Park</a>
	<a href="deletePark.do?parkId=${dogPark.id }">Delete Dog Park</a>
	
</c:otherwise>
</c:choose>

	<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>