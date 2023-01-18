<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<jsp:useBean id="CodeServiceImpl" class="com.lifemanlab.shop.modules.code.CodeServiceImpl"/>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>혼자서 할 수 없던 것 | 인생만렙에서 만렙들과 해보세요.</title>
    <%@ include file="../common/basicCss.jsp" %>

    <style type="text/css">
    	.computer {
    		color: #AB7442;
    	}
    	
    	.computer:hover {
    		color: #895D35;
    	}
    </style>
</head>

<body>
<form method="post" id="form" name="form" autocomplete="off" enctype="multipart/form-data">
	<input type="hidden" id="sessSeq" name="sessSeq" value="${sessSeq }">
    <!-- Navbar Start -->
    <%@include file="../common/nav.jsp"%>
    <!-- Navbar End -->

    <!-- Carousel Start -->
    <div class="container-fluid p-0 pb-5 mt-4">
        <div class="owl-carousel header-carousel position-relative">
            <div class="owl-carousel-item position-relative">
                <img class="img-fluid" src="/resources/images/slide1.jpg">
            </div>
            <div class="owl-carousel-item position-relative">
                <img class="img-fluid" src="/resources/images/slide2.jpg">
            </div>
            <div class="owl-carousel-item position-relative">
                <img class="img-fluid" src="/resources/images/slide3.jpg">
            </div>
        </div>
    </div>
    <!-- Carousel End -->
    
    <!--  Menu Start -->
	<div class="container py-4">
		<div class="row ms-5 me-5">
			<div class="col overflow-hidden text-center">
				<a class="computer" id="btnItemMenu" type="button"><i class="fa-solid fa-computer fa-4x"></i></a>
				<br><label class="text-primary" for="btnItemMenu"><b>개발/디자인</b></label>
			</div>
			<div class="col text-center">
				<a id="homeLiving" type="button"><i class="fa-solid fa-house-chimney fa-4x"></i></a>
				<br><label class="text-primary" for="homeLiving"><b>홈/리빙</b></label>
			</div>
			<div class="col text-center">
				<a id="lesson" type="button"><i class="fa-solid fa-music fa-4x"></i></a>
				<br><label class="text-primary" for="lesson"><b>레슨</b></label>
			</div>
			<div class="col text-center">
				<a href="#" id="translate" type="button"><i class="fa-solid fa-language fa-4x"></i></a>
				<br><label class="text-primary" for="translate"><b>통역/번역</b></label>
			</div>
			<div class="col text-center">
				<a href="#" id="photoVideo" type="button"><i class="fa-solid fa-camera fa-4x"></i></a>
				<br><label class="text-primary" for="photoVideo"><b>사진/영상</b></label>
			</div>
		</div>
		<div class="row ms-5 me-5 mt-5">
			<div class="col text-center">
				<a href="#" id="beautyHealth" type="button"><i class="fa-solid fa-heart fa-4x"></i></a>
				<br><label class="text-primary" for="beautyHealth"><b>미용/건강</b></label>
			</div>
			<div class="col text-center">
				<a href="#" id="employ" type="button"><i class="fa-solid fa-pencil fa-4x"></i></a>
				<br><label class="text-primary" for="employ"><b>취업/입시</b></label>
			</div>
			<div class="col text-center">
				<a href="#" id="marketing" type="button"><i class="fa-solid fa-lightbulb fa-4x"></i></a>
				<br><label class="text-primary" for="marketing"><b>마케팅</b></label>
			</div>
			<div class="col text-center">
				<a href="#" id="event" type="button"><i class="fa-solid fa-puzzle-piece fa-4x"></i></a>
				<br><label class="text-primary" for="event"><b>이벤트</b></label>
			</div>
			<div class="col text-center">
				<a href="#" id="taxLegalLabor" type="button"><i class="fa-solid fa-scale-balanced fa-4x"></i></a>
				<br><label class="text-primary" for="taxLegalLabor"><b>세무/법무/노무</b></label>
			</div>
		</div>
	</div>
	<!--  Menu End -->

    <!-- Service Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="section-title text-center">
                <h3 class="display-5 mb-5">인기만렙!</h3>
            </div>
            <div class="row g-4">
                <div class="col-md-6 col-lg-3 wow">
                    <div class="service-item">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="/resources/images/laptop.jpg" alt="">
                        </div>
                        <div class="p-4 text-center border border-5 border-light border-top-0">
                            <h5 class="mb-3">개발/디자인</h5>
                            <h4 class="mb-3">웹</h4>
                            <a class="fw-medium">Read More<i class="fa fa-arrow-right ms-2"></i></a>
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
                <h3 class="display-5 mb-5">만렙이용후기</h3>
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
                <h3 class="display-5 mb-5">만렙이야기</h3>
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
    <%@include file="../common/footer.jsp"%>
    <!-- Footer End -->

    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-0 back-to-top"><i class="bi bi-arrow-up"></i></a>
</form>

     <%@ include file="../common/basicJs.jsp" %>
	
    <script type="text/javascript">
    	var goUrlItemMenu = "/item/itemMenu";
    	var goUrlPurchase = "/item/itemPayment";
    	
    	$("#btnItemMenu").on("click", function(){
	   		$(location).attr("href", goUrlItemMenu);
		});
    	
    	$("#btnPurchase").on("click", function(){
	   		$(location).attr("href", goUrlPurchase);
		});
    	
    </script>
    
</body>

</html>