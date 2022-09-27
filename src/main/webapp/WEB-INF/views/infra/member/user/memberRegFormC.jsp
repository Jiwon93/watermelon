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
	<script src="https://kit.fontawesome.com/059fbc3cf8.js" crossorigin="anonymous"></script>

    <!-- Libraries Stylesheet -->
    <link href="/resources/template/woody/lib/animate/animate.min.css" rel="stylesheet">
    <link href="/resources/template/woody/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="/resources/template/woody/lib/lightbox/css/lightbox.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/resources/template/woody/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="/resources/template/woody/css/style.css" rel="stylesheet">
    
    <!--  -->
    <link href="/resources/css/user/agree.css" rel="stylesheet">
    <link href="/resources/css/user/datePicker.css" rel="stylesheet">
    
    <!-- datepicker -->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
    <script type="text/javascript">
	   	$( function() {
	        $( "#datePicker" ).datepicker({ dateFormat: 'yy-mm-dd' }).val();
	    } );
    </script>
</head>
<body>
<form method="get" id="form" name="form" autocomplete="off" enctype="multipart/form-data">
    <!-- Navbar Start -->
    <nav class="container-fluid">
        <div class="row" id="">
	        <div class="col" style="text-align: center; margin: 4rem 0;">
	            <div class="navbar-nav ms-auto">
	                <a type="button" id="btnIndex"><img alt="logo" src="/resources/images/logo.PNG" width="50px;" height="50px;"></a>
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
                       <div class="row g-3">
                           <div class="col-8 offset-2">
                           	   <label class="form-label" for="mmEmail">이메일</label>	
                               <div class="input-group">
                               	   <input type="hidden" id="mmEmailAllowedNy" name="mmEmailAllowedNy" value="0">
                                   <input type="text" class="form-control" id="mmEmail" name="mmEmail" value="<c:out value="${dto.mmEmail }"/>" placeholder="이메일을 입력해 주세요.">
                               	   <div class="invalid-feedback" id="mmEmailFeedback"></div>
                               </div>
                           </div>
                           <div class="col-8 offset-2">
                           	   <label class="form-label" for="mmPw">비밀번호</label>
                               <div class="input-group mb-2">
                                   <input type="password" class="form-control" id="mmPw" name="mmPw" value="<c:out value="${dto.mmPw }" />" placeholder="비밀번호를 입력해 주세요.">
                               </div>
                               <div class="input-group">
                                   <input type="password" class="form-control" id="mmPwChk" name="mmPwChk" placeholder="동일하게 한번 더 입력해 주세요.">
                               	   <div class="invalid-feedback" id="mmPwChkFeedback"></div>
                               </div>
                           </div>
                           <div class="col-8 offset-2">
                           	   <label class="form-label" for="mmBod">생년월일</label>	
                               <div class="input-group">
                                   <input type="text" class="form-control" id="datePicker" name="mmBod" value="<c:out value="${dto.mmBod }" />" placeholder="8글자로 입력해 주세요.(ex. YYYYMMDD)">
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
                                   <input type="radio" class="form-check-input" name="mmGender" id="mmGender0" value="0" <c:if test="${dto.mmGender eq 0 }">selected</c:if>>
                                   <label class="form-check-label" for="genderRegM">남자</label>
                               </div>
                               <div class="form-check form-check-inline">
                                   <input type="radio" class="form-check-input" name="mmGender" id="mmGender1" value="1" <c:if test="${dto.mmGender eq 1 }">selected</c:if>>
                                   <label class="form-check-label" for="genderRegW">여자</label>
                               </div>
                               <div class="form-check form-check-inline">
                                   <input type="radio" class="form-check-input" name="mmGender" id="mmGender2" value="2" <c:if test="${dto.mmGender eq 2 }">selected</c:if>>
                                   <label class="form-check-label" for="genderRegW">기타</label>
                               </div>
                           </div>
                           <div class="col-8 offset-2">
                           	   <label class="form-label" for="mmrfPostcode">주소</label>
                           	   <div class="input-group mb-2">
                           	   	   <button class="btn btn-primary" type="button" style="height: 38px;" onclick="mmrfPostcodeBtn()">주소검색</button>
                                   <input type="text" class="form-control" placeholder="우편번호" id="mmrfPostcode" name="mmZip" value="<c:out value="${dto.mmZip }" />">
                               </div>
                               <div class="input-group mb-2">
                                   <input type="text" class="form-control" placeholder="주소를 입력해 주세요." id="mmrfRoadAddress" name="mmAddress1" value="<c:out value="${dtp.mmAddress1 }" />" readonly>
                               </div>
                               <span id="guide" style="color:#999;display:none"></span>
                               <div class="input-group">
                                   <input type="text" class="form-control" placeholder="상세주소를 입력해 주세요." id="mmrfDetailAddress" name="mmAddress2" value="<c:out value="${dtp.mmAddress2 }" />">
                               </div>
                           </div>
                           <div class="col-8 offset-2">
                           	   <label class="form-label" for="mmJob">직업</label>
                           	   <div class="input-group">
		                           <select class="form-select" id="mmJob" name="mmJob">
									   <option value="" <c:if test="${empty dto.mmJob }">selected</c:if>>직업선택</option>
									   <option value="1" <c:if test="${dto.mmJob eq 1 }">selected</c:if>>직장인</option>
									   <option value="2" <c:if test="${dto.mmJob eq 2 }">selected</c:if>>프리랜서</option>
									   <option value="3" <c:if test="${dto.mmJob eq 3 }">selected</c:if>>소상공인</option>
									   <option value="4" <c:if test="${dto.mmJob eq 4 }">selected</c:if>>스타트업 창업자</option>
									   <option value="5" <c:if test="${dto.mmJob eq 5 }">selected</c:if>>대학(원)생</option>
									   <option value="6" <c:if test="${dto.mmJob eq 6 }">selected</c:if>>취업준비생</option>
								   </select>
							   </div>
						   </div>
						   <div class="col-8 offset-2">
                           	   <label class="form-label" for="mmInterest">관심분야(중복 선택 가능)</label>
                           	   <div class="input-group">
		                           <select class="form-select" id="mmInterest" name="mmInterest" multiple>
									   <option value="" <c:if test="${empty dto.mmInterest }">selected</c:if>>관심분야선택</option>
									   <option value="1" <c:if test="${dto.mmInterest eq 1 }">selected</c:if>>디자인</option>
									   <option value="2" <c:if test="${dto.mmInterest eq 2 }">selected</c:if>>IT 프로그래밍</option>
									   <option value="3" <c:if test="${dto.mmInterest eq 3 }">selected</c:if>>영상 사진 음향</option>
									   <option value="4" <c:if test="${dto.mmInterest eq 4 }">selected</c:if>>마케팅</option>
									   <option value="5" <c:if test="${dto.mmInterest eq 5 }">selected</c:if>>번역 통역</option>
									   <option value="6" <c:if test="${dto.mmInterest eq 6 }">selected</c:if>>문서 글쓰기</option>
									   <option value="7" <c:if test="${dto.mmInterest eq 7 }">selected</c:if>>건강 미용</option>
									   <option value="8" <c:if test="${dto.mmInterest eq 8 }">selected</c:if>>비즈니스 컨설팅</option>
									   <option value="9" <c:if test="${dto.mmInterest eq 9 }">selected</c:if>>심리상담</option>
									   <option value="10" <c:if test="${dto.mmInterest eq 10 }">selected</c:if>>주문제작</option>
									   <option value="11" <c:if test="${dto.mmInterest eq 11 }">selected</c:if>>세무 법무 노무</option>
									   <option value="12" <c:if test="${dto.mmInterest eq 12 }">selected</c:if>>이벤트</option>
									   <option value="13" <c:if test="${dto.mmInterest eq 13 }">selected</c:if>>레슨</option>
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
                               <button class="btn btn-primary w-100" type="button" id="btnReg">가입완료!</button>
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
	<!-- jQuery -->
    
    
    <!-- JavaScript Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/resources/template/woody/lib/wow/wow.min.js"></script>
    <script src="/resources/template/woody/lib/easing/easing.min.js"></script>
    <script src="/resources/template/woody/lib/waypoints/waypoints.min.js"></script>
    <script src="/resources/template/woody/lib/counterup/counterup.min.js"></script>
    <script src="/resources/template/woody/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="/resources/template/woody/js/main.js"></script>
    
	<!-- kakaoMap API -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=17e90af3c57fa367793d1f57799dd4c9&libraries=services,clusterer,drawing"></script>
	
	<!-- JavaScript & jQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script src="/resources/js/user/reg.js"></script>
	<script type="text/javascript">
	
		var goUrlIndex = "/member/index";
		var goUrlRegInst = "/member/memberRegCInst";
		
		var form = $("form[name=form]");
		
		$("#btnIndex").on("click", function(){
	   		$(location).attr("href", goUrlIndex);
		}); 
	 
		$("#btnReg").on("click", function(){
	   		form.attr("action", goUrlRegInst).submit();
		}); 
		
		//카카오 지도 API
		//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	    function mmrfPostcodeBtn() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var roadAddr = data.roadAddress; // 도로명 주소 변수
	                var extraRoadAddr = ''; // 참고 항목 변수
	
	                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraRoadAddr += data.bname;
	                }
	                // 건물명이 있고, 공동주택일 경우 추가한다.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                if(extraRoadAddr !== ''){
	                    extraRoadAddr = ' (' + extraRoadAddr + ')';
	                }
	
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('mmrfPostcode').value = data.zonecode;
	                document.getElementById("mmrfRoadAddress").value = roadAddr;
	                
	                var guideTextBox = document.getElementById("guide");
	                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
	                if(data.autoRoadAddress) {
	                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
	                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
	                    guideTextBox.style.display = 'block';
	
	                } else {
	                    guideTextBox.innerHTML = '';
	                    guideTextBox.style.display = 'none';
	                }
	            }
	        }).open();
	
	    }
		
	    
		$("#btnAddressClear").on("click", function(){
			$("#mmrfPostcode").val('');
			$("#mmrfRoadAddress").val('');
			/* $("#mmJibunAddress").val(''); */
			$("#mmrfDetailAddress").val('');
			/* $("#mmExtraAddress").val(''); */
		});
	</script>
	
</body>

</html>