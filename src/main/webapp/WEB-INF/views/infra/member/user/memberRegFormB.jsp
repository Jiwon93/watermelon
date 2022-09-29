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
    	.btn {
    		border-radius: 5px;
    		height: 45px;
    	}
    </style>

</head>

<body>
<form>
    <!-- Navbar Start -->
    <nav class="container-fluid">
        <div class="row" id="">
	        <div class="col" style="text-align: center; margin: 4rem 0;">
	            <div class="navbar-nav ms-auto">
	                <a href="#" class=""><img alt="" src="/resources/images/logo.PNG" width="50px;" height="50px;"></a>
	            </div>
            </div>
        </div>
    </nav>
    <!-- Navbar End -->

    <!-- Contact Start -->
    <div class="container-fluid bg-light overflow-hidden" style="margin: 1rem 0;">
        <div class="container contract">
           <div class="col-6 contact-text py-2 offset-3">
               <div class="p-lg-5">
                   <div class="section-title text-center">
                       <h1 class="display-6 mb-4">만렙가입</h1>
                   </div>
                   <div class="row g-3">
                       <div class="col-8 offset-2">
                       	   <label class="form-label" for="emailReg">이메일</label>	
                           <div class="input-group">
                               <input type="email" class="form-control" id="emailReg" placeholder="이메일을 입력해 주세요.">
                           </div>
                       </div>
                       <div class="col-8 offset-2">
                       	   <label class="form-label" for="passwordReg">비밀번호</label>
                           <div class="input-group mb-2">
                               <input type="password" class="form-control" id="passwordReg" placeholder="비밀번호를 입력해 주세요.">
                           </div>
                           <div class="input-group">
                               <input type="password" class="form-control" id="passwordReg" placeholder="동일하게 한번 더 입력해 주세요.">
                           </div>
                       </div>
                       <div class="col-8 offset-2">
                       	   <label class="form-label" for="bodReg">생년월일</label>	
                           <div class="input-group">
                               <input type="text" class="form-control" id="bodReg" placeholder="8글자로 입력해 주세요.(ex. YYYYMMDD)" maxlength="8">
                           </div>
                       </div>
                       <div class="col-8 offset-2">
                       	   <label class="form-label" for="phoneReg">핸드폰</label>	
                           <div class="input-group">
                               <input type="text" class="form-control" id="phoneReg" placeholder="(-)를 제외한 11글자로 입력해 주세요." maxlength="11">
                           </div>
                       </div>
                       <div class="col-8 offset-2">
                       	   <label class="form-label" for="genderReg">성별</label>	
                           <br>
                           <div class="form-check form-check-inline">
                               <input type="radio" class="form-check-input" name="gender" id="genderRegM">
                               <label class="form-check-label" for="genderRegM">남자</label>
                           </div>
                           <div class="form-check form-check-inline">
                               <input type="radio" class="form-check-input" name="gender" id="genderRegW">
                               <label class="form-check-label" for="genderRegW">여자</label>
                           </div>
                       </div>
                       <div class="col-8 offset-2">
                       	   <label class="form-label" for="addressReg">주소</label>
                       	   <div class="input-group mb-2">
                       	   	   <button class="btn btn-primary" type="button" style="height: 38px;">주소검색</button>
                               <input type="text" class="form-control" id="addressReg" placeholder="우편번호">
                           </div>
                           <div class="input-group mb-2">
                               <input type="text" class="form-control" id="addressReg" placeholder="주소를 입력해 주세요.">
                           </div>
                           <div class="input-group">
                               <input type="text" class="form-control" id="addressReg" placeholder="상세주소를 입력해 주세요.">
                           </div>
                       </div>
                       <div class="col-8 offset-2">
                       	   <label class="form-label" for="jobReg">직업</label>
                       	   <div class="input-group">
                         <select class="form-select" id="jobReg">
					   <option selected>직업선택</option>
					   <option value="j1">직장인</option>
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
                         <select class="form-select" id="favoriteReg" multiple>
					   <option selected>디자인</option>
					   <option value="f1">IT 프로그래밍</option>
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
		   <div class="col-8 offset-2">
		   	   <div class="agreeBox">
		   	   	   <div class="agreeAll">
  	   	   	   	   	   	   <i class="fa-solid fa-circle-check"></i>
  	   	   	   	   	   	   <span>모두 동의합니다.</span>
 	   	   	   	   	   	   </div>
 	   	   	   	   	   	   <hr>
 	   	   	   	   	   	   <div class="agreeCertain">
 	   	   	   	   	   	   	   <i class="fa-solid fa-circle-check"></i>
 	   	   	   	   	   	   	   <span>만 14세 이상입니다.</span>
 	   	   	   	   	   	   	   <span class="certain">(필수)</span>
	   	   	   	   	   	   	   </div>
 	   	   	   	   	   	   <div class="agreeCertain">
 	   	   	   	   	   	   	   <i class="fa-solid fa-circle-check"></i>
  	   	   	   	   	   	   <span>서비스 이용약관에 동의합니다.</span>
  	   	   	   	   	   	   <span class="certain">(필수)</span>
	   	   	   	   	   	   	   </div>
	   	   	   	   	   	   	   <div class="agreeCertain">
 	   	   	   	   	   	   	   <i class="fa-solid fa-circle-check"></i>
  	   	   	   	   	   	   <span>개인정보 수집/이용에 동의합니다.</span>
  	   	   	   	   	   	   <span class="certain">(필수)</span>
	   	   	   	   	   	   	   </div>
	   	   	   	   	   	   	   <div class="agreeSelection">	   
 	   	   	   	   	   	   	   <i class="fa-solid fa-circle-check"></i>
 	   	   	   	   	   	   	   <span>이벤트 할인 혜택 알림 수신에 동의합니다. (선택)</span>
	   	   	   	   	   	   	   </div>
	   	   	   	   	   	   	   <div class="agreeSelection">
	   	   	   	   	   	   	   	   <a href="#">	   
 	   	   	   	   	   	   	   	  <i class="fa-solid fa-circle-check"></i>
 	   	   	   	   	   	   	   	  <span>장기 미접속 시 계정 활성 상태 유지합니다. (선택)</span>
 	   	   	   	   	   	   	   </a>
   	   	   	   	   	   	   	   </div>
   	   	   	   	   	   	   </div>
   	   	   	   	   	   </div>
                       <div class="col-8 offset-2">
                           <button class="btn btn-primary w-100" type="button" onclick="location.href='loginForm.html'">가입완료!</button>
                       </div>
                   </div>
               </div>
           </div>
        </div>
    </div>
    <!-- Contact End -->
    
    <!-- Footer Start -->
    <div class="container-fluid bg-dark text-light footer mt-5 pt-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container py-3">
            <div class="copyright">
                <div class="row">
                    <div class="col-12 text-center text-md-middle mb-3 mb-md-0">
                        &copy; <a class="border-bottom" href="#">인생만렙</a>, All Right Reserved.
                    </div>
                    <div class="col-12 text-center text-md-middle">
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