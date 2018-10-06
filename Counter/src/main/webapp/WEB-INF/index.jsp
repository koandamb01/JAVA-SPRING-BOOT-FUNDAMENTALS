<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "java.io.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<title>Counter</title>
</head>
<body>
	<div class="container center-align">
		<br><br><br>
		<p>You have visited <span class="blue-text">http://localhost:8080</span> <c:out value="${counter}"></c:out> times</p>
		<br>
		<a href="/add" class="btn-small green">Add 2</a>
		<a href="reset" class="btn-small red">Reset</a>
	</div>
</body>
</html>