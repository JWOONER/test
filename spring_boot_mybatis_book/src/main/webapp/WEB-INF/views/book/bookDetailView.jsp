<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<table border="1" width="800">
				<tr><td>도서번호 </td><td>${book.bookNo }</td></tr>
				<tr><td>도서명 </td><td>${book.bookName }</td></tr>
				<tr><td>저자 </td><td>${book.bookAuthor }</td></tr>
				<tr><td>가격 </td><td>${book.bookPrice }</td></tr>
				<tr><td>재고 </td><td>${book.bookStock }</td></tr>		
				<tr><td>발행일 </td><td><fmt:formatDate value="${book.bookDate }" pattern="yyyy-MM-dd"/></td>
			</table><br><br>
					<a href="<c:url value='/'/>">메인 화면으로 이동</a><br>
					  <a href="<c:url value ='/book/updateBookForm/${book.bookNo}'/>"> 도서 정보 수정</a><br>
					  <a href="javascript:deleteCheck();"> 도서 정보 삭제</a><br>
					  <script>
					  function deleteCheck(){
						  var answer=confirm("삭제하시겠습니까?");
						  if(answer){
							  location.href="/bookex/book/deleteBook/${book.bookNo}";
						  }
					  }
					  </script>
	</body>
</html>
