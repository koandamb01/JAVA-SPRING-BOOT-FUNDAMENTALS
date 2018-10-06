<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "java.io.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
 <link rel="stylesheet" type="text/css" href="style.css">
<title>Dojo Survey</title>
</head>
<body>
	<div class="container">
        <h4>Please fill out the survey</h4>
        <form action="/process" method="POST">
            <div class="form-group">
                 <label for="">
                     Your Name: <input type="text" class="form-control" name="name"   placeholder="Full name">
                </label>
            </div>
            <div class="form-group">
                <label>
                    Dojo Location: 
                    <select class="form-control" name="location">
                        <option value="San Jose">San Jose</option>
                        <option value="Seattle">Seattle</option>
                        <option value="LA">LA</option>
                        <option value="Dallas">Dallas</option>
                        <option value="Chicago">Chicago</option>
                        <option value="Tulsa">Tulsa</option>
                        <option value="East Bay">East Bay</option>
                    </select>
                </label>
            </div>
            <div class="form-group">
                <label>
                    Favorites Language
                    <select class="form-control" name="language">
                        <option value="PHP">PHP</option>
                        <option value="JavaScript">JavaScript</option>
                        <option value="Java">Java</option>
                        <option value="Python">Python</option>
                        <option value="Swift">Swift</option>
                    </select>
                </label>
            </div>
            <div class="form-group">
                <label>Comment (optional)</label>
                <textarea name="comment"  class="form-control" rows="3" cols="50"></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</body>
</html>