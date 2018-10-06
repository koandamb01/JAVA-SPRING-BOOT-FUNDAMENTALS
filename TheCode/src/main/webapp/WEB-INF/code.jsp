<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "java.io.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<title>The Code</title>
</head>
<body>
	<div class="container text-center">
		<br><br>
		<span class="text-success"> <c:out value="${success}"></c:out> </span>
		<ul class="list-group">
			<li class="list-group-item active">All the Code list</li>
			<c:forEach var="code" items="${codeList}">
				<li class="list-group-item"> <c:out value="${code}"></c:out></li>
			</c:forEach>
		</ul>
	</div>
</body>
</html>