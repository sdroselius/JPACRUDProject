<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Good Bugs</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
<link rel="stylesheet" href="css/main.css">
</head>
<body>

<h1>Good Bugs!</h1>

<main class="container">
<h5><a href="addBug.do">Tell us about another good bug!</a></h5>
<hr>
	<table class="table table-striped table-hover">
		<thead class="table-dark"> 
			<tr>
				<th>Image</th>
				<th>Name</th>
				<th>Scientific Name</th>
			</tr>
		</thead>
		<tbody>
	
		<c:forEach var="bug" items="${bugList}">
			<tr>
				<td> <img src="${bug.imageUrl}" class="bugImageThumbnail"></td>
				<td>
					<a href="getBug.do?bugId=${bug.id}"> ${bug.name} </a>
				</td>
				<td>${bug.scientificName}</td>
			</tr>
		</c:forEach>

		</tbody>
	</table>
</main>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js" integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq" crossorigin="anonymous"></script>
</body>
</html>