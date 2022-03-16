<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MEMO</title>	
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
	<link rel="stylesheet" href="/static/css/style.css" type="text/css">
</head>

<body>
	
	<div id="wrap">
		
	<header class="d-flex align-items-center">
		<h1 class="ml-3">Memo</h1>
	</header>
	
	<section class="d-flex justify-content-center">
		<div class="join-box my-5">
			<h1 class="text-center">회원가입</h1>
			<!-- 아이디, 패스워드, 패스워드 확인, 이름, 이메일 -->
			<input type="text" id="loginIdInput" class="form-control mt-3" placeholder="ID">
			<input type="password" id="passwordInput" class="form-control mt-3" placeholder="비밀번호">
			<input type="password" id="passwordConfirm" class="form-control mt-3" placeholder="비밀번호 확인">
			<input type="text" id="nameInput" class="form-control mt-3" placeholder="name">
			<input type="text" id="emailInput" class="form-control mt-3" placeholder="e-mail">			
			
			<input type="submit" id="joinBtn" class="btn btn-info form-control btn-block mt-3" value="회원가입"> 
		</div>		
	</section>		
	
	<footer class="d-flex justify-content-center align-items-center">
		<small>Copyright 2022. Memo all rights reserved.</small>
	</footer>
	
	</div>
	
	<script>
		$(document).ready(function() {
			
			$("#joinBtn").on("click", function() {
				
				let loginId = $("#loginIdInput").val();
				let password = $("#passwordInput").val();
				let passwordConfirm = $("#passwordConfirm").val();
				let name = $("#nameInput").val();
				let email = $("#emailInput").val();
				
				if(loginId == "") {
					alert("아이디를 입력하세요");
					return;
				}
				if(password == "") {
					alert("패스워드를 입력하세요");
					return;
				}
				if(password != passwordConfirm) {
					alert("비밀번호가 일치하지 않습니다");
					return;					
				}
				if(name == "") {
					alert("이름을 입력하세요");
					return;
				}
				if(email == "") {
					alert("이메일을 입력하세요");
					return;
				}
				
				$.ajax({
					type:"post",
					url:"/user/sign_up",
					data:{"loginId":loginId, "password":password, "name":name, "email":email},
					success:function(data) {
						if(data.result == "success"){
						// 회원가입 성공
						alert("회원가입 성공");
						} else {
							alert("회원가입 실패");
						}
					},
					error:function() {
						alert("회원가입 에러");
					}
				});
				
			});
						
		});	
	</script>
	
</body>
</html>