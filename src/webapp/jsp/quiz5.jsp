<%@page language ="java" contentType="text/html" pageEncoding="UTF-8" %>

<html>
<head>
    <title>QUIZ PAGE</title>
</head>
<body>
<h1 align="center">WELCOME IN QUIZ ABOUT CAPITALS</h1>
<h2>${error}</h2>
<form method="post" action="/quiz5">
    <fieldset>
        <legend>QUIZ</legend>
        <label><h3 align="center">What is the capital of Portugal?</h3></label>
        <div class="container" align="center">
            <input type="radio" name="quiz" id="Lisbon" value="Lisbon">
            <label for="Lisbon">Lisbon</label>

            <input type="radio" name="quiz" id="Madrid" value="Madrid">
            <label for="Madrid">Madrid</label>

            <input type="radio" name="quiz" id="Paris" value="Paris">
            <label for="Paris">Paris</label>

            <input type="radio" name="quiz" id="Amsterdam" value="Amsterdam">
            <label for="Amsterdam">Amsterdam</label>

            <br><br><hr>
            <button type="submit">SEND</button>
        </div>
    </fieldset>
</form>
</body>
</html>