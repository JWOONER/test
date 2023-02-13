<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>도서 정보 수정 폼</title>
		<style>
			#wrap{
				margin:0 auto;
				width: 100%;
				text-align: center;
			}
			
			table{
				margin:0 auto;
				width: 400px;
			}			
		</style>
	</head>
	<body>
		<div id="wrap">
			<h3>도서 정보 수정 폼</h3>
			<hr>
			<form method="post" action="<c:url value='/book/updateBook'/>">
				<table>
					<tr><td>도서번호 </td>
							<td><input type="text" name="bookNo" value="${book.bookNo }" readonly></td></tr>
					<tr><td>도서명  </td>
							<td><input type="text" name="bookName"  value="${book.bookName }" ></td></tr>
					<tr><td>저자  </td>
							<td><input type="text" name="bookAuthor"   value="${book.bookAuthor }" ></td></tr>
					<tr><td>가격 </td>
							<td> <input type="text" name="bookPrice"   value="${book.bookPrice }" ></td></tr>
					<tr><td>재고 </td>
							<td> <input type="text" name="bookStock"   value="${book.bookStock }" ></td></tr>
					<tr><td>발행일 </td>
							<td> <input type="text" name="bookDate" value="<fmt:formatDate value="${book.bookDate}"  pattern="yyyy-MM-dd" />"></td></tr>
					<tr><td colspan="2"><input type="submit" value="수정"> 
													      <input type="reset" value="취소"></td></tr>
				</table>
			</form>
			<br><br>
			<a href="<c:url value='/'/>">메인 화면으로 이동</a>
		</div>
	</body>
</html>