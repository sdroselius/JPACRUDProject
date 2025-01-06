<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Comedy Show</title>
	<jsp:include page="bootstrapHead.jsp" />
</head>
<body>

<div class="container">
	<h1>${comedyShow.performer}</h1>
	<div>
		<img alt="${comedyShow.performer }" src="${comedyShow.performerImageUrl }" class="performer-image">
	</div>
	<h2>${comedyShow.performanceDate }</h2>
	<p>Venue: ${comedyShow.venue }</p>
	<p>Were they heckled: ${comedyShow.heckled }</p>
	<p>My Rating: ${comedyShow.rating }</p>
	<h6>My remarks:</h6>
	<blockquote>${comedyShow.remarks }</blockquote>
</div>

	<jsp:include page="bootstrapFoot.jsp" />

</body>
</html>