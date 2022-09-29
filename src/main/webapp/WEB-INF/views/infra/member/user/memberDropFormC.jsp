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
<form>
	<!-- Navbar Start -->
    <%@include file="../../common/xdmin/includeV1/nav.jsp"%>
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
						<h4 class="mb-4">계정탈퇴</h4>
					</div>
					<div class="p-4 border border-2 border-light">
						<div class="row g-3">
							<div class="col-8 mb-4">
								<label class="form-label mb-3" for="DropReg">인생만렙을 떠나는 이유를 알려주세요.</label>	
								<br>
								<div class="form-check mx-3">
									<input type="radio" class="form-check-input" name="" id="">
									<label class="form-check-label" for="">이용하고 싶은 서비스가 없어요</label>
								</div>
								<div class="form-check mx-3">
									<input type="radio" class="form-check-input" name="" id="">
									<label class="form-check-label" for="">서비스 퀄리티가 낮아요</label>
								</div>
								<div class="form-check mx-3">
									<input type="radio" class="form-check-input" name="" id="">
									<label class="form-check-label" for="">비매너 회원을 만났어요</label>
								</div>
								<div class="form-check mx-3">
									<input type="radio" class="form-check-input" name="" id="">
									<label class="form-check-label" for="">잦은 오류가 발생해요</label>
								</div>
								<div class="form-check mx-3">
									<input type="radio" class="form-check-input" name="" id="">
									<label class="form-check-label" for="">대체할 만한 서비스를 찾았어요</label>
								</div>
								<div class="form-check mx-3">
									<input type="radio" class="form-check-input" name="" id="">
									<label class="form-check-label" for="">쿠폰 적립금 등 혜택이 적어요</label>
								</div>
								<div class="form-check mx-3">
									<input type="radio" class="form-check-input" name="" id="">
									<label class="form-check-label" for="">기타</label>
								</div>
							</div>
							<div class="col-8">
								<label class="form-label" for="emailDrop">이메일 확인</label>
								<div class="input-group">
									<input type="email" class="form-control" id="emailDrop" placeholder="인생만렙에 가입하신 이메일을 적어주세요.">
								</div>
							</div>
							<div class="col-8">
								<div class="col-12 px-4 py-2" style="background-color: #F2F3F7;">
									<ul class="pt-3" style="font-size: small;">
										<li>현재 사용중인 게정 정보는 회원 탈퇴 후 복구가 불가합니다.</li>
										<li>진행 중인 거래건이 있거나 페널티 조치 중인 경우 탈퇴 신청이 불가합니다.</li>
										<li>탈퇴 후 회원님의 정보는 전자상거래 소비자보호법에 의거한 인생만렙 개인정보처리방침에 따라 관리됩니다.</li>
										<li>현재 보유중인 쿠폰 및 무상지급된 인생만렙 캐시와 마일리지는 모두 자동 소멸되며, 탈퇴 후 재가입하더라도 이미 소멸되었기 때문에 양도되지 않습니다.</li>
										<li>구매후기 및 답글은 탈퇴 시 자동 삭제되지 않습니다. 탈퇴 후에는 계정 정보가 삭제되어 본인 확인이 불가하므로, 탈퇴 신청 전에 게시글 삭제를 요청해 주시기 바랍니다.</li>
										<li>충전 캐시 또는 수익금이 있을 경우, 캐시 환불 및 수익금 출금을 통해 정산이 완료된 이후 탈퇴를 신청하셔야 합니다.</li>
									</ul>
								</div>
							</div>
							<div class="col-5 text-start" style="vertical-align: bottom;">
								<input type="checkbox" class="form-check-input" name="" id="">
								<label class="form-check-label" for="">주의사항을 모두 확인하였습니다.</label>
							</div>
							<div class="col-3 text-end">
								<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#memberDropCBtn">회원탈퇴</button>	
							</div>
							<div class="modal fade" id="memberDropCBtn" aria-labelledby="exampleModalLabel" aria-hidden="true">
								<div class="modal-dialog modal-dialog-centered">
									<div class="modal-content ">
										<div class="modal-head text-end me-3 mt-3">
											<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body text-center">
											<h5 class="modal-title mt-2" id="exampleModalLabel">정말 탈퇴하시겠습니까?</h5>
											<div class="row mt-5">
												<div class="col-6 text-center">
													<button class="btn btn-secondary" data-bs-dismiss="modal" aria-label="Close">취소</button>
												</div>
												<div class="col-6 text-center">
													<button class="btn btn-danger" onclick="location.href='../../index.html'">확인</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
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
</body>

</html>