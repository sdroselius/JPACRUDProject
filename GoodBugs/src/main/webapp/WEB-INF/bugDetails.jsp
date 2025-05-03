<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Good Bugs</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/main.css">
</head>
<body>

	<main class="container">

	<h4><a href="home.do">Home</a></h4>
		<h1>Good Little Bug</h1>

		<c:choose>
			<c:when test="${empty bug }">
				<h3>Sorry, bug not found.</h3>
			</c:when>
			<c:otherwise>
				<h2>Say Hello to the ${bug.name } (${bug.scientificName })</h2>
				<p><img alt="Picture of ${bug.name}" src="${bug.imageUrl}"></p>

			</c:otherwise>
		</c:choose>
	</main>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq"
		crossorigin="anonymous"></script>
</body>
</html>