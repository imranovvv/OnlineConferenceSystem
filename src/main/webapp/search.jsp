<%--
  Created by IntelliJ IDEA.
  User: ahmed
  Date: 4/6/2023
  Time: 1:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form>
    <div >
        <input type="radio" id="all" name="view">
        <label>View all Participants</label><br>
        <input type="radio" id="student" name="view">
        <label>View all student</label><br>
        <input type="radio" id="normal" name="view">
        <label>View all normal</label><br>
    </div>
    <br>
    <button style="background-color: blue; color: white;" type="button">  View  </button>
    <br>
    <div>
    <label>Insert Registered Participant Name</label><br>
    <input type="text" id="field" name="field">
        <br>
        <br>
        <div>
        <button style="background-color: blue; color: white;" type="button">  Search  </button>
            <button style="background-color: red; color: white;" type="button">  Remove  </button>
        </div>
    </div>
    <br>
    <button style="background-color: blue; color: white;margin-left: 70px;" type="button">  back  </button>
</form>
</body>
</html>
