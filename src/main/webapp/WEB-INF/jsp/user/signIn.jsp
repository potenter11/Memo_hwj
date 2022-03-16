<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		
	<header class="d-flex align-items-center">
		<h1 class="ml-3">Memo</h1>
	</header>
	
	<section class="d-flex justify-content-center">
		<div class="join-box my-5 col-3">
			<input type="text" class="form-control" placeholder="ID">
			<input type="password" class="form-control mt-2" placeholder="비밀번호">
			
			<button type="submit" class="btn btn-dark btn-block my-3">로그인</button>
			<div class="d-flex justify-content-center">
				<a href="http://localhost:8080/user/signup_view">회원가입</a>		
			</div>			
		</div>
			
	</section>		
	
	<footer class="d-flex justify-content-center align-items-center">
		<small>Copyright 2022. Memo all rights reserved.</small>
	</footer>
	
	</div>

</body>
</html>