<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>인생만렙 관리자 페이지</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="/resources/images/logo.PNG" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Roboto:wght@500;700;900&display=swap" rel="stylesheet"> 

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="/resources/template/woody/lib/animate/animate.min.css" rel="stylesheet">
    <link href="/resources/template/woody/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="/resources/template/woody/lib/lightbox/css/lightbox.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/resources/template/woody/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="/resources/template/woody/css/style.css" rel="stylesheet">
	<style type="text/css">
		.easyLogin {
			width: 70px;
			height: 70px;
			border-radius: 70%;
			overflow: hidden;
		}
		
		.btn {
			border-radius: 5px;
			height: 45px;
		}
		
		.container-fluid {
			display: flex;
			justify-content: center;
			text-align: center;
		}
	</style>
</head>

<body>

    <!-- Contact Start -->
	<form method="get" name="form" id="form" autocomplete="off" enctype="multipart/form-data">
		<input type="hidden" id="sessSeq" name="sessSeq" value="${sessSeq }">
		<div class="container-fluid overflow-hidden" style="margin: 1rem 0;">
			<div class="col mt-5" style="text-align: center;">
				<a type="button">
					<img src="/resources/images/logo.PNG" alt="" style="width: 60px; height: 60px;">
				</a>
			</div>
		</div>
		<div class="container p-lg-5">
			<div class="col-6 bg-light pt-5 pb-5 offset-3" style="border-radius: 10px;">
				<div class="row" style="text-align: center;">
					<div class="section-title">
						<h1 class="display-6 mb-5">로그인</h1>
					</div>
				</div>
				<div class="row">
					<div class="col-8 mx-auto mb-3">
						<div class="form-floating">
							<input type="email" class="form-control" id="mmEmail" name="mmEmail" value="test@naver.com">
                            <label for="newEmail">이메일</label>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-8 mx-auto mb-3">
						<div class="form-floating">
							<input type="password" class="form-control" id="mmPw" name="mmPw" value="123123">
                            <label for="newPw">비밀번호</label>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-8 mx-auto">
						<button class="btn btn-secondary w-100" type="button" id="btnLogin">로그인</button>
					</div>
				</div>
				<div class="row mt-3">
					<div class="col-4 offset-2">
						<div class="form-check form-switch">
							<input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckDefault">
							<label class="form-check-label" for="flexSwitchCheckDefault">Auto login</label>
						</div>
					</div>
				</div>
			</div>    
		</div>
	</form>
    <!-- Contact End -->
    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/resources/template/woody/lib/wow/wow.min.js"></script>
    <script src="/resources/template/woody/lib/easing/easing.min.js"></script>
    <script src="/resources/template/woody/lib/waypoints/waypoints.min.js"></script>
    <script src="/resources/template/woody/lib/counterup/counterup.min.js"></script>
    <script src="/resources/template/woody/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="/resources/template/woody/js/main.js"></script>
    
    <!-- JavaScript & jQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	
	<script>
		var goUrlLogin = "/member/memberAjaxList";
	 	// 암호화
		$("#btnLogin").on("click", function(){
		//if(validation() == false) return false;
		
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "/member/xdminLoginProc"
				/* ,data : $("#formLogin").serialize() */
				//,data : { "mmEmail" : $("#mmEmail").val(), "mmPw" : $("#mmPw").val(), "autoLogin" : $("#autoLogin").is(":checked")}
				,data : { "mmEmail" : $("#mmEmail").val(), "mmPw" : $("#mmPw").val()}
				,success: function(response) {
					if(response.rt == "success") {
						//if(response.changePwd == "true") {
						//	location.href = URL_CHANGE_PWD_FORM;
						//} else {
							location.href = goUrlLogin;
					} else {
						alert("회원없음");
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
		});
	</script>
</body>

</html>