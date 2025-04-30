<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<div style="border: 1px solid gray; padding: 10px;">
  <% String curYear = new SimpleDateFormat("yyyy").format(new Date()); %>
  Copyright ⓒ 2000-<%=curYear%> Ino Academy All rights reserved. <br>
  <%= request.getParameter("message") %>
</div>
</body>
</html>
