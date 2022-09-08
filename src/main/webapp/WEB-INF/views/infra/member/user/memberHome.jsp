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
    	.btn {
    		border-radius: 5px;
    		height: 45px;
    	}
    </style>
</head>

<body>
    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top p-0">
        <a href="#" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
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
            <div class="navbar-nav ms-auto">
                <a href="#" class="nav-item nav-link"><i class="fa-solid fa-comment fa-2x"></i></a>
                <a href="#" class="nav-item nav-link"><i class="fa-solid fa-bell fa-2x"></i></a>
                <a href="#" class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fa-solid fa-user fa-2x"></i></a>
                <ul class="dropdown-menu" id="" role="menu" style="right: 0; left: auto;">
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


    <!-- Carousel Start -->
    <div class="container-fluid p-0 pb-5 mt-5">
        <div class="owl-carousel header-carousel position-relative">
            <div class="owl-carousel-item position-relative">
                <img class="img-fluid" src="/resources/images/slide1.jpg" alt="">
            </div>
            <div class="owl-carousel-item position-relative">
                <img class="img-fluid" src="/resources/images/slide2.jpg" alt="">
            </div>
            <div class="owl-carousel-item position-relative">
                <img class="img-fluid" src="/resources/images/slide3.jpg" alt="">
            </div>
        </div>
    </div>
    <!-- Carousel End -->
    
    <!--  Menu Start -->
	<div class="container py-5">
		<div class="row ms-5 me-5">
			<div class="col overflow-hidden text-center">
				<a href="#" id="developDesign"><i class="fa-solid fa-computer fa-4x"></i></a>
				<br><label class="text-primary" for="developDesign"><b>개발/디자인</b></label>
			</div>
			<div class="col text-center">
				<a href="#" id="homeLiving"><i class="fa-solid fa-house-chimney fa-4x"></i></a>
				<br><label class="text-primary" for="homeLiving"><b>홈/리빙</b></label>
			</div>
			<div class="col text-center">
				<a href="#" id="lesson"><i class="fa-solid fa-music fa-4x"></i></a>
				<br><label class="text-primary" for="lesson"><b>레슨</b></label>
			</div>
			<div class="col text-center">
				<a href="#" id="translate"><i class="fa-solid fa-language fa-4x"></i></a>
				<br><label class="text-primary" for="translate"><b>통역/번역</b></label>
			</div>
			<div class="col text-center">
				<a href="#" id="photoVideo"><i class="fa-solid fa-camera fa-4x"></i></a>
				<br><label class="text-primary" for="photoVideo"><b>사진/영상</b></label>
			</div>
		</div>
		<div class="row ms-5 me-5 mt-5">
			<div class="col text-center">
				<a href="#" id="beautyHealth"><i class="fa-solid fa-heart fa-4x"></i></a>
				<br><label class="text-primary" for="beautyHealth"><b>미용/건강</b></label>
			</div>
			<div class="col text-center">
				<a href="#" id="employ"><i class="fa-solid fa-pencil fa-4x"></i></a>
				<br><label class="text-primary" for="employ"><b>취업/입시</b></label>
			</div>
			<div class="col text-center">
				<a href="#" id="marketing"><i class="fa-solid fa-lightbulb fa-4x"></i></a>
				<br><label class="text-primary" for="marketing"><b>마케팅</b></label>
			</div>
			<div class="col text-center">
				<a href="#" id="event"><i class="fa-solid fa-puzzle-piece fa-4x"></i></a>
				<br><label class="text-primary" for="event"><b>이벤트</b></label>
			</div>
			<div class="col text-center">
				<a href="#" id=""><i class="fa-solid fa-scale-balanced fa-4x"></i></a>
				<br><label class="text-primary" for="taxLegalLabor"><b>세무/법무/노무</b></label>
			</div>
		</div>
	</div>
	<!--  Menu End -->

    <!-- Service Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="section-title text-center">
                <h1 class="display-5 mb-5">인기만렙!</h1>
            </div>
            <div class="row g-4">
                <div class="col-md-6 col-lg-3 wow">
                    <div class="service-item">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="../images/laptop.jpg" alt="">
                        </div>
                        <div class="p-4 text-center border border-5 border-light border-top-0">
                            <h5 class="mb-3">개발/디자인</h5>
                            <h4 class="mb-3">웹</h4>
                            <a class="fw-medium" href="">Read More<i class="fa fa-arrow-right ms-2"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 wow">
                    <div class="service-item">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="/resources/images/paper.jpg" alt="">
                        </div>
                        <div class="p-4 text-center border border-5 border-light border-top-0">
                            <h5 class="mb-3">디자인</h5>
                            <h4 class="mb-3">로고 브랜딩</h4>
                            <a class="fw-medium" href="">Read More<i class="fa fa-arrow-right ms-2"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3">
                    <div class="service-item">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="/resources/images/shop.png" alt="">
                        </div>
                        <div class="p-4 text-center border border-5 border-light border-top-0">
                            <h5 class="mb-3">마케팅</h5>
                            <h4 class="m-3">쇼핑몰 스토어</h4>
                            <a class="fw-medium" href="">Read More<i class="fa fa-arrow-right ms-2"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3">
                    <div class="service-item">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="/resources/images/ebook.jpg" alt="">
                        </div>
                        <div class="p-4 text-center border border-5 border-light border-top-0">
                            <h5 class="mb-3">투잡 노하우</h5>
                            <h4 class="m-3">투잡 재테크 전자책</h4>
                            <a class="fw-medium" href="">Read More<i class="fa fa-arrow-right ms-2"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Service End -->
    <!-- Projects Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="section-title text-center">
                <h1 class="display-5 mb-5">만렙이용후기</h1>
            </div>
            <div class="row g-4 portfolio-container">
                <div class="col-lg-4 col-md-6 portfolio-item first">
                    <div class="rounded overflow-hidden">
                        <div class="position-relative overflow-hidden">
                            <img class="img-fluid w-100" src="/resources/images/success.png" alt="">
                        </div>
                        <div class="border border-5 border-light border-top-0 p-4">
                            <p class="text-primary fw-medium mb-2">[후기]</p>
                            <h5 class="lh-base mb-0">취업 PT 수강 후 합격</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 portfolio-item second">
                    <div class="rounded overflow-hidden">
                        <div class="position-relative overflow-hidden">
                            <img class="img-fluid w-100" src="/resources/images/mall.png" alt="">
                        </div>
                        <div class="border border-5 border-light border-top-0 p-4">
                            <p class="text-primary fw-medium mb-2">[후기]</p>
                            <h5 class="lh-base mb-0">쇼핑몰 웹사이트 제작으로 사업 성공</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 portfolio-item first">
                    <div class="rounded overflow-hidden">
                        <div class="position-relative overflow-hidden">
                            <img class="img-fluid w-100" src="/resources/images/cafe.jpg" alt="">
                        </div>
                        <div class="border border-5 border-light border-top-0 p-4">
                            <p class="text-primary fw-medium mb-2">[후기]</p>
                            <h5 class="lh-base mb-0">카페 인테리어 시공 후 성공적인 창업</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Projects End -->

    <!-- Testimonial Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="section-title text-center">
                <h1 class="display-5 mb-5">만렙이야기</h1>
            </div>
            <div class="owl-carousel testimonial-carousel">
                <div class="testimonial-item text-center">
                    <img class="img-fluid bg-light p-2 mx-auto mb-3" src="/resources/images/profil1.jpg" style="width:100px; height: 100px;">
                    <div class="testimonial-text text-center p-4">
                        <h5 class="mb-1">이00 만렙</h5>
                        <br>
                        <p>
                        	컴퓨터와 아무 관련 없던 내가<br>
                        	인생만렙 개발 전문가가 되기까지...
                        </p>
                    </div>
                </div>
                <div class="testimonial-item text-center">
                    <img class="img-fluid bg-light p-2 mx-auto mb-3" src="/resources/images/profil2.jpg" style="width:100px; height: 100px;">
                    <div class="testimonial-text text-center p-4">
                        <h5 class="mb-1">신00 만렙</h5>
                        <br>
                        <p>
                        	음치, 박치에서 보컬트레이너 되었어요.<br>
                        	누구나 할 수 있는 노래 !
                        </p>
                    </div>
                </div>
                <div class="testimonial-item text-center">
                    <img class="img-fluid bg-light p-2 mx-auto mb-3" src="/resources/images/profil3.jpg" style="width:100px; height: 100px;">
                    <div class="testimonial-text text-center p-4">
                        <h5 class="mb-1">유00 만렙</h5>
                        <br>
                        <p>
                        	착하기만 해서는 안된다.<br>
                        	똑똑하고 지혜롭게 살아가는 법
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Testimonial End -->


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