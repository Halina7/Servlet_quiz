<%@page language ="java" contentType="text/html" pageEncoding="UTF-8" %>

<html>
<head>
    <title>QUIZ PAGE</title>
</head>
<body>
    <h1 align="center">WELCOME IN QUIZ ABOUT CAPITALS</h1>
    <form method="post" action="/quiz">
    <fieldset>
        <legend>QUIZ</legend>
        <label align="center">Do you want to start our quiz?</label>
        <div class="container" align="center">
            <input type="radio" name="quiz" id="yes" value="yes" checked="checked">
            <label for="yes">Yes</label>
            <input type="radio" name="quiz" id="no" value="no">
            <label for="no">No</label>
            <br><br><hr>
            <button type="submit">OK</button>
        </div>
    </fieldset>
    </form>
</body>
</html>