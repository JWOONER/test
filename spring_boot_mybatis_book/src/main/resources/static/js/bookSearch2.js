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
 			url:"bookSearch2",
 			data:formData,
 			success:function(result){
 				$('#searchResultBox').html(result);
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
 