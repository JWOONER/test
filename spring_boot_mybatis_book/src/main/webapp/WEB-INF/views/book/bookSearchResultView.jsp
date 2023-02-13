<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>도서 검색 결과</title>
		<style>
		#wrap{
				margin:0 auto;
				width: 100%;
				text-align: center;
			}
			
			table{
				margin:0 auto;
				width: 800px;
			}
			
			table th{ 
				background-color: skyblue;
			}
			</style>
	</head>
	<body>
		<div id="wrap">
		<hr>
			<h3>전체 상품 조회</h3>
			<table border="1">
					<tr>
						<th>도서번호</th>
						<th>도서명</th>
						<th>저자</th>
						<th>가격</th>
						<th>재고</th>
						<th>발행일</th>
						<th>사진</th>
					</tr>
					
					<c:choose>
				<c:when test="${empty bookList }">
				<tr align="center">
				<td colspan="7">찾는 상품이 없습니다.</td>
				</tr>
				</c:when>
				<c:otherwise>
					<c:forEach var="book" items="${bookList }">
			            <tr>
			            <td><a href="<c:url value='/book/detailViewBook/${book.bookNo}'/>" >${book.bookNo }</a></td>
			               <td>${book.bookName }</td>
			               <td>${book.bookAuthor }</td>
			               <td>${book.bookPrice }</td>
			               <td>${book.bookStock }</td>			               
			               <td><fmt:formatDate value="${book.bookDate }" pattern="yyyy-MM-dd"/></td>
			               <td><img src="<c:url value='/images/${book.bookNo }.PNG'/>" width="30" height="20"></td>
			            </tr>       
			         </c:forEach>
			         	</c:otherwise>
			         	</c:choose>
				</table><br><br>
				
				<a href="<c:url value='/'/>">메인 화면으로 이동</a>
			</div>
	</body>
</html>
