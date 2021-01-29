<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update University page</title>
    <style type="text/css">
        <#include "stylesheet3.css">
    </style>
</head>
<body>
<div class="container1">
    <h2><a href="/students_uni_war/">MAIN</a>&ensp; &ensp;   |  &ensp;  UNIVERSITIES with Stacy &ensp;   |  &ensp; &ensp;  <a href="/students_uni_war/universities">MY LIST</a></h2>
    <hr>
</div>
<div class="container2">
<form name="university" action="/students_uni_war/updateUni" method ="post">
    <p>Id</p>
    <input title="Id" type="text" name="id" value="${university.id}">
    <p>Name</p>
    <input title="Name" type="text" name="name" value="${university.name}">
    <p>Ranking</p>
    <input title="Ranking" type="text" name="ranking" value="${university.ranking}">
    <p>Type</p>
    <input title="Type" type="text" name="type" value="${university.type}">
    <p>Location</p>
    <input title="Name" type="text" name="location" value="${university.location}">
    <p>Application fee</p>
    <input title="Ranking" type="number" name="appFee" value="${university.appFee}">
    <p>Examinations</p>
    <input title="Examinations" type="text" name="examinations" value="${university.examinations}">
    <p>Other requirements</p>
    <input title="Other requirements" type="text" name="otherRequirements" value="${university.otherRequirements}">
    <p>Scholarships</p>
    <input title="Scholarships" type="text" name="scholarships" value="${university.scholarships}">
    <p>Tuition fee</p>
    <input title="Tuition fee" type="number" required name="tuitionFee" value="${university.tuitionFee}">
    <p>Complete</p>
    <input title="Complete" type="text" name="complete" value="${university.complete}">
    <br>
    <br>
    <input class="k" type="submit" value="Submit">
</form>
</div>
<div class="container3">
<img src="https://i.pinimg.com/564x/c4/4c/6a/c44c6a1bb507389d2b0701d19e472f95.jpg"><img src="https://i.pinimg.com/474x/80/c9/45/80c94527efe39dc2f68deb6486d339ff.jpg"><img src="https://i.pinimg.com/564x/e6/84/0e/e6840eccec5bbf7b6d43a958ba66fd9b.jpg">
</div>
</body>
</html>