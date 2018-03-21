<%@page language ="java" contentType="text/html" pageEncoding="UTF-8" %>

<html>
<head>
    <title>QUIZ PAGE</title>
</head>
<body>
<h1 align="center">WELCOME IN QUIZ ABOUT CAPITALS</h1>
<h2>${error}</h2>
<form method="post" action="/quiz3">
    <fieldset>
        <legend>QUIZ</legend>
        <label><h3 align="center">What is the capital of Croatia?</h3></label>
        <div class="container" align="center">
            <input type="radio" name="quiz" id="Sarajevo" value="Sarajevo">
            <label for="Sarajevo">Sarajevo</label>

            <input type="radio" name="quiz" id="Podgorica" value="Podgorica">
            <label for="Podgorica">Podgorica</label>

            <input type="radio" name="quiz" id="Sofia" value="Sofia">
            <label for="Sofia">Sofia</label>

            <input type="radio" name="quiz" id="Zagreb" value="Zagreb">
            <label for="Zagreb">Zagreb</label>

            <br><br><hr>
            <button type="submit">SEND</button>
        </div>
    </fieldset>
</form>
</body>
</html>