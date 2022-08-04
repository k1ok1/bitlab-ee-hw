<%@ page import="java.util.ArrayList" %>
<%@ page import="db.Tasks" %>
<%@ page import="db.DBManager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
  <%@include file="bootstrap.jsp"%>
</head>
<body style="min-height: 100%; display: grid; grid-template-rows: auto 1fr auto;">
  <%
    boolean flag = false;
  %>
  <%@include file="header.jsp"%>
  <div class="container">
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="@mdo" style="margin-top: 20px; color: #ffffff; background-color: #0916ff;">+ Добавить задание</button>
    <%@include file="newTask.jsp"%>

    <table class="table" style="margin-top: 20px;">
      <thead>
        <tr>
          <th scope="col">ID</th>
          <th scope="col">Наименование</th>
          <th scope="col">Крайний срок</th>
          <th scope="col">Выполнено</th>
          <th scope="col">Детали</th>
        </tr>
      </thead>
      <tbody>
      <%
        ArrayList<Tasks> tasks = (ArrayList<Tasks>) request.getAttribute("tasks");
        for (Tasks el : tasks) {
      %>
      <tr>
        <td><%=el.getId()%></td>
        <td><%=el.getName()%></td>
        <td><%=el.getDate()%></td>
        <td><%=el.getSuccess()%></td>
        <td>
          <a href="/details?id=<%=el.getId()%>" class="btn btn-primary" style="color: #ffffff; background-color: #0916ff;">Детали</a>
        </td>
      </tr>

      <%
        }
      %>
      </tbody>
    </table>
  </div>
  <%@include file="footer.jsp"%>
</body>
</html>
