<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "java.io.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<title>Dojo Survey</title>
<style>
     .container{
         width: 70% !important;
         margin-top: 50px;
     }
 </style>
</head>
<body>
    <div class="container">
        <ul class="list-group">
            <li class="list-group-item active">
                <h1>Submission Info</h1>
            </li>
            <li class="list-group-item d-flex justify-content-between align-items-center">
                Name:
                <span class="badge"><c:out value="${ dataMap['name'] }"/> </span>
            </li>
            <li class="list-group-item d-flex justify-content-between align-items-center">
                Dojo Location:
                <span class="badge"><c:out value="${ dataMap['location'] }"/></span>
            </li>
            <li class="list-group-item d-flex justify-content-between align-items-center">
                Favorite Language:
                <span class="badge"><c:out value="${ dataMap['language'] }"/></span>
            </li>
            <li class="list-group-item d-flex justify-content-between align-items-center">
                Comment:
                <span class="badge"><c:out value="${ dataMap['comment'] }"/></span>
            </li>
        </ul>
        <br>
        <a href="/">
            <button class="btn btn-primary">
                Go Back
            </button>
        </a>
    </div>
</body>
</html>