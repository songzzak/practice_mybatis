<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>페이징 처리</title>
</head>
<body>
	<h2>학생출력결과</h2>
	<table>
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>연락처</th>
			<th>이메일</th>
			<th>주소</th>
			<th>등록일</th>
		</tr>
	<c:if test="${empty students }">
		<tr><td colspan="6">조회된 학생정보가 없습니다.</td></tr>
	</c:if>
	<c:if test="${not empty students }">
		<c:forEach var="s" items="${students}" varStatus="vs">
		<tr style="background-color: ${vs.index%2==0?'lightblue':'lightgray'}">
			<td><c:out value="${s.studentNo }"/></td>
			<td><c:out value="${s.studentName }"/></td>
			<td><c:out value="${s.studentTel }"/></td>
			<td><c:out value="${s.studentEmail }"/></td>
			<td><c:out value="${s.studentAddr }"/></td>
			<td><c:out value="${s.reg_date }"/></td>
		</tr>
		</c:forEach>
	</c:if>
	</table>
	<div>
		<c:out value="${pageBar }" escapeXml="false"/>
	</div>
</body>
</html>