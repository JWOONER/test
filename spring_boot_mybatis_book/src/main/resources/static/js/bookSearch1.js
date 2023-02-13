/**
 * bookNoCheck.js
 */

 $(document).ready(function(){
 	$('#bookSearchFrm').on('submit', function(){ 	
 		event.preventDefault(); 		
 		var formData = $(this).serialize();
 		// 서버에 전송하고 결과 받아서 처리
 		$.ajax({
 			type:"post",
 			url:"bookSearch1",
 			data:formData,
 			success:function(result){
 				$('#searchResultBox').empty();
 				$('#searchResultBox').append('<table id="resultTable" border="1" width="600">' + 
						'<tr><th>도서번호</th><th>도서명</th><th>저자</th><th>가격</th>' + 
						'<th>재고</th><th>발행일</th></tr>');
					if(result == ""){
					$('#resultTable').append('<tr align="center"><td colspan="6">찾는 상품이 없습니다</td></tr>');
				} else {
					for(var i=0; i < result.length; i++) {
						var date = new Date(result[i].bookDate);
						$('#resultTable').append('<tr><td>' + result[i].bookNo + '</td><td>' +
																							result[i].bookName + '</td><td>' +
																							result[i].bookAuthor + '</td><td>' +
																							result[i].bookPrice + '</td><td>' +
																							result[i].bookStock + '</td><td>' +
																				date.getFullYear() + "-" + (date.getMonth() + 1)  + "-" + date.getDate() + '</td></tr>');
					}
				}
					$('#searchResultBox').append('</table>');
 			},
 			error:function(){
 				alert("실패");
 			},
 			complete:function(){
 				//alert("작업 완료");
 			}
 		}); // ajax 종료 	
 	});// submit 종료
});
 