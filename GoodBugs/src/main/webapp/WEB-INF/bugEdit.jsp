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
<main class="container">
	<h4><a href="home.do">Home</a></h4>

<c:choose>
<c:when test="${not empty bug}">
<h1>Edit Bug</h1>
</c:when>
<c:otherwise>
<h1>Add New Bug</h1>
</c:otherwise>
</c:choose>

<c:choose>
<c:when test="${not empty bug}">
<form action="editBug.do" method="post">
</c:when>
<c:otherwise>
<form action="addBug.do" method="post">
</c:otherwise>
</c:choose>
	<input type="hidden" name="bugId" value="${bug.id}">
	<div class="row">
	<label class="form-label col-auto" for="name">Name</label>
	<input class="form-control col" type="text" name="name" value="${bug.name}">
	</div>
	<div class="row">
	<label class="form-label col-auto" for="scientificName">Scientific Name</label>
	<input class="form-control col" type="text" name="scientificName" value="${bug.scientificName}">
	</div>
	<div class="row">
	<label class="form-label col-auto" for="imageUrl">Image Url</label>
	<input class="form-control col" type="text" name="imageUrl" value="${bug.imageUrl}">
	</div>
	<div class="row">
	<label class="form-label col-auto" for="description">Description</label>
	<textarea class="form-control col" name="description">${bug.description}</textarea>
	</div>
	<c:choose>
	<c:when test="${not empty bug}">
	<button class="btn btn-primary">Update Bug</button>
	</c:when>
	<c:otherwise>
	<button class="btn btn-primary">Add Bug</button>
	</c:otherwise>
	</c:choose>
	
</form>
</main>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js" integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq" crossorigin="anonymous"></script>
</body>
</html>