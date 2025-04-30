<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<h2>jsp:include</h2>
<p>다른 페이지 포함시 사용 태그</p>

<h4>기존 include 방식 ( 정적 include )</h4>
<%--<%@include file="common.jsp"%> <br>--%>
<%--currentYear : <%= curYear%>--%>
<%--but, 재선언 x--%>
<jsp:include page="common.jsp"/>
include 시 jsp로 값 전달을 통해 동적 표현 가능
<jsp:include page="common.jsp">
  <jsp:param name="message" value="hello"/>
</jsp:include>
<jsp:include page="common.jsp">
  <jsp:param name="message" value="hello3"/>
</jsp:include>
<hr>
<h2>jsp:forward</h2>
<p>forwarding to other page</p>
<% int random = (int)(Math.random() * 10 + 1); %>
<% if(random >= 5) { %>
<jsp:forward page="/section01/common.jsp"/>
<% }else {%>
<jsp:forward page="/section02/common.jsp">
  <jsp:param name="message" value="zzzz"/>
</jsp:forward>
<% }%>

<h2>3. EL(Expression Language) 확인</h2>
<a href="/jsp/el">EL 확인</a>
</body>
</html>
