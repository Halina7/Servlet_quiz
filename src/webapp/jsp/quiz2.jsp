<%@page language ="java" contentType="text/html" pageEncoding="UTF-8" %>

<html>
<head>
    <title>QUIZ PAGE</title>
</head>
<body>
<h1 align="center">WELCOME IN QUIZ ABOUT CAPITALS</h1>
<h2>${error}</h2>
<form method="post" action="/quiz2">
    <fieldset>
        <legend>QUIZ</legend>
        <label><h3 align="center">What is the capital of Albania?</h3></label>
        <div class="container" align="center">
            <input type="radio" name="quiz" id="Atheny" value="Atheny">
            <label for="Atheny">Atheny</label>

            <input type="radio" name="quiz" id="Wien" value="Wien">
            <label for="Wien">Wien</label>

            <input type="radio" name="quiz" id="Sofia" value="Sofia">
            <label for="Sofia">Sofia</label>

            <input type="radio" name="quiz" id="Tirana" value="Tirana">
            <label for="Tirana">Tirana</label>

            <br><br><hr>
            <button type="submit">SEND</button>
        </div>
    </fieldset>
</form>
</body>
</html>