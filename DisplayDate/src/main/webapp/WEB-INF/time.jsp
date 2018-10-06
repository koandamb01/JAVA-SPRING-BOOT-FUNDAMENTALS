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
		<h1 class="green"><c:out value="${ currentTime }"></c:out></h1>
	</div>
	
	<script type="text/javascript" src="js/time.js"></script>
</body>
</html>