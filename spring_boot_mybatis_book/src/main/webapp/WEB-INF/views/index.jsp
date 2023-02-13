<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>index</title>
	</head>
	<body>
	<!-- 로그인 하기 전에 보여줄 메뉴 항목  -->
	<c:if test="${empty sessionScope.sid }">
	 <a href="<c:url value='/loginForm'/>">로그인</a>
	 <a href="<c:url value='/joinForm'/>">회원가입</a>
	 </c:if>
	 <!-- 로그인 성공 후 보여줄 메뉴 항목  -->
	 <c:if test="${not empty sessionScope.sid }">
	 ${sessionScope.sid }님 환영합니다!
	 <a href="<c:url value='/logout'/>">로그아웃</a>
	 <a href="<c:url value='/board/boardList'/>">게시판</a>
	 <a href="<c:url value='/member/MyPage'/>">My page</a>
	 </c:if>
		<h3>Mybatis 사용</h3>
		<a href="<c:url value='/book/bookAllList'/>">전체 상품 조회</a><br>
		<a href="<c:url value='/book/bookNewForm'/>">전체 도서 조회</a><br>
      
      <img src="image/apple.png"><br>
      <hr>
<h3>Ajax연습</h3>
<a href="<c:url value='/loginForm'/>">로그인</a>
<a href="<c:url value='/loginForm2'/>">로그인2</a>
	<hr>
	<a href="<c:url value='/book/bookSearchForm1'/>">검색</a>
	<a href="<c:url value='/book/bookSearchForm2'/>">검색</a>
	</body>
	</body>
</html>
