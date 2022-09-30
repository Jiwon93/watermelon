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
						<button class="btn btn-primary" style="width: 200px;" type="button">만렙으로 전환</button>
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
	                       <h4 class="mb-4">계정설정</h4>
	                   </div>
	                   <div class="p-4 border border-2 border-light">
		                   <div class="row g-3">
		                   	   <div class="col-8 offset-2">
		                       	   <label class="form-label" for="nicknameMod">닉네임</label>	
		                           <div class="input-group">
		                               <input type="text" class="form-control" id="nicknameMod" value="jiwon123">
		                           </div>
		                       </div>
		                       <div class="col-8 offset-2">
		                       	   <label class="form-label" for="emailMod">이메일</label>
		                       	   <button class="confirm btn btn-primary" style="height: 30px; color: #AB7442;">인증</button>	
		                           <div class="input-group">
		                               <input type="email" class="form-control" id="emailMod" value="jiwon123@naver.com">
		                           </div>
		                       </div>
		                       <div class="col-8 offset-2">
		                       	   <label class="form-label" for="passwordReg">비밀번호</label>
		                           <div class="input-group">
		                               <input type="password" class="form-control" id="passwordReg" value="********">
		                           </div>
		                       </div>
		                       <div class="col-8 offset-2">
		                       	   <label class="form-label" for="bodReg">생년월일</label>	
		                           <div class="input-group">
		                               <input type="text" class="form-control" id="bodReg" value="1993-02-10">
		                           </div>
		                       </div>
		                       <div class="col-8 offset-2">
		                       	   <label class="form-label" for="phoneReg">핸드폰</label>	
		                       	   <button class="confirm btn btn-primary" style="height: 30px; color: #AB7442;">인증</button>
		                           <div class="input-group">
		                               <input type="text" class="form-control" id="phoneReg" value="010-2236-0210">
		                           </div>
		                       </div>
		                       <div class="col-8 offset-2">
		                       	   <label class="form-label" for="genderReg">성별</label>	
		                           <br>
		                           <div class="form-check form-check-inline">
		                               <input type="radio" class="form-check-input" name="gender" id="genderRegM" checked>
		                               <label class="form-check-label" for="genderRegM">남자</label>
		                           </div>
		                           <div class="form-check form-check-inline">
		                               <input type="radio" class="form-check-input" name="gender" id="genderRegW">
		                               <label class="form-check-label" for="genderRegW">여자</label>
		                           </div>
		                       </div>
		                       <div class="col-3 offset-2">
		                       	   <label class="form-label" for="addressReg">주소</label>
		                       	   <div class="input-group">
		                       	   	   <button class="btn btn-primary" type="submit">주소검색</button>
		                               <input type="text" class="form-control w-25" id="addressReg" value="06598">
		                           </div>
		                       </div>
		                       <div class="col-8 offset-2 mt-2">
		                           <div class="input-group mb-2">
		                               <input type="text" class="form-control" id="addressReg" value="서울 서초구 고무래로 89">
		                           </div>
		                           <div class="input-group">
		                               <input type="text" class="form-control" id="addressReg" value="반포써밋 아파트 101동 1001호">
		                           </div>
		                       </div>
		                       <div class="col-8 offset-2">
		                       	   <label class="form-label" for="jobReg">직업</label>
		                       	   <div class="input-group">
				                       <select class="form-select" id="jobReg">
										   <option value="j0">직업선택</option>
										   <option value="j1" selected>직장인</option>
										   <option value="j2">프리랜서</option>
										   <option value="j3">소상공인</option>
										   <option value="j4">스타트업 창업자</option>
										   <option value="j5">대학(원)생</option>
										   <option value="j6">취업준비생</option>
								   	   </select>
					   		   	   </div>
				  			   </div>
							   <div class="col-8 offset-2">
		                       	   <label class="form-label" for="favoriteReg">관심선택(중복 선택 가능)</label>
		                       	   <div class="input-group">
			                           <select class="form-select" id="favoriteReg">
										   <option value="f0">디자인</option>
										   <option value="f1" selected>IT 프로그래밍</option>
										   <option value="f2">영상 사진 음향</option>
										   <option value="f3">마케팅</option>
										   <option value="f4">번역 통역</option>
										   <option value="f5">문서 글쓰기</option>
										   <option value="f6">건강 미용</option>
										   <option value="f7">비즈니스 컨설팅</option>
										   <option value="f8">심리상담</option>
										   <option value="f9">주문제작</option>
										   <option value="f10">세무 법무 노무</option>
										   <option value="f11">이벤트</option>
										   <option value="f12">레슨</option>
									   </select>
								   </div>
							   </div>
							   <div class="col-sm-12 text-center">
							   	   <button type="button" class="btn btn-primary w-25">수정완료</button>	
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
    
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    
    <script type="text/javascript">
    	var goUrlHome = "/member/memberHome";
    	var goUrlMypage = "/member/memberViewC";
    	var goUrlMemberMod = "/member/memberModFormC";
    	var goUrlSaleManage = "/member/saleManage";
    	var goUrlPurchaseHistory = "/member/purchaseHistory";
    	var goUrlItemMenu = "/item/itemMenu";
    	
    	$("#btnHome").on("click", function(){
	   		$(location).attr("href", goUrlHome);
		});
    	
    	$("#btnMypage").on("click", function(){
	   		$(location).attr("href", goUrlMypage);
		});
    	
    	$("#btnMemberMod").on("click", function(){
	   		$(location).attr("href", goUrlMemberMod);
		});
    	
    	$("#btnSaleManage").on("click", function(){
	   		$(location).attr("href", goUrlSaleManage);
		});
    	
    	$("#btnPurchaseHistory").on("click", function(){
	   		$(location).attr("href", goUrlPurchaseHistory);
		});
    	
    	$("#btnItemMenu").on("click", function(){
	   		$(location).attr("href", goUrlItemMenu);
		});
    	
    	
    </script>
</body>

</html>