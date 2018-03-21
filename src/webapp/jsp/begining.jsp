<%@page language ="java" contentType="text/html" pageEncoding="UTF-8" %>

<html>
<head>
    <title>QUIZ 2 PAGE</title>
</head>
<body>
<h1 align="center">WELCOME IN NEW QUIZ </h1>
<form method="post" action="/newQuizIni">
    <fieldset>
        <legend>QUIZ</legend>
        <label align="center">Do you want to start this quiz?</label>
        <div class="container" align="center">
            <input type="radio" name="answer" id="yes" value="yes" checked="checked">
            <label for="yes">Yes</label>
            <input type="radio" name="answer" id="no" value="no">
            <label for="no">No</label>
            <br><br><hr>
            <button type="submit">OK</button>
        </div>
    </fieldset>
</form>
</body>
</html>