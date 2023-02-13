<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
			<meta charset="UTF-8">
		<title>상품 등록</title>
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
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/bookNoCheck.js'/>"></script>
	</head>
	<body>
		<h3>도서 정보 등록</h3>
	<form method="post" action="<c:url value='/book/insertBook'/>">
			<table>
				<tr><td>도서번호 </td><td><input type="text"name="bookNo" id="bookNo"></td>
					<td><button id="bookNoCheckBtn">중복 확인</button></td></tr>
				<tr><td>도서명  </td><td><input type="text"name="bookName"></td></tr>
				<tr><td>저자  </td><td><input type="text"name="bookAuthor"></td></tr>
				<tr><td>가격 </td><td> <input type="text"name="bookPrice"></td></tr>
				<tr><td>재고 </td><td> <input type="text"name="bookStock"></td></tr>
				<tr><td>발행일 </td><td> <input type="text"name="bookDate"></td></tr>
				<tr><td colspan="2"><input type="submit" value="등록"> 
												      <input type="reset" value="취소"></td></tr>
			</table>
		</form>

	</body>
</html>
