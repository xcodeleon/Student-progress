<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 27.04.2019
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored ="false" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Список дисциплин</title>
    <link rel="stylesheet" href="html/resources/css/style.css" type='text/css' media='all'/>
    <script src="html/resources/js/functions.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>


</head>
<body>
<h1>Система управления студентами и их успеваемостью</h1>


<a href="/registration-form" class="logout-link">Login</a>


<a href="/" class="links main-link">На главную</a>
<h3>Список дисциплин</h3>

<div class="container" id="discipline-list-page">
    <table class="main-info-table ">
        <tr>

            <th class="checkbox-narrow"></th>

            <th>Наименование дисциплины</th>
        </tr>

        <c:forEach items="${list}" var="d">
            <tr>
                <td class="aling-right"><input type="checkbox" value="2" id="2"></td>
                <td>${d.discipline}</td>
            </tr>
        </c:forEach>


    </table>
    <div>
        <form action="/discipline-create" method="get">

            <input type="submit" value="Создать дисциплину..." class="big-button">

        </form>


        <input type="submit" value="Модифицировать дисциплину..." class="big-button" onclick="modifyDiscipline()">

        <form action="/discipline-modify" , method="get" id="discipline-modify-form">
            <input type="hidden" name="selectedId" id="selectedId">
        </form>

        <input type="submit" value="Удалить дисциплину" class="big-button" onclick="deleteDiscipline()">

    </div>
    <form action="/discipline-delete" method="post" id="delete-discipline-form">
        <input type="hidden" name="idDelete" id="idDelete">
    </form>
</div>

</body>
</html>
