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
    
    <!-- CSS -->
    <link href="/resources/css/user/mainCss.css" rel="stylesheet">
    <link href="/resources/css/user/nav.css" rel="stylesheet">
    
    <!-- Fontawesome Stylesheet -->
    <script src="https://kit.fontawesome.com/059fbc3cf8.js" crossorigin="anonymous"></script>
    <style type="text/css">
    	.nav-tabs{
    		font-size: x-large;
    	}
    	
    	.sideMenu{
    		list-style: none;
    		padding: 0px;
    	}
		
		.sideMenu > li{
			padding-top: 20px;
		}
		
		.menuHead {
			background-color: #FAFAFC;
			font-weight: bold;
			height: 40px;
			text-indent: 20px;
			border-right: 1px solid #E0E1E9;
		} 
		
		.menuBody {
			text-indent: 20px;
			border: 1px solid #E0E1E9;
			font-size: 13px;
			word-spacing: 20px;
		}
    </style>
</head>

<body>
<form method="get" id="form" name="form" autocomplete="off" enctype="multipart/form-data">
    <!-- Navbar Start -->
    <%@include file="../../common/xdmin/includeV1/nav.jsp"%>
    <!-- Navbar End -->


    <!-- Carousel Start -->
    <div class="container-fluid p-0 pb-5 mt-5">
        <div class="owl-carousel header-carousel position-relative">
            <div class="owl-carousel-item position-relative">
                <img class="img-fluid" src="/resources/images/slide2.jpg" alt="">
                <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center" style="background: rgba(53, 53, 53, .7);">
                	<div class="container">
                    	<div class="row justify-content-center">
                        	<div class="col-12 col-lg-8 text-center">
                        		<i class="fa-solid fa-computer fa-4x" style="color: white;"></i>
								<br><label class="text-white" for="developDesign"><b>개발/디자인</b></label>
							</div>
						</div>
					</div>
				</div>
            </div>
        </div>
    </div>
    <!-- Carousel End -->
    
    <!-- Service Start -->
    <div class="container-fluid py-4">
    	<div class="row">
    		<div class="col-2">
				<ul class="nav nav-tabs">
				  	<li class="nav-item">
				    	<a class="nav-link active" data-toggle="tab" href="#developM">개발</a>
				  	</li>
				  	<li class="nav-item">
				    	<a class="nav-link" data-toggle="tab" href="#designM">디자인</a>
				  	</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane fade show active" id="developM">
						<ul class="sideMenu">
							<li>
								<a class="active" href="#">웹</a>
							</li>
							<li>
								<a class="" href="#">모바일 앱</a>
							</li>
							<li>
								<a class="" href="#">프로그램</a>
							</li>
							<li>
								<a class="" href="#">쇼핑몰 커머스</a>
							</li>
							<li>
								<a class="" href="#">데이터</a>
							</li>
							<li>
								<a class="" href="#">보안</a>
							</li>
						</ul>
					</div>
					<div class="tab-pane fade" id="designM">
						<ul>
							<li>
								<a class="" href="#">로고 브랜딩</a>
							</li>
							<li>
								<a class="" href="#">상세 이벤트 페이지</a>
							</li>
							<li>
								<a class="" href="#">명함 인쇄 홍보물</a>
							</li>
							<li>
								<a class="" href="#">웹 모바일 디자인</a>
							</li>
							<li>
								<a class="" href="#">일러스트 캐리커쳐</a>
							</li>
							<li>
								<a class="" href="#">웹툰 캐릭터 이모티콘</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-9">
				<div class="row p-1">
		            <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
						<ol class="breadcrumb">
					    	<li class="breadcrumb-item"><a href="#">홈</a></li>
					    	<li class="breadcrumb-item"><a href="#">개발/디자인</a></li>
					    	<li class="breadcrumb-item active" aria-current="page">웹</li>
						</ol>
					</nav>
				</div>
				<div class="row ps-3">
					<table class="border border-1">
						<tr>
							<td class="menuHead">기술 수준</td>
							<td class="menuBody">
								<a class="menuOption" href="#">초급</a> 
								<a class="menuOption" href="#">중급</a> 
								<a class="menuOption" href="#">고급</a>
							</td>
						</tr>
						<tr>
							<td class="menuHead">팀 규모</td>
							<td class="menuBody">
								<a class="menuOption" href="#">1인</a> 
								<a class="menuOption" href="#">5인미만</a> 
								<a class="menuOption" href="#">30인미만</a> 
								<a class="menuOption" href="#">30인이상</a>
							</td>
						</tr>
						<tr>
							<td class="menuHead">주말 여부</td>
							<td class="menuBody">
								<a class="menuOption" href="#">가능</a> 
								<a class="menuOption" href="#">불가능</a>
							</td>
						</tr>
					</table>
				</div>
				<div class="row p-1 mt-5 mb-5">
	           		<div class="col-3 service-item">
	               		<div class="overflow-hidden">
	               	    	<a id="btnMenu1" type="button"><img class="menuDD" src="/resources/images/main.jpg"></a>
	           			</div>
	           			<div class="pt-3">
	           				<p class="mainName">케이홈페이지입니다</p>
	           				<p class="mainTitle">최신 테마 반응형 홈페이지를 제작해 드립니다.</p>
	           				<div class="mainPay">
	           					<i class="fa-solid fa-receipt">&nbsp;550,000원~</i>
           					</div>
           					<div class="mainGrade">
			       				<i class="fa-solid fa-star" style="color: #FFD400;"></i>
			       				<span style="color: #9A9BA7;">5.0ㅣ32개의 평가</span>
		       				</div>
	           			</div>
	           		</div>
	                <div class="col-3 service-item">
	                    <div class="overflow-hidden">
	                        <img class="menuDD" src="/resources/images/main1.jpg">
	                    </div>
	                    <div class="pt-3">
	           				<p class="mainName">새라디자인</p>
	           				<p class="mainTitle">홈페이지 디자인부터 제작까지 완벽하게 제작해 드립니다.</p>
	           				<div class="mainPay">
	           					400,000원~
           					</div>
           					<div class="mainGrade">
			       				<i class="fa-solid fa-star" style="color: #FFD400;"></i>
			       				<span style="color: #9A9BA7;">5.0ㅣ12개의 평가</span>
		       				</div>
	           			</div>
	                </div>
	                <div class="col-3 service-item">
	               		<div class="overflow-hidden">
	               	    	<img class="menuDD" src="/resources/images/main2.jpg">
	           			</div>
	           			<div class="pt-3">
	           				<p class="mainName">영앤스마트</p>
	           				<p class="mainTitle">카카오 대회 우승팀 제작 "만족도 5.0" 소개홈페이지</p>
	           				<div class="mainPay">
	           					<i class="fa-solid fa-receipt">&nbsp;1,650,000원~</i>
           					</div>
           					<div class="mainGrade">
			       				<i class="fa-solid fa-star" style="color: #FFD400;"></i>
			       				<span style="color: #9A9BA7;">5.0ㅣ66개의 평가</span>
		       				</div>
	           			</div>
	           		</div>
	                <div class="col-3 service-item">
	               		<div class="overflow-hidden">
	               	    	<img class="menuDD" src="/resources/images/main3.jpg">
	           			</div>
	           			<div class="pt-3">
	           				<p class="mainName">pixelartdesign</p>
	           				<p class="mainTitle">반응형 홈페이지 누구나 쉽게 기획부터 디자인까지 완성해 드립니다.</p>
	           				<div class="mainPay">
	           					<i class="fa-solid fa-receipt">&nbsp;1,000,000원~</i>
           					</div>
           					<div class="mainGrade">
			       				<i class="fa-solid fa-star" style="color: #FFD400;"></i>
			       				<span style="color: #9A9BA7;">5.0ㅣ67개의 평가</span>
		       				</div>
	           			</div>
	           		</div>
	            </div>
	            <div class="row p-1 mb-5">
	           		<div class="col-3 service-item">
	               		<div class="overflow-hidden">
	               	    	<img class="menuDD" src="/resources/images/main4.png">
	           			</div>
	           			<div class="pt-3">
	           				<p class="mainName">홈파인</p>
	           				<p class="mainTitle">마케팅에 최적화된 랜딩페이지, 랜딩홈페이지 제작을 해 드립니다.</p>
	           				<div class="mainPay">
	           					<i class="fa-solid fa-receipt">&nbsp;165,000원~</i>
           					</div>
           					<div class="mainGrade">
			       				<i class="fa-solid fa-star" style="color: #FFD400;"></i>
			       				<span style="color: #9A9BA7;">4.9ㅣ70개의 평가</span>
		       				</div>
	           			</div>
	           		</div>
	                <div class="col-3 service-item">
	                    <div class="overflow-hidden">
	                        <img class="menuDD" src="/resources/images/main5.jpg">
	                    </div>
	                    <div class="pt-3">
	           				<p class="mainName">hyuuuk</p>
	           				<p class="mainTitle">홈페이지 디자인부터 퍼블리싱까지 해 드립니다.</p>
	           				<div class="mainPay">
	           					19,000원~
           					</div>
           					<div class="mainGrade">
			       				<i class="fa-solid fa-star" style="color: #FFD400;"></i>
			       				<span style="color: #9A9BA7;">5.0ㅣ76개의 평가</span>
		       				</div>
	           			</div>
	                </div>
	                <div class="col-3 service-item">
	               		<div class="overflow-hidden">
	               	    	<img class="menuDD" src="/resources/images/main6.jpg">
	           			</div>
	           			<div class="pt-3">
	           				<p class="mainName">수석프로그래머</p>
	           				<p class="mainTitle">기업, 개인, 이벤트, 홍보 홈페이지를 제작해 드립니다.</p>
	           				<div class="mainPay">
	           					440,000원~
           					</div>
           					<div class="mainGrade">
			       				<i class="fa-solid fa-star" style="color: #FFD400;"></i>
			       				<span style="color: #9A9BA7;">5.0ㅣ74개의 평가</span>
		       				</div>
	           			</div>
	           		</div>
	                <div class="col-3 service-item">
	               		<div class="overflow-hidden">
	               	    	<img class="menuDD" src="/resources/images/main7.jpg">
	           			</div>
	           			<div class="pt-3">
	           				<p class="mainName">JACKSEO</p>
	           				<p class="mainTitle">반응형 홈페이지 제작 48시간안에 드립니다.</p>
	           				<div class="mainPay">
	           					1,000,000원
           					</div>
           					<div class="mainGrade">
			       				<i class="fa-solid fa-star" style="color: #9A9BA7;"></i>
			       				<span style="color: #9A9BA7;">0.0ㅣ0개의 평가</span>
		       				</div>
	           			</div>
	           		</div>
	            </div>
	            <div class="row p-1">
	           		<div class="col-3 service-item">
	               		<div class="overflow-hidden">
	               	    	<img class="menuDD" src="/resources/images/main8.png">
	           			</div>
	           			<div class="pt-3">
	           				<p class="mainName">180도</p>
	           				<p class="mainTitle">디자인, SEO 제대로 된 최고의 홈페이지를 제작해 드립니다.</p>
	           				<div class="mainPay">
	           					<i class="fa-solid fa-receipt">&nbsp;1,320,000원~</i>
           					</div>
           					<div class="mainGrade">
			       				<i class="fa-solid fa-star" style="color: #FFD400;"></i>
			       				<span style="color: #9A9BA7;">5.0ㅣ126개의 평가</span>
		       				</div>
	           			</div>
	           		</div>
	                <div class="col-3 service-item">
	                    <div class="overflow-hidden">
	                        <img class="menuDD" src="/resources/images/main9.jpg">
	                    </div>
	                    <div class="pt-3">
	           				<p class="mainName">디자인여기야</p>
	           				<p class="mainTitle">사용자가 사용하기 편안한 반응형 홈페이지를 제작해 드립니다.</p>
	           				<div class="mainPay">
	           					350,000원
           					</div>
           					<div class="mainGrade">
			       				<i class="fa-solid fa-star" style="color: #FFD400;"></i>
			       				<span style="color: #9A9BA7;">4.9ㅣ14개의 평가</span>
		       				</div>
	           			</div>
	                </div>
	                <div class="col-3 service-item">
	               		<div class="overflow-hidden">
	               	    	<img class="menuDD" src="/resources/images/main10.png">
	           			</div>
	           			<div class="pt-3">
	           				<p class="mainName">인터랙티브디벨로퍼</p>
	           				<p class="mainTitle" style="height: 54px;">인터랙티브 웹사이트 제작해 드립니다.</p>
	           				<div class="mainPay">
	           					<i class="fa-solid fa-receipt">&nbsp;250,000원~</i>
           					</div>
           					<div class="mainGrade">
			       				<i class="fa-solid fa-star" style="color: #FFD400;"></i>
			       				<span style="color: #9A9BA7;">5.0ㅣ8개의 평가</span>
		       				</div>
	           			</div>
	           		</div>
	                <div class="col-3 service-item">
	               		<div class="overflow-hidden">
	               	    	<img class="menuDD" src="/resources/images/main11.jpg">
	           			</div>
	           			<div class="pt-3">
	           				<p class="mainName">어거스트웨어</p>
	           				<p class="mainTitle">기획부터 반응형 디자인 도메인 호스팅 검색등록까지해 드립니다.</p>
	           				<div class="mainPay">
	           					<i class="fa-solid fa-receipt">&nbsp;880,000원~</i>
           					</div>
           					<div class="mainGrade">
			       				<i class="fa-solid fa-star" style="color: #FFD400;"></i>
			       				<span style="color: #9A9BA7;">4.9ㅣ52개의 평가</span>
		       				</div>
	           			</div>
	           		</div>
	           		<div class="page m-5 mb-0">
                   	   <ul class="pagination justify-content-center">
                   	   	   <li><a href="#" class="start m-3"><i class="fa-solid fa-angle-left"></i></a></li>
                   	   	   <li><a href="#" class="first m-3"><i class="fa-solid fa-1"></i></a></li>
                   	   	   <li><a href="#" class="second m-3"><i class="fa-solid fa-2"></i></a></li>
                   	   	   <li><a href="#" class="third m-3"><i class="fa-solid fa-3"></i></a></li>
                   	   	   <li><a href="#" class="forth m-3"><i class="fa-solid fa-4"></i></a></li>
                   	   	   <li><a href="#" class="fifth m-3"><i class="fa-solid fa-5"></i></a></li>
                   	   	   <li><a href="#" class="end m-3"><i class="fa-solid fa-angle-right"></i></a></li>
                   	   </ul>
                   </div>
	            </div>
			</div>
		</div>
    </div>
    <!-- Service End -->
    <!-- Projects Start -->
    <!-- Projects End -->

    <!-- Testimonial Start -->
    <!-- Testimonial End -->

    <!-- Footer Start -->
    <%@include file="../../common/xdmin/includeV1/footer.jsp"%>
    <!-- Footer End -->

    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-0 back-to-top"><i class="bi bi-arrow-up"></i></a>
</form>

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
    
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    
    <script type="text/javascript">
    	var goUrlItemMenu = "/item/itemMenu";
    	var goUrlItemMenuView = "/item/itemMenuView";
    	
    	$("#btnItemMenu").on("click", function(){
	   		$(location).attr("href", goUrlItemMenu);
		});
    	
    	$("#btnMenu1").on("click", function(){
	   		$(location).attr("href", goUrlItemMenuView);
		});
    </script>
</body>

</html>