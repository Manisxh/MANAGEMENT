<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Member List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    
</head>
<body>
<nav class="navbar" style="background-color: #e3f2fd;">
 <div class="btn-group" role="group" aria-label="Basic outlined example">
  <button type="button" class="btn btn-outline-primary"><a href="index.jsp" class="btn btn-outline-primary">HOME</a></button>
  <button type="button" class="btn btn-outline-primary"><a href="aboutus.jsp" class="btn btn-outline-primary">About US</a></button>
  <button type="button" class="btn btn-outline-primary"><a href="contact.jsp" class="btn btn-outline-primary">Contact</a></button>
</nav>
    <h1 align="center">Member List</h1>
    <table style="width: 100%" class="table table-striped table-hover">
        <tr>
            <th>Member ID</th>
            <th >Member Name</th>
            <th>Member Age</th>
            <th>Member Gender</th>
            <th>Start Date</th>
            <th>End Date</th>
            <th colspan="2"></th>
        </tr>
        <c:forEach items="${userlist}" var="user">
            <tr align="center">
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.age}</td>
                <td>${user.gender}</td>
                <td>${user.startdate}</td>
                <td>${user.enddate}</td>
                <td><a href="edit?id=${user.id}" class="btn btn-outline-primary"><i class="fas fa-edit"></i> Edit</a></td>
                <td><a href="delete?id=${user.id}" class="btn btn-outline-danger"><i class="fas fa-trash-alt"></i>Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>