<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>University info</title>
    <style type="text/css">
        <#include "stylesheet3.css">
    </style>
</head>
<body>
<div class="container1">
    <h2><a href="/students_uni_war/">MAIN</a>&ensp; &ensp;   |  &ensp;  UNIVERSITIES with Stacy &ensp;   |  &ensp; &ensp;  <a href="/students_uni_war/universities">MY LIST</a></h2>
    <hr>
</div>
<div class="container4">
<table>
    <tr>
        <td>Id</td>
        <td>${university.id}</td>
    </tr>
    <tr>
        <td>Name</td>
        <td>${university.name}</td>
    </tr>
    <tr>
        <td>Ranking</td>
        <td>${university.ranking}</td>
    </tr><tr>
        <td>Type</td>
        <td>${university.type}</td>
    </tr>
    <tr>
        <td>Location</td>
        <td>${university.location}</td>
    </tr>
    <tr>
        <td>Application fee</td>
        <td>${university.appFee}</td>
    </tr>
    <tr>
        <td>Other Requirements</td>
        <td>${university.otherRequirements}</td>
    </tr>
    <tr>
        <td>Scholarships</td>
        <td>${university.scholarships}</td>
    </tr>
    <tr>
        <td>Tuition fee</td>
        <td>${university.tuitionFee}</td>
    </tr>
    <tr>
        <td>Complete</td>
        <td>${university.complete}</td>
    </tr>

</table>
    <br>

    <form action="/students_uni_war/universities">
        <input class="k" type="submit" value="Back"/>
    </form>
</div>
<br>
<div class="container3n">
    <img class="n" src="https://i.pinimg.com/564x/1a/e2/22/1ae22241f27f72278a8c54ba5c5766cc.jpg"><img class="n" src="https://i.pinimg.com/564x/da/76/de/da76de7db4057070dcc19c2f890386fd.jpg"><img class="n" src="https://i.pinimg.com/474x/59/c1/a8/59c1a82befad6fcf58b37b66c101282c.jpg">
</div>
</body>
</html>