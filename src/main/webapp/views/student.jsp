<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생조회결과</title>
</head>
<body>
	<h2>학생정보</h2>
	<c:if test="${count!=null }">
		<h3>전체 학생 수 : <c:out value="${count }"/>명</h3>
	</c:if>
	<c:if test="${s!=null }">
		<ul>
			<li>학생 이름 : <c:out value="${s.studentName }"/></li>
			<li>학생 연락처 : <c:out value="${s.studentTel }"/></li>
			<li>학생 이메일 : <c:out value="${s.studentEmail }"/></li>
			<li>학생 주소 : <c:out value="${s.studentAddr }"/></li>
			<li>등록일 : <c:out value="${s.reg_date }"/></li>
			<li>학생 이름 : <c:out value="${s.STUDENT_NAME }"/></li>
			<li>학생 연락처 : <c:out value="${s.STUDENT_TEL }"/></li>
			<li>학생 이메일 : <c:out value="${s['STUDENT_EMAIL'] }"/></li>
			<li>학생 주소 : <c:out value="${s['STUDENT_ADDR'] }"/></li>
			<li>등록일 : <c:out value="${s['REG_DATE'] }"/></li>
		</ul>
	</c:if>
	
	<table>
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>연락처</th>
			<th>이메일</th>
			<th>주소</th>
			<th>등록일</th>
		</tr>
	<c:if test="${empty students&&empty studentsMap }">
		<tr><td colspan="6">저장된 학생정보가 없습니다.</td></tr>
	</c:if>
	<c:if test="${not empty students}">
		<c:forEach var="s" items="${students }" varStatus="vs"> 
			<tr style="background-color: ${vs.index%2==0?'lightblue':'lightgray'}">
				<td> <c:out value="${s.studentNo }"/></td>
				<td> <c:out value="${s.studentName }"/></td>
				<td> <c:out value="${s.studentTel }"/></td>
				<td> <c:out value="${s.studentEmail }"/></td>
				<td> <c:out value="${s.studentAddr }"/></td>
				<td> <c:out value="${s.reg_date }"/></td>		
			</tr>
		</c:forEach>
	</c:if>
	<c:if test="${not empty studentsMap}">
		<c:forEach var="s" items="${studentsMap }" varStatus="vs"> 
			<tr style="background-color: ${vs.index%2==0?'lightgreen':'lightgray'}">
				<td> <c:out value="${s.STUDENT_NO }"/></td>
				<td> <c:out value="${s.STUDENT_NAME }"/></td>
				<td> <c:out value="${s.STUDENT_TEL }"/></td>
				<td> <c:out value="${s['STUDENT_EMAIL'] }"/></td>
				<td> <c:out value="${s['STUDENT_ADDR'] }"/></td>
				<td> <c:out value="${s['REG_DATE'] }"/></td>		
			</tr>
		</c:forEach>
	</c:if>
	</table>
	
</body>
</html>