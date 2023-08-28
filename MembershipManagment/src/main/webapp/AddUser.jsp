<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<style>
    .form-element {
        width: 200px;
        padding: 5px;
    } 
    form {
	padding: 20px;
	border-radius: 5px;
	width: 400px;
	margin: 0 auto;
}
input[type="submit"] {
	margin: 0 auto;
	border-radius: 30px;
	padding: 1px 2px;
	cursor: pointer;
}
</style>
</head>
<body>
<nav class="navbar" style="background-color: #e3f2fd;">
 <div class="btn-group" role="group" aria-label="Basic outlined example">
  <button type="button" class="btn btn-outline-primary"><a href="index.jsp" class="btn btn-outline-primary">HOME</a></button>
  <button type="button" class="btn btn-outline-primary"><a href="aboutus.jsp" class="btn btn-outline-primary">About US</a></button>
  <button type="button" class="btn btn-outline-primary"><a href="index.jsp" class="btn btn-outline-primary">Contact</a></button>
</div>
</nav>
	<form:form action="adduser" method="post">
		<table class="center-table" style="width:100%; text-align:center;">
			<tr>
				<td>Name:</td>
				<td><form:input path="Name" class="form-element"/></td>
			</tr>
			<tr>
				<td>Age:</td>
				<td><form:input path="age" class="form-element"/></td>
			</tr>
			<tr>
				<td>Gender:</td>
				<td>
        <form:select path="gender" class="form-element">
            <form:option value="male">Male</form:option>
            <form:option value="female">Female</form:option>
        </form:select>
    </td>
    
			</tr>
			<tr>
				<td>Startdate:</td>
				<td><form:input path="startdate" type="date" class="form-element"/></td>
			</tr>
			<tr>
				<td>Enddate:</td>
				<td><form:input path="enddate" type="date" class="form-element"/></td>
			</tr>
		</table><br>
		<div class="d-grid gap-2 col-6 mx-auto">
  			<button class="btn btn-outline-primary" type="submit">ADD</button>
		</div>
	</form:form>
	
</body>
</html>