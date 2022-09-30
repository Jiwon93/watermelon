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
<form method="get" id="form" name="form" autocomplete="off" enctype="multipart/form-data">
    <!-- Navbar Start -->
    <%@include file="../../common/xdmin/includeV1/nav.jsp"%>
    <!-- Navbar End -->
    
    <!-- Contact Start -->
    <div class="container-fluid overflow-hidden" style="margin: 1rem 0;">
           <div class="row">
           
           	   <!-- mypageList Start -->
		       <%@include file="../../common/xdmin/includeV1/mypageList.jsp"%>
		       <!-- mypageList End -->
		       
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
		                               <input type="text" class="form-control" id="nicknameMod" value="jiwon123" readonly>
		                           </div>
		                       </div>
		                       <div class="col-8 offset-2">
		                       	   <label class="form-label" for="emailMod">이메일</label>
		                           <div class="input-group">
		                               <input type="email" class="form-control" id="emailMod" value="jiwon123@naver.com" readonly>
		                           </div>
		                       </div>
		                       <div class="col-8 offset-2">
		                       	   <label class="form-label" for="passwordReg">비밀번호</label>
		                           <div class="input-group">
		                               <input type="password" class="form-control" id="passwordReg" value="jiwon12345" readonly>
		                           </div>
		                       </div>
		                       <div class="col-8 offset-2">
		                       	   <label class="form-label" for="bodReg">생년월일</label>	
		                           <div class="input-group">
		                               <input type="text" class="form-control" id="bodReg" value="1993-02-10" readonly>
		                           </div>
		                       </div>
		                       <div class="col-8 offset-2">
		                       	   <label class="form-label" for="phoneReg">핸드폰</label>	
		                           <div class="input-group">
		                               <input type="text" class="form-control" id="phoneReg" value="010-2236-0210" readonly>
		                           </div>
		                       </div>
		                       <div class="col-8 offset-2">
		                       	   <label class="form-label" for="genderReg">성별</label>	
		                           <br>
		                           <div class="form-check form-check-inline">
		                               <input type="radio" class="form-check-input" name="gender" id="genderRegM" checked readonly>
		                               <label class="form-check-label" for="genderRegM">남자</label>
		                           </div>
		                       </div>
		                       <div class="col-3 offset-2">
		                       	   <label class="form-label" for="addressReg">주소</label>
		                       	   <div class="input-group">
		                               <input type="text" class="form-control w-25" id="addressReg" value="06598" readonly>
		                           </div>
		                       </div>
		                       <div class="col-8 offset-2 mt-2">
		                           <div class="input-group mb-2">
		                               <input type="text" class="form-control" id="addressReg" value="서울 서초구 고무래로 89" readonly>
		                           </div>
		                           <div class="input-group">
		                               <input type="text" class="form-control" id="addressReg" value="반포써밋 아파트 101동 1001호" readonly>
		                           </div>
		                       </div>
		                       <div class="col-8 offset-2">
		                       	   <label class="form-label" for="jobReg">직업</label>
		                       	   <div class="input-group">
				                       <div class="input-group">
										   <input type="text" class="form-control"  id="jobReg" value="직장인" readonly>
								   	   </div>
					   		   	   </div>
				  			   </div>
							   <div class="col-8 offset-2">
		                       	   <label class="form-label" for="favoriteReg">관심분야</label>
		                       	   <div class="input-group">
			                           <div class="input-group">
										   <input type="text" class="form-control" id="favoriteReg" value="IT 프로그래밍" readonly>
									   </div>
								   </div>
							   </div>
							   <div class="col-8 offset-2">
		                       	   <label class="form-label" for="favoriteReg">전문분야 및 상세분야</label>
		                       	   <div class="input-group">
			                           <div class="input-group">
										   <input type="text" class="form-control" id="favoriteReg" value="IT 프로그래밍" readonly>
									   </div>
									   <div class="input-group mt-2">
										   <input type="text" class="form-control" id="favoriteReg" value="웹사이트 신규 제작" readonly>
									   </div>
								   </div>
							   </div>
							   <div class="col-8 offset-2">
		                       	   <label class="form-label" for="techniqueReg">보유기술</label>
		                       	   <div class="input-group">
			                           <div class="input-group">
										   <input type="text" class="form-control" id=""techniqueReg"" value="Java, JavaScript, Bootstrap, JSP, MySQL, jQuery, HTML, CSS" readonly>
									   </div>
								   </div>
							   </div>
							   <div class="col-8 offset-2">
		                       	   <label class="form-label" for="careerReg">경력사항</label>
		                       	   <div class="input-group">
			                           <div class="input-group">
										   <input type="text" class="form-control" id="careerReg" value="3년" readonly>
									   </div>
								   </div>
							   </div>
							   <div class="col-8 offset-2">
		                       	   <label class="form-label" for="schoolReg">학력, 자격증</label>
		                       	   <div class="input-group">
			                           <div class="input-group">
										   <input type="text" class="form-control" id="schoolReg" value="서울대학교 컴퓨터공학과 졸업" readonly>
									   </div>
								   </div>
								   <div class="input-group mt-2">
			                           <div class="input-group">
										   <input type="text" class="form-control" id="schoolReg" value="정보처리기사" readonly>
									   </div>
								   </div>
							   </div>
							   <div class="col-8 offset-2">
		                       	   <label class="form-label" for="payReg">희망급여(단위, 만원)</label>
		                       	   <div class="input-group">
			                           <div class="input-group">
										   <input type="text" class="form-control" id="payReg" value="4,500만원" readonly>
									   </div>
								   </div>
							   </div>
							   <div class="col-8 offset-2">
		                       	   <label class="form-label" for="wishReg">희망근로시간</label>
		                       	   <div class="input-group">
			                           <div class="input-group">
										   <input type="text" class="form-control" id="wishReg" value="오전, 오후, 협의가능" readonly>
									   </div>
								   </div>
							   </div>
							   <div class="col-8 offset-2">
		                       	   <label class="form-label" for="introReg">자기소개</label>
		                       	   <div class="input-group">
			                           <div class="col-sm-12">
										   <textarea class="form-control" rows="4" id="introReg" readonly>신규 웹사이트 제작 경력 3년자 입니다. 여러 종류의 웹사이트 제작 경험도 있고 포트폴리오도 있으니 보시고, 문의 연락주시면 상담 해드립니다. 감사합니다.</textarea>
									   </div>
								   </div>
							   </div>
							   <div class="col-sm-12 text-center">
							   	   <button type="button" class="btn btn-primary w-25" onclick="location.href='memberModFormB.html'">수정하기</button>	
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
    
</body>

</html>