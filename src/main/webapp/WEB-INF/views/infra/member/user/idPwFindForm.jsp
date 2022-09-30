<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>혼자서 할 수 없던 것 | 인생만렙에서 만렙들과 해보세요.</title>
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
    
    <link href="/resources/css/user/nav.css" rel="stylesheet">
    
    <!-- Fontawesome Stylesheet -->
    <script src="https://kit.fontawesome.com/059fbc3cf8.js" crossorigin="anonymous"></script>
	<style type="text/css">
		.row {
			flex-wrap: nowrap;
			display: flex;
			justify-content: center;
		}
		
		.box {
			border-radius: 10px;
		}
	</style>

</head>

<body>
<form method="get" id="form" name="form" autocomplete="off" enctype="multipart/form-data">
    <!-- Navbar Start -->
    <%@include file="../../common/xdmin/includeV1/nav.jsp"%>
    <!-- Navbar End -->

    <!-- Contact Start -->
    <div class="contaniner-fluid mb-4">
    	<div class="row">
    		<div class="col text-center">
    			<h3>아이디/비밀번호 찾기</h3>
    		</div>
    	</div>
    </div>
    <div class="container">
        <div class="row">
           <div class="box col-sm-4 bg-light">
           	   <div class="row mt-4">
	               <div class="section-title">
	                   <h5 class="mb-4">아이디 찾기</h5>
	               </div>
               </div>
               <div class="row mb-3">
                   <div class="col">
                       <div class="form-floating">
                           <input type="text" class="form-control" id="nameFind">
                           <label for="nameFind">이름</label>
                       </div>
                   </div>
               </div>
               <div class="row">
                   <div class="col">
                       <div class="form-floating">
                           <input type="text" class="form-control" id="phoneFind">
                           <label for="phoneFind">핸드폰 번호</label>
                       </div>
                   </div>
               </div>
               <div class="row mt-3">
                   <div class="col">
                   	   <p>본인인증 받으신 정보를 입력해 주세요. 휴대폰 번호로 이메일 주소를 보내드립니다.</p>
                   </div>
               </div>
               <div class="row mb-4">
                   <div class="col">
                       <button class="btn btn-primary w-100 py-2" type="button" data-bs-toggle="modal" data-bs-target="#emailAddress">이메일 주소 전송</button>
                   </div>
                   <div class="modal fade" id="emailAddress" aria-labelledby="exampleModalLabel" aria-hidden="true">
				   	   <div class="modal-dialog modal-dialog-centered">
					       <div class="modal-content ">
					       	   <div class="modal-head text-end mt-3">
					       	   	   <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					       	   </div>
						       <div class="modal-body text-center">
						      	   <i class="fa-solid fa-circle-check fa-4x" style="color: #2ECC71;"></i>
						           <h5 class="modal-title mt-2" id="exampleModalLabel">전송완료</h5>
						           <p class="mt-5 mb-3">SMS로 가입하신 이메일 주소를 발송하였습니다.</p>
						       </div>
					       </div>
				   	   </div>
				   </div>
               </div>
           </div>
        </div>
        <div class="row mt-4">
           <div class="box col-sm-4 bg-light">
           	   <div class="row mt-4">
	               <div class="section-title">
	                   <h5 class="mb-4">비밀번호 찾기</h5>
	               </div>
               </div>
               <div class="row">
                   <div class="col">
                       <div class="form-floating">
                           <input type="email" class="form-control" id="emailFind">
                           <label for="emailFind">이메일</label>
                       </div>
                   </div>
               </div>
               <div class="row mt-3">
                   <div class="col">
                   	   <p>가입 시 등록하신 이메일 주소를 입력해 주세요. 비밀번호 재설정 링크를 보내드립니다.</p>
                   </div>
               </div>
               <div class="row mb-4">
                   <div class="col">
                       <button class="btn btn-primary w-100" type="button" data-bs-toggle="modal" data-bs-target="#pwreUrl">비밀번호 재설정 URL 전송</button>
                   </div>
                   <div class="modal fade" id="pwreUrl" aria-labelledby="exampleModalLabel" aria-hidden="true">
				   	   <div class="modal-dialog modal-dialog-centered">
					       <div class="modal-content ">
					       	   <div class="modal-head text-end mt-3">
					       	   	   <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					       	   </div>
						       <div class="modal-body text-center">
						      	   <i class="fa-solid fa-circle-check fa-4x" style="color: #2ECC71;"></i>
						           <h5 class="modal-title mt-2" id="exampleModalLabel">전송완료</h5>
						           <p class="mt-5 mb-3">이메일 주소로 비밀번호 재설정 링크를 발송하였습니다.</p>
						       </div>
					       </div>
				   	   </div>
				   </div>
               </div>
           </div>
        </div>
        <div class="row">
        	<div class="col-sm-4 p-0">
        		<div class="row mt-3">
   		   		   <div class="col-6">
			   		   <button type="button" class="btn btn-secondary mt-2" style="width: 100px;" onclick="location.href='loginForm.html'">로그인</button>
			   	   </div>
			   	   <div class="col-6 text-end">
			   		   <button type="button" class="btn btn-secondary mt-2" style="width: 100px;" onclick="location.href='memberRegFormC.html'">회원가입</button>
			   	   </div>
			   </div>
        	</div>
        </div>
    </div>
    <!-- Contact End -->
    
    <!-- Footer Start -->
    <div class="container-fluid bg-dark text-light footer mt-5 pt-5">
    	<div class="container">
            <div class="copyright">
                <div class="row">
                    <div class="col text-center">
                        Copyright &copy; 2022&nbsp;<a class="border-bottom" href="#">ISML</a>&nbsp;lnc, All Right Reserved.
                    </div>
                </div>
                <div class="row">
                    <div class="col text-center">
                        <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                        Designed By <a class="border-bottom" href="https://htmlcodex.com">HTML Codex</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End -->
</form>
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
    
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    
</body>

</html>