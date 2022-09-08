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
                       <h1 class="display-6 mb-4">회원가입</h1>
                   </div>
                   <form action="memberInst" method="post">
                       <div class="row g-3">
                           <div class="col-8 offset-2">
                           	   <label class="form-label" for="mmEmail">이메일</label>	
                               <div class="input-group">
                                   <input type="email" class="form-control" id="mmEmail" name="mmEmail" <c:out value="${dto.mmEmail }"/> placeholder="이메일을 입력해 주세요.">
                               </div>
                           </div>
                           <div class="col-8 offset-2">
                           	   <label class="form-label" for="mmPw">비밀번호</label>
                               <div class="input-group mb-2">
                                   <input type="password" class="form-control" id="mmPw" name="mmPw" <c:out value="${dto.mmPw }"/> placeholder="비밀번호를 입력해 주세요.">
                               </div>
                               <div class="input-group">
                                   <input type="password" class="form-control" id="passwordReg" placeholder="동일하게 한번 더 입력해 주세요.">
                               </div>
                           </div>
                           <div class="col-8 offset-2">
                           	   <label class="form-label" for="mmBod">생년월일</label>	
                               <div class="input-group">
                                   <input type="text" class="form-control" id="mmBod" name="mmBod" <c:out value="${dto.mmBod }"/> placeholder="8글자로 입력해 주세요.(ex. YYYYMMDD)" maxlength="8">
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
							   <style data-emotion="css z5u2sd">
							   	   .css-z5u2sd {
							   	   	   padding:16px;
							   	   	   border:1px solid #e4e5ed;
							   	   	   border-radius:4px;
							   	   	   margin-bottom:20px;
							   	   	   background-color: white;
						   	   	   }
						   	   </style>
						   	   <div name="agreements" class="css-z5u2sd ebb1x3g0">
						   	   	   <style data-emotion="css 19dxxop">
						   	   	   	   .css-19dxxop {
						   	   	   	   	   font-size:15px;
						   	   	   	   	   padding-bottom:16px;
						   	   	   	   	   border-bottom:1px solid #e4e5ed;
						   	   	   	   	   cursor:pointer;
					   	   	   	   	   }
					   	   	   	   </style>
					   	   	   	   <div class="css-19dxxop ebb1x3g1">
					   	   	   	   	   <style data-emotion="css 1om2ydj">
					   	   	   	   	   	   .css-1om2ydj {
					   	   	   	   	   	   	   margin-right:8px;
					   	   	   	   	   	   	   display:inline-block;
					   	   	   	   	   	   	   background-color:#e4e5ed;
					   	   	   	   	   	   	   border-radius:50%;
					   	   	   	   	   	   	   padding:2px;
					   	   	   	   	   	   	   line-height:1.15;
				   	   	   	   	   	   	   }
				   	   	   	   	   	   </style>
				   	   	   	   	   	   <div class="css-1om2ydj ebb1x3g4">
				   	   	   	   	   	   	   <style data-emotion="css 1qcqzrg">
				   	   	   	   	   	   	   	   .css-1qcqzrg {
				   	   	   	   	   	   	   	   	   display:inline-block;
				   	   	   	   	   	   	   	   	   color:inherit;
				   	   	   	   	   	   	   	   	   font-style:normal;
				   	   	   	   	   	   	   	   	   line-height:0;
				   	   	   	   	   	   	   	   	   text-align:center;
				   	   	   	   	   	   	   	   	   text-transform:none;
				   	   	   	   	   	   	   	   	   vertical-align:-0.125em;
				   	   	   	   	   	   	   	   	   text-rendering:optimizeLegibility;
				   	   	   	   	   	   	   	   	   -webkit-font-smoothing:antialiased;
				   	   	   	   	   	   	   	   	   -moz-osx-font-smoothing:grayscale;
				   	   	   	   	   	   	   	   	   color:#ffffff;
			   	   	   	   	   	   	   	   	   }
			   	   	   	   	   	   	   	   </style>
			   	   	   	   	   	   	   	   <span role="img" color="#ffffff" rotate="0" class="css-1qcqzrg e181xm9y1">
			   	   	   	   	   	   	   	   	   <style data-emotion="css 7kp13n">
			   	   	   	   	   	   	   	   	   	   .css-7kp13n {
			   	   	   	   	   	   	   	   	   	   	   display:inline-block;
		   	   	   	   	   	   	   	   	   	   	   }
		   	   	   	   	   	   	   	   	   	   </style>
		   	   	   	   	   	   	   	   	   	   <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
		   	   	   	   	   	   	   	   	   	   	   <path d="M0 0h24v24H0V0z" fill="none"></path>
		   	   	   	   	   	   	   	   	   	   	   <path d="M7.13322158,10.821143 C6.77457526,10.3822153 6.17602724,10.3624856 5.79632715,10.7770754 C5.41662707,11.1916652 5.39955962,11.8835778 5.75820594,12.3225054 L9.30027691,16.6574524 C9.66714471,17.1064419 10.2826916,17.1152317 10.6590418,16.6768551 L18.2255456,7.86331213 C18.5934618,7.43475954 18.5911847,6.74257073 18.2204597,6.31726515 C17.8497347,5.89195957 17.2509477,5.89459179 16.8830316,6.32314438 L10.004578,14.3352391 L7.13322158,10.821143 Z"></path>
	   	   	   	   	   	   	   	   	   	   	   </svg>
	   	   	   	   	   	   	   	   	   	   </span>
	   	   	   	   	   	   	   	   	   </div>모두 동의합니다.
	   	   	   	   	   	   	   	   </div>
	   	   	   	   	   	   	   	   <style data-emotion="css 1yuhvjn">
	   	   	   	   	   	   	   	   	   .css-1yuhvjn {
	   	   	   	   	   	   	   	   	   	   margin-top:16px;
	   	   	   	   	   	   	   	   	   }
	   	   	   	   	   	   	   	   </style>
	   	   	   	   	   	   	   	   <div class="css-1yuhvjn ebb1x3g2">
	   	   	   	   	   	   	   	   	   <style data-emotion="css zh2w40">
	  	   	   	   	   	   	   	   	   	   .css-zh2w40 {
	  	   	   	   	   	   	   	   	   	   	   font-size:12px;
	  	   	   	   	   	   	   	   	   	   	   color:#727585;
	  	   	   	   	   	   	   	   	   	   	   margin-bottom:4px;
	  	   	   	   	   	   	   	   	   	   	   cursor:pointer;
	   	   	   	   	   	   	   	   	   	   }
	   	   	   	   	   	   	   	   	   </style>
	   	   	   	   	   	   	   	   	   <div class="css-zh2w40 ebb1x3g3">
	   	   	   	   	   	   	   	   	   	   <div class="css-1om2ydj ebb1x3g4">
	   	   	   	   	   	   	   	   	   	   	   <span role="img" color="#ffffff" rotate="0" class="css-1qcqzrg e181xm9y1">
	   	   	   	   	   	   	   	   	   	   	   	   <svg width="12" height="12" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
	   	   	   	   	   	   	   	   	   	   	   	   	   <path d="M0 0h24v24H0V0z" fill="none"></path>
	   	   	   	   	   	   	   	   	   	   	   	   	   <path d="M7.13322158,10.821143 C6.77457526,10.3822153 6.17602724,10.3624856 5.79632715,10.7770754 C5.41662707,11.1916652 5.39955962,11.8835778 5.75820594,12.3225054 L9.30027691,16.6574524 C9.66714471,17.1064419 10.2826916,17.1152317 10.6590418,16.6768551 L18.2255456,7.86331213 C18.5934618,7.43475954 18.5911847,6.74257073 18.2204597,6.31726515 C17.8497347,5.89195957 17.2509477,5.89459179 16.8830316,6.32314438 L10.004578,14.3352391 L7.13322158,10.821143 Z"></path>
	   	   	   	   	   	   	   	   	   	   	   	   </svg>
	   	   	   	   	   	   	   	   	   	   	   </span>
	   	   	   	   	   	   	   	   	   	   </div>만 14세 이상입니다.
	   	   	   	   	   	   	   	   	   	   <!-- --> 
	   	   	   	   	   	   	   	   	   	   <style data-emotion="css 1b63ro4">
	   	   	   	   	   	   	   	   	   	   	   .css-1b63ro4 {
	   	   	   	   	   	   	   	   	   	   	   	   color:#ff7262;
	   	   	   	   	   	   	   	   	   	   	   }
	   	   	   	   	   	   	   	   	   	   </style>
	   	   	   	   	   	   	   	   	   	   <span class="css-1b63ro4 ebb1x3g5">(필수)</span>
	   	   	   	   	   	   	   	   	   </div>
	   	   	   	   	   	   	   	   	   <div class="css-zh2w40 ebb1x3g3">
	   	   	   	   	   	   	   	   	   	   <div class="css-1om2ydj ebb1x3g4">
	   	   	   	   	   	   	   	   	   	   	   <span role="img" color="#ffffff" rotate="0" class="css-1qcqzrg e181xm9y1">
	   	   	   	   	   	   	   	   	   	   	   	   <svg width="12" height="12" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
	   	   	   	   	   	   	   	   	   	   	   	   	   <path d="M0 0h24v24H0V0z" fill="none"></path>
	   	   	   	   	   	   	   	   	   	   	   	   	   <path d="M7.13322158,10.821143 C6.77457526,10.3822153 6.17602724,10.3624856 5.79632715,10.7770754 C5.41662707,11.1916652 5.39955962,11.8835778 5.75820594,12.3225054 L9.30027691,16.6574524 C9.66714471,17.1064419 10.2826916,17.1152317 10.6590418,16.6768551 L18.2255456,7.86331213 C18.5934618,7.43475954 18.5911847,6.74257073 18.2204597,6.31726515 C17.8497347,5.89195957 17.2509477,5.89459179 16.8830316,6.32314438 L10.004578,14.3352391 L7.13322158,10.821143 Z"></path>
	   	   	   	   	   	   	   	   	   	   	   	   </svg>
	   	   	   	   	   	   	   	   	   	   	   </span>
	   	   	   	   	   	   	   	   	   	   </div>
	   	   	   	   	   	   	   	   	   	   <style data-emotion="css 1ebg73i">
	   	   	   	   	   	   	   	   	   	   	   .css-1ebg73i {
	   	   	   	   	   	   	   	   	   	   	   	   color:#727585;
	   	   	   	   	   	   	   	   	   	   	   }
	   	   	   	   	   	   	   	   	   	   </style>
	   	   	   	   	   	   	   	   	   	   <a target="_blank" href="https://support.kmong.com/hc/ko/articles/900005915466" class="css-1ebg73i e1jfpg0i0">서비스 이용약관</a>에 동의합니다.<!-- --> 
	   	   	   	   	   	   	   	   	   	   <span class="css-1b63ro4 ebb1x3g5">(필수)</span>
	   	   	   	   	   	   	   	   	   </div>
	   	   	   	   	   	   	   	   	   <div class="css-zh2w40 ebb1x3g3">
	   	   	   	   	   	   	   	   	   	   <div class="css-1om2ydj ebb1x3g4">
	   	   	   	   	   	   	   	   	   	   	   <span role="img" color="#ffffff" rotate="0" class="css-1qcqzrg e181xm9y1">
	   	   	   	   	   	   	   	   	   	   	   	   <svg width="12" height="12" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
	   	   	   	   	   	   	   	   	   	   	   	   	   <path d="M0 0h24v24H0V0z" fill="none"></path>
	   	   	   	   	   	   	   	   	   	   	   	   	   <path d="M7.13322158,10.821143 C6.77457526,10.3822153 6.17602724,10.3624856 5.79632715,10.7770754 C5.41662707,11.1916652 5.39955962,11.8835778 5.75820594,12.3225054 L9.30027691,16.6574524 C9.66714471,17.1064419 10.2826916,17.1152317 10.6590418,16.6768551 L18.2255456,7.86331213 C18.5934618,7.43475954 18.5911847,6.74257073 18.2204597,6.31726515 C17.8497347,5.89195957 17.2509477,5.89459179 16.8830316,6.32314438 L10.004578,14.3352391 L7.13322158,10.821143 Z"></path>
	   	   	   	   	   	   	   	   	   	   	   	   </svg>
	   	   	   	   	   	   	   	   	   	   	   </span>
	   	   	   	   	   	   	   	   	   	   </div>
	   	   	   	   	   	   	   	   	   	   <a target="_blank" href="https://support.kmong.com/hc/ko/articles/4408694164377" class="css-1ebg73i e1jfpg0i0">개인정보 수집/이용</a>에 동의합니다.<!-- --> 
	   	   	   	   	   	   	   	   	   	   <span class="css-1b63ro4 ebb1x3g5">(필수)</span>
	   	   	   	   	   	   	   	   	   </div>
	   	   	   	   	   	   	   	   	   <div class="css-zh2w40 ebb1x3g3">
	   	   	   	   	   	   	   	   	   	   <div class="css-1om2ydj ebb1x3g4">
	   	   	   	   	   	   	   	   	   	   	   <span role="img" color="#ffffff" rotate="0" class="css-1qcqzrg e181xm9y1">
	   	   	   	   	   	   	   	   	   	   	   	   <svg width="12" height="12" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
	   	   	   	   	   	   	   	   	   	   	   	   	   <path d="M0 0h24v24H0V0z" fill="none"></path>
	   	   	   	   	   	   	   	   	   	   	   	   	   <path d="M7.13322158,10.821143 C6.77457526,10.3822153 6.17602724,10.3624856 5.79632715,10.7770754 C5.41662707,11.1916652 5.39955962,11.8835778 5.75820594,12.3225054 L9.30027691,16.6574524 C9.66714471,17.1064419 10.2826916,17.1152317 10.6590418,16.6768551 L18.2255456,7.86331213 C18.5934618,7.43475954 18.5911847,6.74257073 18.2204597,6.31726515 C17.8497347,5.89195957 17.2509477,5.89459179 16.8830316,6.32314438 L10.004578,14.3352391 L7.13322158,10.821143 Z"></path>
	   	   	   	   	   	   	   	   	   	   	   	   </svg>
	   	   	   	   	   	   	   	   	   	   	   </span>
	   	   	   	   	   	   	   	   	   	   </div>이벤트 할인 혜택 알림 수신에 동의합니다. (선택)
	  	   	   	   	   	   	   	   	   </div>
	  	   	   	   	   	   	   	   	   <div class="css-zh2w40 ebb1x3g3">
	  	   	   	   	   	   	   	   	   	   <div class="css-1om2ydj ebb1x3g4">
	  	   	   	   	   	   	   	   	   	   	   <span role="img" color="#ffffff" rotate="0" class="css-1qcqzrg e181xm9y1">
	  	   	   	   	   	   	   	   	   	   	   	   <svg width="12" height="12" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
	  	   	   	   	   	   	   	   	   	   	   	   	   <path d="M0 0h24v24H0V0z" fill="none"></path>
	  	   	   	   	   	   	   	   	   	   	   	   	   <path d="M7.13322158,10.821143 C6.77457526,10.3822153 6.17602724,10.3624856 5.79632715,10.7770754 C5.41662707,11.1916652 5.39955962,11.8835778 5.75820594,12.3225054 L9.30027691,16.6574524 C9.66714471,17.1064419 10.2826916,17.1152317 10.6590418,16.6768551 L18.2255456,7.86331213 C18.5934618,7.43475954 18.5911847,6.74257073 18.2204597,6.31726515 C17.8497347,5.89195957 17.2509477,5.89459179 16.8830316,6.32314438 L10.004578,14.3352391 L7.13322158,10.821143 Z"></path>
	   	   	   	   	   	   	   	   	   	   	   	   </svg>
	   	   	   	   	   	   	   	   	   	   	   </span>
	  	   	   	   	   	   	   	   	   	   </div>장기 미접속 시 계정 활성 상태 유지합니다. (선택)
	  	   	   	   	   	   	   	   	   </div>
	   	   	   	   	   	   	   	   </div>
	   	   	   	   	   	   	   </div>
   	   	   	   	   	   	   </div>
                           <div class="col-8 offset-2">
                               <button class="btn btn-primary w-100" type="button" onclick="location.href='loginForm.html'">가입완료!</button>
                           </div>
                       </div>
                   </form>
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