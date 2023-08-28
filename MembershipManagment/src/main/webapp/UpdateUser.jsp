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
</style>
</head>
<body>
<nav class="navbar" style="background-color: #e3f2fd;">
 <div class="btn-group" role="group" aria-label="Basic outlined example">
  <button type="button" class="btn btn-outline-primary"><a href="index.jsp" class="btn btn-outline-primary">HOME</a></button>
  <button type="button" class="btn btn-outline-primary"><a href="aboutus.jsp" class="btn btn-outline-primary">About US</a></button>
  <button type="button" class="btn btn-outline-primary"><a href="contact.jsp" class="btn btn-outline-primary">Contact</a></button>
</nav>
<form action="updateuser" method="Post">
	<table>
        <tr>
            <td>Id:</td>
            <td><input type="text" name="Id" class="form-element" value="${user.id}"/></td>
        </tr>
        <tr>
            <td>Name:</td>
            <td><input type="text" name="Name" class="form-element"/></td>
        </tr>
        <tr>
            <td>Age:</td>
            <td><input type="text" name="age" class="form-element"/></td>
        </tr>
        <tr>
            <td>Gender:</td>
				<td>
        <select name="gender" class="form-element">
    <option value="male">Male</option>
    <option value="female">Female</option>
	</select>
    </td>
        </tr>
        <tr>
            <td>StartDate:</td>
            <td><input type="date" name="startdate" class="form-element"/></td>
        </tr>
        <tr>
            <td>EndDate:</td>
            <td><input type="date" name="enddate" class="form-element"/></td>
        </tr>
    </table>
    <input type="submit" class="btn btn-outline-success"  value="  UPDATE  ">
</form>
</body>
</html>