<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "java.io.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/style.css">
<title>Display Date</title>
</head>
<body>
	<div class="container">
		<h1 class="blue">
			<c:out value="${ dayString }"></c:out>, the <c:out value="${ dayNumber }"></c:out> of <c:out value="${ monthString }"></c:out>, <c:out value="${ yearString }"></c:out>
		</h1>
	</div>
	<script type="text/javascript" src="js/date.js"></script>
</body>
</html>