<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Запись</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&display=swap" rel="stylesheet" type="text/css">
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
    }


    nav ul {
      list-style-type: none;
      padding: 0;
      margin: 0;
    }

    nav ul li {
      display: inline-block;
      margin-right: 10px;
    }

    nav ul li form {
      display: inline-block;
    }


    form {
      width: 50%;
      padding: 30px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      border-radius: 10px;
      background-color: #fff;
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
    }

    form p {
      font-weight: bold;
    }

    input[type="text"],
    input[type="number"] {
      width: 100%;
      padding: 10px;
      margin-top: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }

    button {
      background-color: darkgrey;
      color: #fff;
      border: black;
      padding: 15px 25px;
      cursor: pointer;
      font-size: 16px;
      margin-top: 20px;
    }


    .navbar-brand {
      background-color: darkgrey;
      color: #fff;
      border: black;
      padding: 15px 40px;
      cursor: pointer;
      font-size: 18px;
      font-family: 'Montserrat';
    }

  </style>
</head>
<body>

<nav class="navbar navbar-expand-lg fixed-top custom-navbar">
  <a class="navbar-brand" href="/labb22/read">Чтение</a>
</nav>



<script src="js/writer.js"></script>

<div>
  <form>
    <p>Добавить автомобиль в список</p>
    <input id="name" type="text" placeholder="Название автомобиля">
    <input id="body" type="text" placeholder="Тип кузова">
    <input id="transmission" type="text" placeholder="Коробка">
    <input id="engine" type="text" placeholder="Двигатель">
    <input id="year" type="number" placeholder="Год">
    <button onclick="getData()">Добавить</button>
  </form>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>
</html>