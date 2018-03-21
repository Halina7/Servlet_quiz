<%@page language ="java" contentType="text/html" pageEncoding="UTF-8" %>

<html>
<head>
    <title>QUIZ 2 PAGE</title>
</head>
<body>
<h2 align="center">${error}</h2>
<form method="post" action="/newQuizPage">
    <fieldset>
        <legend>QUIZ</legend>
        <label><h3 align="center">${question.question}</h3></label>
        <div class="container" align="center">
            <input type="radio" name="answer" id="A" value="A">${question.answerA}
            <label for="A"></label>

            <input type="radio" name="answer" id="B" value="B">${question.answerB}
            <label for="B"></label>

            <input type="radio" name="answer" id="C" value="C">${question.answerC}
            <label for="C"></label>

            <input type="radio" name="answer" id="D" value="D">${question.answerD}
            <label for="D"></label>

            <br><br><hr>
            <button type="submit">Next</button>
        </div>
    </fieldset>
</form>
</body>
</html>