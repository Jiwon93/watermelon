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
    
    <!-- Fontawesome Stylesheet -->
    <script src="https://kit.fontawesome.com/059fbc3cf8.js" crossorigin="anonymous"></script>
    <style type="text/css">
    	label {
    		font-weight: bold;
    	}
    	
    	.input-group {
    		border-radius: 5px;
    	}
    	
    	.confirm {
    		background-color: white;
    		border-radius: 8px;
    		height: 25px;
    		width: 60px;
    		font-size: 0.7em;
    		text-align: center;
    		padding: 4px 3px 3px 3px;
    	}
    	
    	.btn {
    		border-radius: 5px;
    		height: 45px;
    	}
    	
    	.mypageC {
    		list-style: none;
    		margin: 0px;
    		padding: 0px;
    	}
    	
    	.mypageList {
    		height: 45px;
    	}
    </style>
</head>

<body>
    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top p-0">
        <a href="../../index.html" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
            <img src="/resources/images/logo.PNG" alt="" style="width: 60px; height: 60px;">
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
        	<form class="d-flex" role="search">
		        <input class="form-control me-2" type="search" style="width: 400px;" placeholder="Search" aria-label="Search">
		        <button class="btn btn-outline-primary" type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
		    </form>
        </div>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="loginForm.html" class="nav-item nav-link"><i class="fa-solid fa-comment fa-2x"></i></a>
                <a href="memberRegFormC.html" class="nav-item nav-link"><i class="fa-solid fa-bell fa-2x"></i></a>
                <a href="#" class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fa-solid fa-user fa-2x"></i></a>
                <ul class="dropdown-menu" role="menu" style="right: 0; left: auto;">
		            <li><a class="dropdown-item" href="memberViewC.html">마이페이지</a></li>
		            <li><a class="dropdown-item" href="purchaseHistory.html">구매 목록</a></li>
		            <li><a class="dropdown-item" href="memberViewC.html">계정 설정</a></li>
		            <li><hr class="dropdown-divider"></li>
		            <li><a class="dropdown-item" href="../../index.html">로그 아웃</a></li>
		        </ul>
            </div>
        </div>
    </nav>
    <!-- Navbar End -->
    <!-- Contact Start -->
    <div class="container-fluid overflow-hidden" style="margin: 1rem 0;">
           <div class="row">
	           <div class="col-sm-3 p-lg-5">
	           		<div class="text-center pb-4">
						<img src="/resources/images/men.png" class="border border-3 rounded-circle" style="height: 40%; width: 40%;" alt="">
					</div>
					<div class="text-center pb-4">
						<button class="btn btn-secondary" style="height: 30px; width: 60px; font-size: small;">일반</button>
						<span class="px-3">jiwon123</span>
					</div>
					<div class="text-center pb-5">
						<button class="btn btn-primary" style="width: 200px;" onclick="location.href='memberViewB.html'">만렙으로 전환</button>
					</div>
					<div class="pt-4">
						<h4 class="" style="border-bottom: 2px solid #AB7442;">마이페이지</h4>
						<ul class="mypageC">
				            <li class="mypageList pt-3 pb-5"><a class="" href="purchaseHistory.html">구매 내역</a></li>
				            <li class="mypageList"><a class="" href="#">문의 내역</a></li>
				            <li class="mypageList"><a class="" href="#">만렙 후기</a></li>
				            <li class="mypageList"><a class="" href="#">만렙 캐시</a></li>
				            <li class="mypageList"><a class="" href="#">쿠폰/이벤트</a></li>
				            <li class="mypageList"><a class="" href="memberViewC.html">계정설정</a></li>
				            <li class="mypageList"><a class="" href="pwChangeFormC.html">비밀번호 변경</a></li>
				            <li class="mypageList"><a class="" href="memberDropFormC.html">계정 탈퇴</a></li>
				        </ul>					
					</div>
	           </div>
	           <div class="col-sm-9 p-2">
	               <div class="p-lg-5">
	                   <div class="">
	                       <h4 class="mb-4">비밀번호 변경</h4>
	                   </div>
	                   <div class="p-4 border border-2 border-light" style="height: 700px;">
		                   <div class="row g-3">
		                   	   <div class="col-8 offset-2">
		                       	   <label class="form-label" for="passwordReg">현재 비밀번호</label>
		                           <div class="input-group">
		                               <input type="password" class="form-control" id="passwordReg" placeholder="현재 비밀번호를 입력해 주세요.">
		                           </div>
		                       </div>
		                       <div class="col-8 offset-2">
		                       	   <label class="form-label" for="passwordReg">새로운 비밀번호</label>
		                           <div class="input-group">
		                               <input type="password" class="form-control" id="passwordReg" placeholder="새로운 비밀번호를 입력해 주세요.">
		                           </div>
		                       </div>
		                       <div class="col-8 offset-2">
		                       	   <label class="form-label" for="passwordReg">비밀번호 확인</label>
		                           <div class="input-group">
		                               <input type="password" class="form-control" id="passwordReg" placeholder="새로운 비밀번호를 한번 더 입력해 주세요.">
		                           </div>
		                       </div>
							   <div class="col-sm-12 text-center vertical-align-bottom">
							   	   <button type="button" class="btn btn-primary w-25" onclick="location.href='memberViewFormC.html'">변경완료</button>	
							   </div>
		                   </div>
	                   </div>
	               </div>
	           </div>
           </div>
    </div>
    <!-- Footer Start -->
    <div class="container-fluid bg-dark text-light footer mt-5 pt-5">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-lg-4 col-md-6">
                    <h5 class="text-light mb-4">문의</h5>
                    <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>1599-9999</p>
                    <p class="mb-2">10:00 ~ 18:00(점심시간 13:00 ~ 14:00)</p>
                    <p class="mb-2">주말, 공휴일 휴무</p>
                    <div class="d-flex pt-2">
                        <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-youtube"></i></a>
                        <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-linkedin-in"></i></a>
                    </div>
                    <div class="pt-2">
                    	<button href="" class="btn btn-primary w-75" type="button">1:1문의</button>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6">
                    <h5 class="text-light mb-4">인생만렙</h5>
                    <a class="btn btn-link" href="">회사소개</a>
                    <a class="btn btn-link" href="">채용안내</a>
                    <a class="btn btn-link" href="">서비스소개</a>
                </div>
                <div class="col-lg-2 col-md-6">
                    <h5 class="text-light mb-4">만렙안내</h5>
                    <a class="btn btn-link" href="">이용안내</a>
                    <a class="btn btn-link" href="">만렙가이드</a>
                    <a class="btn btn-link" href="">만렙등록</a>
                    <a class="btn btn-link" href="">만렙센터</a>
                </div>
                <div class="col-lg-2 col-md-6">
                    <h5 class="text-light mb-4">고객안내</h5>
                    <a class="btn btn-link" href="">이용안내</a>
                    <a class="btn btn-link" href="">안전정책</a>
                    <a class="btn btn-link" href="">예상금액</a>
                    <a class="btn btn-link" href="">인생만렙보증</a>
                    <a class="btn btn-link" href="">인생만렙찾기</a>
                </div>
                <div class="col-lg-2 col-md-6">
                    <h5 class="text-light mb-4">고객센터</h5>
                    <a class="btn btn-link" href="">공지사항</a>
                    <a class="btn btn-link" href="">자주묻는질문</a>
                </div>
            </div>
        </div>
        <div class="container">
        	<div class="row py-1">
        		<div class="col text-center">
        			이용약관
        		</div>
        		<div class="col text-center">
        			개인정보처리방침
        		</div>
        		<div class="col text-center">
        			사업자 정보확인
        		</div>
        	</div>
        	<div class="row">
        		<div class="col text-center">
        			<p class="m-0">
        				(주)인생만렙은 통신판매중개자로서 통신판매의 당사자가 아니면 개별 판매자가 제공하는 서비스에 대한 이행, 
        				계약사항 등과 관련한 의무와 책임은 거래당사자에게 있습니다.
        			</p>
        		</div>
        	</div>
        </div>
        <div class="container">
        	<div class="row">
        		<div class="col text-center">
        			<p class="m-0">
        				상호명: (주)인생만렙 대표이사: 신지원 개인정보책임관리자: 신지원 주소: 서울특별시 서초구 서초대로77길 55,에이프로스퀘어 3층
        			</p>
        		</div>
        	</div>
        	<div class="row">
        		<div class="col text-center">
        			<p class="m-0">
        				사업자등록번호: 000-00-00000 통신판매업신고증: 제 2022-서울강남-00000호 직업정보제공사업 신고번호: 서울청 제 2022-00호
        			</p>
        		</div>
        	</div>
        	<div class="row">
        		<div class="col text-center">
        			<p class="m-0 mb-2">
        				고객센터: 1599-9999 이메일: support@insaengmanlab.com
        			</p>
        		</div>
        	</div>
        </div>
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


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-0 back-to-top"><i class="bi bi-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/resources/template/woody/lib/wow/wow.min.js"></script>
    <script src="/resources/template/woody/lib/easing/easing.min.js"></script>
    <script src="/resources/template/woody/lib/waypoints/waypoints.min.js"></script>
    <script src="/resources/template/woody/lib/counterup/counterup.min.js"></script>
    <script src="/resources/template/woody/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="/resources/template/woody/lib/isotope/isotope.pkgd.min.js"></script>
    <script src="/resources/template/woody/lib/lightbox/js/lightbox.min.js"></script>

    <!-- Template Javascript -->
    <script src="/resources/template/woody/js/main.js"></script>
</body>

</html>