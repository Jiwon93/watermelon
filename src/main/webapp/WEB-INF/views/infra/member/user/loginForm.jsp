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
		
	</style>

</head>

<body>

    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top p-0">
        <a href="#l" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
            <img src="/resources/images/logo.PNG" alt="" style="width: 60px; height: 60px;">
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto">
                <a href="loginForm.html" class="nav-item nav-link">로그인</a>
                <a href="memberRegFormC.html" class="nav-item nav-link">회원가입</a>
            </div>
            <div class="pe-3">
            	<button class="btn btn-primary" type="button" href="memberRegFormB.html">만렙등록</button>
            </div>
        </div>
    </nav>
    <!-- Navbar End -->

    <!-- Contact Start -->
    <div class="container-fluid bg-light overflow-hidden" style="margin: 8rem 0;">
        <div class="container contract">
           <div class="col-6 contact-text py-5 offset-3">
               <div class="p-lg-5">
                   <div class="section-title text-center">
                       <h1 class="display-6 mb-4">로그인</h1>
                   </div>
                   <form>
                       <div class="row g-3">
                           <div class="col-8 offset-2">
                               <div class="form-floating">
                                   <input type="email" class="form-control" id="newEmail">
                                   <label for="newEmail">이메일</label>
                               </div>
                           </div>
                           <div class="col-8 offset-2">
                               <div class="form-floating">
                                   <input type="password" class="form-control" id="newPw">
                                   <label for="newPw">비밀번호</label>
                               </div>
                           </div>
                           <div class="col-8 offset-2">
                               <button class="btn btn-primary w-100" type="button" onclick="location.href='memberHome.html'">로그인</button>
                           </div>
                           <div class="col-md-3 offset-2">
                               <div class="form-check">
                                   <input type="checkbox" class="form-check-input" id="loginSave">
                                   <label class="form-check-label" for="loginSave">로그인 유지</label>
                               </div>
                           </div>
                           <div class="col">
                               <div class="form-floating">
                               	   <a class="" href="idPwFindForm.html">아이디/비밀번호 찾기</a>
                               </div>
                           </div>
                       </div>
                       <br>
                       <div class="row g-3">
	                       <div class="col-8 offset-2 text-center">
		                       <h4 class="mb-4">간편 로그인</h4>
		                   </div>
	                   </div>
	                   <div class="row g-3 justify-content-center">
		                   <div class="easyLoginBox col-2">
		                   	   <a href="#"><img src="../images/naver.png" alt="" class="easyLogin"></a>			
		                   </div>
		                   <div class="easyLoginBox col-2">
		                   	   <a href="#"><img src="../images/kakao.png" alt="" class="easyLogin"></a>		
		                   </div>
		                   <div class="easyLoginBox col-2">
		                   	   <a href="#"><img src="../images/facebook.png" alt="" class="easyLogin"></a>			
		                   </div>
		                   <div class="easyLoginBox col-2">
		                   	   <a href="#"><img src="../images/google.png" alt="" class="easyLogin"></a>			
		                   </div>
                       </div>
                       <br><br>
                       <div class="row g-3">
	                       <div class="text-center">
		                       <span class="mb-4">아직 회원이 아니시라면?</span>
		                   </div>
		                   <div class="col-8 offset-2">
                               <button class="btn btn-secondary w-100 py-2" type="button" onclick="location.href='memberRegFormC.html'">회원가입</button>
                           </div>
                       </div>
                   </form>
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
</body>

</html>