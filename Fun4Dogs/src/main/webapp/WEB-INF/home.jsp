<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fun 4 Dogs Dog Site Tracker</title>
<jsp:include page="bootstrapHead.jsp" />

</head>
<body>

<main class="container">
	
	<h1>Fun 4 Dogs</h1>

	<c:if test="${not empty dogparks }">
		<table class="table table-striped">
			<thead class="table-dark">
				<tr>
					<th>ID</th>
					<th>Name</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="park" items="${dogparks}">
					<tr>
						<td>${park.id }</td>
						<td><a href="showPark.do?parkId=${park.id}">${park.name}</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:if>
</main>

	<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>