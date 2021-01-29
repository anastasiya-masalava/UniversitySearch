<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Universities</title>
    <style type="text/css">
        <#include "stylesheet2.css">
    </style>
</head>
<body>
<div class="container">
    <div class="container1">

        <h2><a class="k" href="/students_uni_war/hello">INFORMATION</a>&ensp; &ensp;   |  &ensp;  UNIVERSITIES with Stacy &ensp;   |  &ensp; &ensp;  <a class="k" href="/students_uni_war/">MAIN</a></h2>
        <hr>
        </div>
        <div class="container2">
            <img class="v" src="https://www.clipartkey.com/mpngs/m/172-1725445_color-brown-palette-anatomy-aesthetic-kpop-brown-aesthetic.png"> <img class="v2" src="https://www.clipartkey.com/mpngs/m/172-1725445_color-brown-palette-anatomy-aesthetic-kpop-brown-aesthetic.png">
<h1>UNIVERSITY LIST</h1>
            <div class="container3">
<table align="center">
<tr>
    <th>Id</th>
    <th>Name</th>
    <th>Ranking</th>
    <th>Type</th>
    <th>Location</th>
    <th>Application fee</th>
    <th>Examinations</th>
    <th>Other requirements</th>
    <th>Scholarships</th>
    <th>TuitionFee</th>
    <th>Complete</th>
</tr>
  <#list universities as university>
 <tr>
     <td><a href="/students_uni_war/university/${university.id}">${university.id}</a></td>
     <td>${university.name}</td>
     <td>${university.ranking}</td>
     <td>${university.type}</td>
     <td>${university.location}</td>
     <td>${university.appFee}</td>
     <td>${university.examinations}</td>
     <td>${university.otherRequirements}</td>
     <td>${university.scholarships}</td>
     <td>${university.tuitionFee}</td>
     <td>${university.complete}</td>
     <td><a href="/students_uni_war/delete/${university.id}">Delete</a></td>
     <td><a href="/students_uni_war/update/${university.id}">Update</a></td>
 </tr>
  </#list>
</table>
            <br>
            <br>

        <form action="/students_uni_war/addUni">
            <input type="submit" value="ADD UNIVERSITY"/>
        </form>
            </div>
    </div>
</div>
</body>
</html>