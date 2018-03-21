<%@page language ="java" contentType="text/html" pageEncoding="UTF-8" %>

<html>
<head>
    <title>QUIZ PAGE</title>
</head>
<body>
<h1 align="center">WELCOME IN QUIZ ABOUT CAPITALS</h1>
<h2>${error}</h2>
<form method="post" action="/quiz1">
    <fieldset>
        <legend>QUIZ</legend>
        <label><h3 align="center">What is the capital of Germany?</h3></label>
        <div class="container" align="center">
            <input type="radio" name="quiz" id="Athens" value="Athens">
            <label for="Athens">Athens</label>

            <input type="radio" name="quiz" id="Dublin" value="Dublin">
            <label for="Dublin">Dublin</label>

            <input type="radio" name="quiz" id="Berlin" value="Berlin">
            <label for="Berlin">Berlin</label>

            <input type="radio" name="quiz" id="Paris" value="Paris">
            <label for="Paris">Paris</label>

            <br><br><hr>
            <button type="submit">SEND</button>
        </div>
    </fieldset>
</form>
</body>
</html>