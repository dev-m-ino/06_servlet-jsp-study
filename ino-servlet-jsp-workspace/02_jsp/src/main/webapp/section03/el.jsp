<%@ page import="com.ino.jsp.dto.PersonDto" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<%--<h3> 기존 방식 (JSP 표현식 활용)</h3>--%>
<%--<%--%>
<%--  String cRoom = (String) request.getAttribute("classRoom");--%>
<%--  PersonDto ino = (PersonDto) request.getAttribute("student");--%>
<%--  PersonDto kbr = (PersonDto) session.getAttribute("teacher");--%>
<%--  String acad = (String) application.getAttribute("acad");--%>
<%--%>--%>
<%--<p>--%>
<%--  학원명 : <%=acad%><br>--%>
<%--  강의장 : <%=cRoom%><br>--%>
<%--  강사정보 : <%=kbr.toString()%>--%>
<%--  학생정보 : <%=ino.toString()%>--%>
<%--</p>--%>
<h3>EL 방식</h3>
<p>
  학원명 : ${ acad } <br>
  강의장 : ${ classRoom } <br>
  강사정보 : ${ teacher.toString() } <br>
  학생정보 ${ student.toString() }
</p>
<h3>EL 특징</h3>
scope: ${scope}<br>
pageScope: ${pageScope.scope}<br>
request: ${requestScope.scope}<br>
session: ${sessionScope.scope}<br>
application: ${applicationScope.scope}<br>
<h3>EL 연산자</h3>
<h4>산술연산</h4>
<p>
  big : ${big}<br>
  small : ${small}<br>
  덧셈 : ${big + small}<br>
  나머지 : ${big % small}<br>
  나누기 : ${big div small}<br>
<%--  ${str1 + str2}--%>
</p>
<h4>대소비교연산</h4>
&lt; : ${big < small}, ${ big lt small} <br>
&gt; : ${big < small}, ${ big gt small} <br>
&le; : ${big <= small}, ${ big le small} <br>
&ge; : ${big >= small}, ${ big ge small} <br>
== : ${big == small}, ${big eq small} <br>
== : ${str1 == str2}, ${str1 eq str2} <br>
!= : ${big != small}, ${big ne small} <br>
<h4>empty</h4>
book1 : ${empty book1} ${book1 == null}<br>
book2 : ${empty book2} ${book2 == null}
${not empty list1} ${! empty list1}<br>
${not empty list2} ${not empty list2}<br>

</body>
</html>
