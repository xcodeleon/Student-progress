<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>


<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Список студентов</title>
    <link rel="stylesheet" href="html/resources/css/style.css" type='text/css' media='all'/>
    <script src="html/resources/js/functions.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
<h1>Система управления студентами и их успеваемостью</h1>


<a href="/logout" class="logout-link">Logout</a>
<a href="/" class="main-link links">На главную</a>
<div id="student-list-buttons">
    <div class="display-flex">
        <input type="submit" value="Просмотреть успеваемость студентов" class="big-button" onclick="studentProgress()">

        <form action="/student-create" method="get">

            <input type="submit" value="Создать студента..." class="small-button">

        </form>

    </div>
    <div class="display-flex">

        <input type="submit" value="Модифицировать выбранного студента" class="big-button"
               onclick="modifyStudent()">


        <form action="/student-modify" method="get" id="student-modify-form">
            <input type="hidden" , name="studentIdHidden" , id="studentIdHidden">
        </form>

        <form action="/student-progress" method="get" id="student-progress-form">
            <input type="hidden" id="studentIdProgress" name="studentIdProgress">
        </form>


        <input type="submit" value="Удалить выбранных студентов" class="small-button" onclick="deleteStudents()">

        <form action="/delete-student" method="post" id="delete-student-form">
            <input type="hidden" name="studentDelete" id="studentDelete">
        </form>
    </div>
</div>

<div id="student-list-table">
    <p>Список студентов</p>
    <table class="main-info-table">
        <tr>
            <th class="checkbox-narrow"></th>
            <th>Фамилия</th>
            <th>Имя</th>
            <th>Группа</th>
            <th>Дата поступления</th>
        </tr>
        <c:forEach items="${stud}" var="s">
            <tr >
                <td class="align-right"><input type="checkbox" value="2" id=""></td>
                <td>${s.studentname}</td>
                <td>Николай</td>
                <td>КТ-01</td>
                <td>2000/01/01</td>
            </tr>
        </c:forEach>



    </table>
</div>


</body>
</html>