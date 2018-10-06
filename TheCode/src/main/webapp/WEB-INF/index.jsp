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
		<form action="/check" method="POST" class="row">
		 <div class="form-group col-md-3 offset-4">
		    <span class="text-danger"> <c:out value="${error}"></c:out> </span>
		    <input type="text" class="form-control" name="code" placeholder="What is the code?">
		    <br>
		    <button class="btn btn-primary" type="submit">Try Code</button>
		  </div>
		</form>
	</div>
</body>
</html>