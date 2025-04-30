<%@ page import="com.ino.jsp.dto.BookDto" %>
<%@ page import="com.ino.jsp.dto.PersonDto" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
 <!-- HTML Comment : 개발자도구 -> Elements 내에서 확인 불가, Java code, JSP 구문 주석처리 불가 -->
 <%-- %를 이용한 JSP 내부의 주석, Elements 탭에서 확인 불가능 --%>
  <%!
    // comment
    public int getRand() {
        return (int)(Math.random() * 100 + 1);
    }
  %>


<%
// scriptlet
  int sum = 0;
  int rand = getRand();
  for(int i=1; i<=rand; i++){
      sum += i;
  }
  System.out.println("덧셈결과 : " + sum);
%>

 <!-- out 내장객체 : JSPWriter(화면) -->

<% if(sum <= 3000) { %>
 <i> 덧셈 결과가 3000보다 큼</i>
<% } %>
<br><br>
<b>덧셈결과 : <%= sum %></b>
<br>
<i>덧셈 결과가 3000보다 <%= sum >= 3000 ? "큽니다" : "작습니다."%></i>
<hr>
<%
  BookDto bk = (BookDto) request.getAttribute("book");
  List<PersonDto> list = (List<PersonDto>)session.getAttribute("list");
  String acad = (String)application.getAttribute("academy");
%>
기관명 : <%= acad%>
책명 : <%= bk.toString() %>
사람 목록
<table border="1">
  <tr>
  <td>name</td>
  <td>age</td>
  <td>gender</td>
  </tr>
  <% for(PersonDto p : list) { %>
  <tr>
    <td><%=p.getName()%></td>
    <td><%=p.getAge()%></td>
    <td><%=p.getGender()%></td>
  </tr>
  <% } %>
</table>

</body>
</html>
