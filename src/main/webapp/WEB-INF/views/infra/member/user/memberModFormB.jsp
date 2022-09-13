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
    <link href="../images/logo.png" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Roboto:wght@500;700;900&display=swap" rel="stylesheet"> 

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="../../template/woody/lib/animate/animate.min.css" rel="stylesheet">
    <link href="../../template/woody/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="../../template/woody/lib/lightbox/css/lightbox.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="../../template/woody/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="../../template/woody/css/style.css" rel="stylesheet">
    
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
            <img src="../images/logo.png" alt="" style="width: 60px; height: 60px;">
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
                <a href="#" class="nav-item nav-link"><i class="fa-solid fa-comment fa-2x"></i></a>
                <a href="#" class="nav-item nav-link"><i class="fa-solid fa-bell fa-2x"></i></a>
                <a href="#" class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fa-solid fa-user fa-2x"></i></a>
                <ul class="dropdown-menu" role="menu" style="right: 0; left: auto;">
		            <li><a class="dropdown-item" href="memberViewB.html">마이페이지</a></li>
		            <li><a class="dropdown-item" href="saleManage.html">판매 관리</a></li>
		            <li><a class="dropdown-item" href="memberViewB.html">계정 설정</a></li>
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
						<img src="../images/men.png" class="border border-3 rounded-circle" style="height: 40%; width: 40%;" alt="">
					</div>
					<div class="text-center pb-4">
						<button class="btn btn-primary" style="height: 30px; width: 60px; font-size: small;">만렙</button>
						<span class="px-3">jiwon123</span>
					</div>
					<div class="text-center pb-5">
						<button class="btn btn-secondary" style="width: 200px;" onclick="location.href='memberViewC.html'">일반으로 전환</button>
					</div>
					<div class="pt-4">
						<h4 class="" style="border-bottom: 2px solid #AB7442;">마이페이지</h4>
						<ul class="mypageC">
				            <li class="mypageList pt-3 pb-5"><a class="" href="saleManage.html">판매 관리</a></li>
				            <li class="mypageList"><a class="" href="saleReg.html">판매 등록</a></li>
				            <li class="mypageList"><a class="" href="#">수익 관리</a></li>
				            <li class="mypageList"><a class="" href="#">광고 신청</a></li>
				            <li class="mypageList"><a class="" href="#">나의 만렙 등급</a></li>
				            <li class="mypageList"><a class="" href="#">문의 관리</a></li>
				            <li class="mypageList"><a class="" href="memberViewB.html">계정 설정</a></li>
				            <li class="mypageList"><a class="" href="pwChangeFormB.html">비밀번호 변경</a></li>
				            <li class="mypageList"><a class="" href="memberDropFormB.html">계정 탈퇴</a></li>
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
		                               <input type="text" class="form-control w-25" id="addressReg" value="">
		                           </div>
		                       </div>
		                       <div class="col-8 offset-2 mt-2">
		                           <div class="input-group mb-2">
		                               <input type="text" class="form-control" id="addressReg" value="">
		                           </div>
		                           <div class="input-group">
		                               <input type="text" class="form-control" id="addressReg" value="">
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
							   <div class="col-8 offset-2">
		                       	   <label class="form-label" for="specialReg">전문분야 및 상세분야(중복 선택 가능)</label>
		                       	   <div class="input-group">
			                           <select class="form-select" id="specialReg">
										   <option value="s0">디자인</option>
										   <option value="s1" selected>IT 프로그래밍</option>
										   <option value="s2">영상 사진 음향</option>
										   <option value="s3">마케팅</option>
										   <option value="s4">번역 통역</option>
										   <option value="s5">문서 글쓰기</option>
										   <option value="s6">건강 미용</option>
										   <option value="s7">비즈니스 컨설팅</option>
										   <option value="s8">심리상담</option>
										   <option value="s9">주문제작</option>
										   <option value="s10">세무 법무 노무</option>
										   <option value="s11">이벤트</option>
										   <option value="s12">레슨</option>
									   </select>
								   </div>
								   <div class="input-group mt-2">
			                           <select class="form-select" id="specialReg">
										   <option value="d0" selected>웹</option>
										   <option value="d1">모바일 앱</option>
										   <option value="d2">프로그램</option>
										   <option value="d3">쇼핑몰 커머스</option>
										   <option value="d4">워드프레스</option>
										   <option value="d5">데이터</option>
										   <option value="d6">기획</option>
										   <option value="d7">게임 AR VR</option>
										   <option value="d8">데이터베이스</option>
									   </select>
								   </div>
							   </div>
							   <div class="col-8 offset-2">
		                       	   <label class="form-label" for="favoriteReg">보유기술(중복 선택 가능)</label>
		                       	   <div class="input-group">
			                           <select class="form-select" id="favoriteReg">
										   <option value="t0">디자인</option>
										   <option value="t1" selected>워드프레스, JavaScript, Java, Bootstrap, JSP, SQL, jQuery, HTML, CSS, Oven</option>
									   </select>
								   </div>
							   </div>
							   <div class="col-8 offset-2">
		                       	   <label class="form-label" for="phoneReg">경력사항</label>	
		                           <div class="input-group">
		                               <input type="text" class="form-control" id="phoneReg" value="백엔드 개발 3년">
		                           </div>
		                       </div>
		                       <div class="col-8 offset-2">
		                       	   <label class="form-label" for="phoneReg">학력, 자격증</label>	
		                           <div class="input-group">
		                               <input type="text" class="form-control" id="phoneReg" value="서울대학교 컴퓨터공학과 졸업">
		                           </div>
		                           <div class="input-group mt-2">
		                               <input type="text" class="form-control" id="phoneReg" value="정보처리기사">
		                           </div>
		                       </div>
		                       <div class="col-8 offset-2">
		                       	   <label class="form-label" for="phoneReg">희망급여(단위, 만원)</label>	
		                           <div class="input-group">
		                               <input type="text" class="form-control" id="phoneReg" value="4,500 만원(협의가능)">
		                           </div>
		                       </div>
		                       <div class="col-8 offset-2">
		                       	   <label class="form-label" for="workTimeReg">희망근로시간</label>
		                       	   <div class="input-group">
			                           <select class="form-select" id="workTimeReg">
										   <option value="wt0">전체</option>
										   <option value="wt1" selected>오전, 오후, 협의가능</option>
										   <option value="wt2">오후</option>
										   <option value="wt3">저녁</option>
										   <option value="wt4">야간</option>
										   <option value="wt5">협의가능</option>
									   </select>
								   </div>
		                       </div>
		                       <div class="col-8 offset-2">
		                       	   <label class="form-label" for="introReg">자기소개</label>
		                       	   <div class="input-group">
			                           <div class="col-sm-12">
										   <textarea class="form-control" rows="4" id="introReg">신규 웹사이트 제작 경력 3년자 입니다. 여러 종류의 웹사이트 제작 경험도 있고 포트폴리오도 있으니 보시고, 문의 연락주시면 상담 해드립니다. 감사합니다.</textarea>
									   </div>
								   </div>
							   </div>
							   <div class="col-sm-12 text-center">
							   	   <button type="button" class="btn btn-primary w-25" onclick="location.href='memberViewFormB.html'">수정완료</button>	
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
    <script src="../../template/woody/lib/wow/wow.min.js"></script>
    <script src="../../template/woody/lib/easing/easing.min.js"></script>
    <script src="../../template/woody/lib/waypoints/waypoints.min.js"></script>
    <script src="../../template/woody/lib/counterup/counterup.min.js"></script>
    <script src="../../template/woody/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="../../template/woody/lib/isotope/isotope.pkgd.min.js"></script>
    <script src="../../template/woody/lib/lightbox/js/lightbox.min.js"></script>

    <!-- Template Javascript -->
    <script src="../../template/woody/js/main.js"></script>
</body>

</html>