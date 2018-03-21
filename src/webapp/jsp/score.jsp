<%@page language ="java" contentType="text/html" pageEncoding="UTF-8" %>

<html>
<head>
    <title>QUIZ PAGE</title>
</head>
<body>
<h1  align="center">WELCOME IN QUIZ ABOUT CAPITALS</h1>
<form action="/quiz">
    <fieldset>
        <legend>QUIZ RESULT</legend>
        <div class="container" align="center">
            Your score is: <b> ${sessionScope.score}/ 5</b>
            <br><br>
            See you !!!
        </div>
    </fieldset>
</form>
</body>
</html>


