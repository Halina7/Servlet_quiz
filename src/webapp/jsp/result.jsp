<%@page language ="java" contentType="text/html" pageEncoding="UTF-8" %>

<html>
<head>
    <title>QUIZ 2 PAGE</title>
</head>
<body>
<form  action="/newQuizPage">
    <fieldset>
        <legend>QUIZ RESULT</legend>
            <div class="container" align="center">
                <h1 >YOUR SCORE IN  THIS QUIZ IS: <br>
                    <b> ${sessionScope.score}/ 5</b></h1>
                <br><br>
                <h3>  SEE YOU !!! </h3>
            </div>
    </fieldset>
</form>
</body>
</html>