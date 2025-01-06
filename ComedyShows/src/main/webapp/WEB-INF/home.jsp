<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>My Comedy Shows</title>
	<jsp:include page="bootstrapHead.jsp" />
</head>
<body>

<div class="container">

	<h1>Favorite Comedy Shows</h1>

		<table class="table table-striped table-hover">
		<thead class="table-primary">
			<tr>
				<th>Image</th>
				<th>Performer</th>
				<th>Date</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="show" items="${showList}">
				<tr>
					<td> <img src="${show.performerImageUrl }" class="performer-thumbnail"></td>
					<td><a href="getShow.do?showId=${show.id}"> ${show.performer }
					</a></td>
					<td>${show.performanceDate }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>	
	<jsp:include page="bootstrapFoot.jsp" />
	
</body>
</html>