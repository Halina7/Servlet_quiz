<%@page language ="java" contentType="text/html" pageEncoding="UTF-8" %>

<html>
<head>
    <title>QUIZ PAGE</title>
</head>
<body>
<h1 align="center">WELCOME IN QUIZ ABOUT CAPITALS</h1>
<h2>${error}</h2>
<form method="post" action="/quiz4">
    <fieldset>
        <legend>QUIZ</legend>
        <label><h3 align="center">What is the capital of Serbia?</h3></label>
        <div class="container" align="center">
            <input type="radio" name="quiz" id="Skopje" value="Skopje">
            <label for="Skopje">Skopje</label>

            <input type="radio" name="quiz" id="Belgrade" value="Belgrade">
            <label for="Belgrade">Belgrade</label>

            <input type="radio" name="quiz" id="Sofia" value="Sofia">
            <label for="Sofia">Sofia</label>

            <input type="radio" name="quiz" id="Ljubljana" value="Ljubljana">
            <label for="Ljubljana">Ljubljana</label>

            <br><br><hr>
            <button type="submit">SEND</button>
        </div>
    </fieldset>
</form>
</body>
</html>