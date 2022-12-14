<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<jsp:useBean id="CodeServiceImpl" class="com.lifemanlab.shop.modules.code.CodeServiceImpl"/>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>혼자서 할 수 없던 것 | 인생만렙에서 만렙들과 해보세요.</title>
    <%@ include file="../../common/basicCss.jsp" %>
    
    <!-- page css -->
    <link href="/resources/user/css/agree.css" rel="stylesheet">
    
    <!-- datepicker -->
	<link rel="stylesheet" href="/resources/demos/style.css">
	
</head>
<body>
<form method="post" id="form" name="form" autocomplete="off" enctype="multipart/form-data">
    <input type="hidden" id="sessSeq" name="sessSeq" value="${sessSeq }">
    <!-- Navbar Start -->
    <nav class="container-fluid">
        <div class="row" id="">
	        <div class="col" style="text-align: center; margin: 3rem 0;">
	            <div class="navbar-nav ms-auto">
	                <a type="button" id="btnHome"><img alt="logo" src="/resources/images/logo.PNG" width="50px;" height="50px;"></a>
	            </div>
            </div>
        </div>
    </nav>
    <!-- Navbar End -->

    <!-- Contact Start -->
    <div class="container-fluid bg-light overflow-hidden" style="margin: 1rem 0;">
        <div class="container contract">
           <div class="col-6 contact-text py-2 offset-3">
               <div class="p-lg-3">
                   <div class="section-title text-center">
                       <h1 class="display-6 mb-4">만렙 회원가입</h1>
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
                       	   <label class="form-label" for="mmName">이름</label>	
                           <div class="input-group">
                               <input type="text" class="form-control" id="mmName" name="mmName" value="<c:out value="${dto.mmName }"/>" placeholder="이름을 입력해 주세요.">
                           </div>
                       </div>
                       <div class="col-8 offset-2">
                       	   <label class="form-label" for="mmBod">생년월일</label>	
                           <div class="input-group">
                               <input type="text" class="form-control" id="datepicker" name="mmBod" value="<c:out value="${dto.mmBod }" />" placeholder="8글자로 입력해 주세요.(ex. YYYYMMDD)">
                           </div>
                       </div>
                       <div class="col-8 offset-2">
                       	   <label class="form-label" for="mmpPhoneNumber">핸드폰</label>	
                           <div class="input-group">
                               <input type="text" class="form-control" id="mmpPhoneNumber" name="mmpPhoneNumber" value="<c:out value="${dto.mmpPhoneNumber }" />" placeholder="(-)를 제외한 11글자로 입력해 주세요." maxlength="11">
                           </div>
                       </div>
                       <div class="col-8 offset-2">
                       	   <label class="form-label" for="genderReg">성별</label>	
                           <br>
                           <div class="form-check form-check-inline">
                               <input type="radio" class="form-check-input" name="mmGender" id="mmGender0" value="5" <c:if test="${dto.mmGender eq 5 }">selected</c:if>>
                               <label class="form-check-label" for="genderRegM">남자</label>
                           </div>
                           <div class="form-check form-check-inline">
                               <input type="radio" class="form-check-input" name="mmGender" id="mmGender1" value="6" <c:if test="${dto.mmGender eq 6 }">selected</c:if>>
                               <label class="form-check-label" for="genderRegW">여자</label>
                           </div>
                           <div class="form-check form-check-inline">
                               <input type="radio" class="form-check-input" name="mmGender" id="mmGender2" value="7" <c:if test="${dto.mmGender eq 7 }">selected</c:if>>
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
								   <option>직업선택</option>
								   <c:forEach begin="12" end="18" items="${ccNameList }" var="ccNameList" varStatus="status">
								   <option value="${ccNameList.ccSeq }"><c:out value="${ccNameList.ccName }"/></option>
								   </c:forEach>
						       </select>
			   			  </div>
		  			   </div>
					   <div class="col-8 offset-2">
                       	  <label class="form-label" for="mmInterest">관심분야(중복 선택 가능)</label>
                       	  <div class="input-group">
	                           <select class="form-select" id="mmInterest" name="mmInterest">
								   <option>관심분야선택</option>
								   <c:forEach begin="29" end="38" items="${ccNameList }" var="ccNameList" varStatus="status">
								   <option value="${ccNameList.ccSeq }"><c:out value="${ccNameList.ccName }"/></option>
								   </c:forEach>
							   </select>
						   </div>
					   </div>
					   <div class="col-8 offset-2">
                       	  <label class="form-label">전문분야 및 상세분야</label>
                       	  <div class="input-group">
                       	  	   <select class="form-select" id="mmSpecial" name="mmSpecial">
								   <option>전문분야선택</option>
								   <c:forEach begin="39" end="49" items="${ccNameList }" var="ccNameList" varStatus="status">
								   <option value="${ccNameList.ccSeq }"><c:out value="${ccNameList.ccName }"/></option>
								   </c:forEach>
						       </select>
						   </div>
						   <div class="input-group">
					   	   	   <select class="form-select" id="mmDetail" name="mmDetail">
								   <option>상세분야선택</option>
								   <c:forEach begin="50" end="67" items="${ccNameList }" var="ccNameList" varStatus="status">
								   <option value="${ccNameList.ccSeq }"><c:out value="${ccNameList.ccName }"/></option>
								   </c:forEach>
						       </select>
						   </div>
					   </div>
					   <div class="col-8 offset-2">
                       	  <label class="form-label" for="mmTechnique">보유기술(중복 선택 가능)</label>
                       	  <div class="input-group">
                       	  	   <select class="form-select" id="mmTechnique" name="mmTechnique" mutiple>
								   <option>보유기술선택</option>
								   <c:forEach begin="75" end="81" items="${ccNameList }" var="ccNameList" varStatus="status">
								   <option value="${ccNameList.ccSeq }"><c:out value="${ccNameList.ccName }"/></option>
								   </c:forEach>
						       </select>
						   </div>
					   </div>
					   <div class="col-8 offset-2">
                       	  <label class="form-label" for="mmCareer">경력</label>
                       	  <div class="input-group">
                       	  	   <select class="form-select" id="mmCareer" name="mmCareer">
								   <option>경력선택</option>
								   <c:forEach begin="21" end="28" items="${ccNameList }" var="ccNameList" varStatus="status">
								   <option value="${ccNameList.ccSeq }"><c:out value="${ccNameList.ccName }"/></option>
								   </c:forEach>
						       </select>
						   </div>
					   </div>
					   <div class="col-8 offset-2">
                       	  <label class="form-label" for="mmWishPay">희망급여</label>
                       	  <div class="input-group">
                              <input type="text" class="form-control" id="mmWishPay" name="mmWishPay" value="<c:out value="${dto.mmWishPay }"/>" placeholder="희망급여를 입력해 주세요.">
						  </div>
					   </div>
					   <div class="col-8 offset-2">
                       	  <label class="form-label" for="mmWorkTime">희망근로시간</label>
                       	  <div class="input-group">
                       	  	   <select class="form-select" id="mmWorkTime" name="mmWorkTime">
								   <option>희망근로시간선택</option>
								   <c:forEach begin="68" end="72" items="${ccNameList }" var="ccNameList" varStatus="status">
								   <option value="${ccNameList.ccSeq }"><c:out value="${ccNameList.ccName }"/></option>
								   </c:forEach>
						       </select>
						   </div>
					   </div>
					   <div class="col-8 offset-2">
                       	  <label class="form-label" for="mmIntroduce">자기소개</label>
                       	  <div class="input-group">
                       	  	   <textarea class="form-control" id="mmIntroduce" name="mmIntroduce" style="height: 150px;"><c:out value="${dto.mmIntroduce }" /></textarea>
						   </div>
					   </div>
					  <!--  
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
						 -->
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
	<%@ include file="../../common/basicJs.jsp" %>
	
	<!-- kakaoMap API -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=17e90af3c57fa367793d1f57799dd4c9&libraries=services,clusterer,drawing"></script>
	
	<!-- page JavaScript & jQuery -->
	<script src="/resources/user/js/reg.js"></script>
	<script src="/resources/user/js/validationUser.js"></script>
	
	<script type="text/javascript">
	
		var goUrlHome = "/member/memberHome";
		var goUrlRegInst = "/member/memberRegBInst";
		
		var form = $("form[name=form]");
		
		$("#btnHome").on("click", function(){
	   		$(location).attr("href", goUrlHome);
		}); 
	 
		$("#btnReg").on("click", function(){
			/* if (validationInst() == false) return false; */
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
		
		//validation
	    validationInst = function() {
			if(!EmailCheck('mmEmail',2,0,"이메일 형식에 맞춰서 입력해 주세요.")) return false;
			if(!PwCheck('mmPw',2,0,"비밀번호는 8~16자로 입력해 주세요.")) return false;
			if(!NameCheck('mmName',2,0,"한글로만 입력해 주세요.")) return false;
			if(!NicknameCheck('mmNickname',2,0,"한글, 영어, 숫자로 입력해 주세요.")) return false;
			if(!BodCheck('mmBod',2,0,"알맞게 입력해 주세요.")) return false;
			if(!PhoneNumberCheck('mmpPhoneNumber',2,0,"숫자로만 입력해 주세요.")) return false;
		}
		
	    $jQ( function() {
	   		$jQ("#datepicker").datepicker({
	   			dateFormat:"yy-mm-dd",
	   			prevText: '이전 달',
	   			nextText: '다음 달',
	   			monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	   			monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	   			dayNames: ['일', '월', '화', '수', '목', '금', '토'],
	   			dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	   			showOtherMonths: true, //빈 공간에 현재월의 앞뒤월의 날짜를 표시
			  	showMonthAfterYear: true, // 월- 년 순서가아닌 년도 - 월 순서
			  	changeYear: true, //option값 년 선택 가능
			  	changeMonth: true, //option값 월 선택 가능
			  	yearRange:'c-99: c+99',
			  	minDate : new Date('1900-01-01'),
			  	maxDate : new Date ('today'),
	   			yearSuffix: '년'
   			});
	  	} );
		
	</script>
	
</body>

</html>