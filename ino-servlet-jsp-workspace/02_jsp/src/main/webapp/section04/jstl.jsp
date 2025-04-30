<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<h2>JSTL Core Library</h2>
<h3>1. variance( == JSP attribute)</h3>
<c:set var="num1" value="10"/>
<c:set var="num2" value="20" scope="request"/>
${num1}, ${pageScope.num1}<br>
${num2}, ${requestScope.num2}<br>
<c:out value="${num1}" default="00" escapeXml="false"></c:out><br>
<c:out value="<b>Hello World</b>" default="00" escapeXml="false"></c:out><br>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<a href="${contextPath}/el">el check</a>
<c:set var="outTest" value="<h1>output Test</h1>"/>
<c:out value="${outTest}"/><br>
<c:out value="${outTest}" escapeXml="false"/>
<h3>2. condition</h3>
<c:if test="${num1 le num2}">
  <b>num1 &le; num2</b>
</c:if>
<c:set var="str" value="helloworld"/>
<c:if test="${str eq 'hi'}">
  <b>HELLO WORLD!</b>
</c:if>

<c:if test="${str ne 'hi'}">
  <b>str &ne; 'hi'</b>
</c:if><br>
<c:choose>
  <c:when test="${num1 gt 20}">
    <b>반갑습니다</b>
  </c:when>
  <c:when test="${num1 ge 10}">
    <b>hihihihihi</b>
  </c:when>
  <c:otherwise>
    <b>all catch fails</b>
  </c:otherwise>
</c:choose>
<h3>3. Loop</h3>
<c:forEach var="i" begin="0" end="20">
  ${i}<br>
</c:forEach>

<c:forEach var="i" begin="1" end="6">
  <h${i}>hi</h${i}>
</c:forEach>
<c:set var="colors" value="${colors}"/>
<c:set var="list" value="${list}"/>
<c:set var="device" value="${device}"/>
<ul>
  <c:forEach var="color" items="${colors}">
    <li style="color: ${color};">${color}</li>
  </c:forEach>
  <table border="1">
    <thead>
    <tr>
      <th>no</th>
      <th>name</th>
      <th>age</th>
      <th>sex</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="person" items="${list}" varStatus="no">
      <tr>
        <td>${no.count}</td>
        <td>${person.name}</td>
        <td>${person.age}</td>
        <td>${person.gender}</td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
</ul>
<ol>
<c:forTokens var="d" items="${device}" delims=",./">
  <li><b>${d}</b></li>
</c:forTokens>
</ol>
<h3>4. makes url</h3>
<a href="${contextPath}/test?name=ino&age=10">기존방식(url 직접 작성)</a><br>
<c:url var="mkurl" value="/test">
  <c:param name="name" value="ino"/>
  <c:param name="age" value="20"/>
  <c:param name="gedner" value="m"/>
</c:url>
<a href="${mkurl}">c:url로 만들어둔 걸 사용하는 방식</a>
<c:set var="num1" value="123456789"/>
<c:set var="num2" value="0.75"/>
<c:set var="num3" value="50000"/>
num1: ${num1}<br>
num1(separator): <fmt:formatNumber value="${num1}"/><br>
num2(percent): <fmt:formatNumber value="${num2}" type="percent"/> <br>

num3(won mark, no sep): <fmt:formatNumber value="${num3}" type="currency" groupingUsed="false"/> <br>
num3(dollar mark, yes sep): <fmt:formatNumber value="${num3}" type="currency" currencySymbol="$"/> <br><br>
<c:set var="current" value="<%= new java.util.Date()%>"/>
<ul>
  <li>now date : <fmt:formatDate value="${current}"/></li>
  <li>time : <fmt:formatDate value="${current}" type="time"/></li>
  <li>both : <fmt:formatDate value="${current}" type="both"/></li>
  <li>Medium : <fmt:formatDate value="${current}" type="both" dateStyle="medium"/></li>
  <li>Long : <fmt:formatDate value="${current}" type="both" dateStyle="long" timeStyle="long"/></li>
  <li>Full : <fmt:formatDate value="${current}" type="both" dateStyle="full" timeStyle="full"/></li>
  <li>Short : <fmt:formatDate value="${current}" type="both" dateStyle="short" timeStyle="short"/></li>
  <li>My own pattern : <fmt:formatDate value="${current}" type="both" pattern="yyyy-MM-dd(E) HH:mm:ss(a)"/></li>
</ul>
<h2>3. JSTL Functions Library</h2>
<c:set var="str" value="how are you?"/>

str : ${ str } <br>

문자열 길이 : ${ str.length() } or ${ fn:length(str) } <br><br>
<!-- arrayList, 배열도 가능 -> list or 배열의 사이즈 -->
모두 대문자 출력 : ${str.toUpperCase()} or ${fn:toUpperCase(str)}<br><br>
모두 소문자 출력 : ${str.toLowerCase()} or ${fn:toLowerCase(str)}<br><br>

are start index: ${str.indexOf('are')} or ${fn:indexOf(str, "are") } <br><br>
are -> were : ${str.replace("are", "were")} or ${ fn: replace(str, "are", "were")}<br><br>

문자열 추출: ${str.substring(1, 5)} or ${fn:substring(str, 1, 5)}<br><br>
<c:if test="${str.contains('are')}">
  ${str} contains<br>
</c:if>
<c:if test="${ fn: contains(str, 'are')}">
  ${str} not contains<br>
</c:if>

<c:if test="${ fn: containsIgnoreCase(str, 'are')}">
  ${str} not contains<br>
</c:if>
</body>
</html>
