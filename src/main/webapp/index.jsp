<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Basic Mybatis</title>
</head>
<body>
	<h2>mybatis 실행</h2>
	<h3>
		<a href="${path }/InsertStudent.do">학생등록</a>
	</h3>
	<h3>이름으로 학생등록</h3>
		<form action="${path }/InsertStudentByName.do">
			<input type="text" name="name">
			<input type="submit" name="저장">
		</form>
	
	<h3>학생정보로 등록</h3>
		<form action="${path }/InsertStudentAll.do">
			<input type="text" name="name" placeholder="이름"><br>
			<input type="text" name="tel" placeholder="연락처"><br>
			<input type="text" name="email" placeholder="이메일"><br>
			<input type="text" name="addr" placeholder="주소"><br>
			<input type="submit" name="저장">
		</form>
	</h3>
	<h2>학생정보 수정하기</h2>
		<form action="${path }/updateStudent.do" method="post">
			<input type="number" name="no" placeholder="수정할 학생의 번호"><br>
			<input type="text" name="name" placeholder="새로운 이름"><br>
			<input type="text" name="tel" placeholder="새로운 연락처"><br>
			<input type="text" name="email" placeholder="새로운 이메일"><br>
			<input type="text" name="addr" placeholder="새로운 주소"><br>
			<input type="submit" name="저장">
		</form>
	<h2>학생정보 삭제하기</h2>
		<form action="${path }/deleteStudent.do" method="post" id="deleteform">
			<input type="number" name="no" placeholder="삭제할 학생의 번호"><br>
			<button id="btn-delete">삭제하기</button>
		</form>
		
	<script type="text/javascript">
	  	document.getElementById("btn-delete").addEventListener("click", function(e) {
		    if (confirm("정말로 삭제하시겠습니까?")) {
		      document.getElementById("deleteform").submit();
		    }
	  	});
	</script>
	
	<h2>DB에 저장된 데이터 조회하는 기능 구현하기</h2>
	<p>select문을 이용해서 DB에서 조회하고 그 결과를 java의 특정 클래스로 저장</p>
	<p>select문 실행 후 DB에서 조회된 데이터와 지정한 java클래스를 연결해준다</p>
	<h4><a href="${path }/student/studentCount.do">학생 수 조회</a></h4>
	
	<h4><a href="${path }/student/selectStudent.do?no=1">1번학생 정보조회</a></h4>
	
	<h4><a href="${path }/student/selectStudentAll.do">전체학생 정보조회</a></h4>
	
	<h3>이름으로 조회하기</h3>
	<form action="${path }/student/selectStudentByName.do">
		<input type="text" name="name">
		<input type="submit" value="조회">
	</form>
	
	<h3>vo를 생성하지 않고 데이터 가져오기</h3>
	<p>Map을 이용해서 데이터 가져올 수 있다</p>
	<h4><a href="${path }/student/selectStudentMap?no=1">1번학생조회</a></h4>
	<h4><a href="${path }/student/selectStudentListMap">전체학생 정보조회</a></h4>
	
	<h3>mybatis 페이징</h3>
	<h4><a href="${path }/student/studentPage.do">페이징</a></h4>
	
	
	
	
	
	
</body>
</html>