<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Чтение</title>
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

        header {
            background-color: #333;
            padding: 10px;
            color: #fff;
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

        nav ul li form button {
            background-color: darkgrey;
            color: #fff;
            border: black;
            padding: 15px 40px;
            cursor: pointer;
            font-size: 18px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            position: absolute;
            top:100px;
        }

        table th, table td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        table th {
            background-color:darkgrey;
            color: #fff;
        }

        table tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .navbar-nav{
            font-size: 35px;
            font-family: 'Montserrat';
        }


        .custom-navbar{
            color: white; /* Здесь можно указать ваш собственный цвет текста */
        }
    </style>
</head>
<body>
<script src="js/reader.js"></script>


<nav class="navbar navbar-expand-lg fixed-top custom-navbar">
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li>
                <form action="write">
                    <button type="submit">Запись</button>
                </form>
            </li>
            <li>
                <form action="read">
                    <button type="submit">Чтение</button>
                </form>
            </li>
        </ul>
    </div>
</nav>



<table>
    <thead>
    <tr>
        <th>Название</th>
        <th>Тип кузова</th>
        <th>КПП</th>
        <th>Двигатель</th>
        <th>Год</th>
    </tr>
    </thead>
    <tbody id="table_body">
    </tbody>
</table>



</body>
</html>