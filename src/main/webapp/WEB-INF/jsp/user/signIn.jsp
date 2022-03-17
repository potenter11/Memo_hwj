<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MEMO 로그인</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
	<link rel="stylesheet" href="/static/css/style.css" type="text/css">
</head>

<body>
	
	<div id="wrap">
		
		<c:import url="/WEB-INF/jsp/include/header.jsp" />
	
		<section class="d-flex justify-content-center">
			<div class="join-box my-5 col-3">
			<form id="loginForm">
				<input type="text" id="loginIdInput" class="form-control" placeholder="ID">
				<input type="password" id="loginPasswordInput" class="form-control mt-2" placeholder="비밀번호">
				
				<button type="submit" class="btn btn-dark btn-block my-3">로그인</button>
			
				<div class="d-flex justify-content-center">
					<a href="/user/signup_view">회원가입</a>		
				</div>			
			</form>
			</div>
		</section>		
	
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	
	</div>
		
	<script>
		
	$(document).ready(function(){
		
		$("#loginForm").on("submit", function(e){
			e.preventDefault();
			
			let loginId = $("#loginIdInput").val();
			let loginPassword = $("#loginPasswordInput").val();
			
			if(loginId == "") {
				alert("아이디를 입력하세요");
				return;
			}
			if(loginPassword == "") {
				alert("비밀번호를 입력하세요");
				return;
			}
				
			$.ajax({
				type:"post",
				url:"/user/sign_in",
				data:{"loginId":loginId, "password":loginPassword},
				success:function(data) {
					if(data.result == "success") {
						alert("로그인 성공");
					} else {
						alert("아이디, 비밀번호가 일치하지 않습니다")
					}
				},
				error:function(data) {
					alert("로그인 에러");
				}
				
			});
		
		});
		
		
	});	
	
	</script>
	
</body>
</html>