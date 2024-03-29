<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!doctype html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- Favicon -->
    <link href="/resources/images/logo.PNG" rel="icon">
	<title>memberView</title>

	<link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/sidebars/">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	
	<!-- Fontawesome Stylesheet -->
    <script src="https://kit.fontawesome.com/059fbc3cf8.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<style type="text/css">
		label {
			font-size: large;
		}
		
		table {
			margin-left: auto;
			margin-right: auto;
		}
		
		th, td {
			border: 1px solid lightgray;
			height: 35px;
		}

		.listCheck {
			text-align: center;
			justify-content: center;
		}
	</style>
	<link href="/resources/xdmin/css/styles.css" rel="stylesheet">
	<link href="/resources/xdmin/css/list.css" rel="stylesheet">
</head>
<body>
	<form id="form" name="form" method="post" onkeydown="return captureReturnKey(event)" autocomplete="off" enctype="multipart/form-data">
	
	<!-- *Vo.jsp s -->
	<%@include file="../common/memberVo.jsp"%>		<!-- #-> -->
	<!-- *Vo.jsp e -->	
	
		<!-- *header.jsp s -->
		<%@include file="../common/header.jsp"%>		<!-- #-> -->
		<!-- *header.jsp e -->
		
		<div class="container-fluid">
			<div class="row mt-4">
			
				<!-- *sidebar.jsp s -->
				<%@include file="../common/sidebar.jsp"%>		<!-- #-> -->
				<!-- *sidebar.jsp e -->
				
				<div class="col-10">
					<div class="row">
						<h4>회원 관리</h4>
						<div class="container-fluid">
							<div class="row m-4">
								<div class="col-6">
									<label class="form-label" for="mmSeq">회원번호</label>
									<input type="text" class="form-control" id="mmSeq" value="<c:out value="${item.mmSeq }" />">
								</div>
								<div class="col-6">
									<label class="form-label" for="mmRank">회원등급</label>
									<input type="text" class="form-control" id="mmRank" name="mmRank" value="<c:out value="${item.mmRank }" />">
								</div>
							</div>
							<div class="row m-4">
								<div class="col-6">
									<label class="form-label" for="mmEmail">이메일</label>
									<input type="text" class="form-control" id="mmEmail" name="mmEmail" value="<c:out value="${item.mmEmail }" />">
								</div>
								<div class="col-6">
									<label class="form-label" for="mmPw">비밀번호</label>
									<input type="text" class="form-control" id="mmPw" name="mmPw" value="<c:out value="${item.mmPw }" />">
								</div>
							</div>
							<div class="row m-4">
								<div class="col-6">
									<label class="form-label" for="mmName">이름</label>
									<input type="text" class="form-control" id="mmName" name="mmName" value="<c:out value="${item.mmName }" />">
								</div>
								<div class="col-6">
									<label class="form-label" for="mmNickname">닉네임</label>
									<input type="text" class="form-control" id="mmNickname" name="mmNickname" value="<c:out value="${item.mmNickname }" />">
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<label class="form-label" for="mmGender">성별</label>
									<input type="text" class="form-control" id="mmGender" name="mmGender" value="<c:out value="${item.mmGender }" />">
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="mmBod">생일</label>
									<input type="text" class="form-control" id="mmBod" name="mmBod" value="<c:out value="${item.mmBod }" />">
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<label class="form-label" for="mmEmail">Email</label>
									<input type="hidden" id="mmEmailAllowedNy" name="mmEmailAllowedNy" value="0">
									<input type="text" class="form-control" id="mmEmail" name="mmEmail" <c:out value="${dto.mmEmail }"/> placeholder="이메일을 입력해 주세요.">
									<div class="invalid-feedback" id="mmEmailFeedback"></div>
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="ccgNameEng" style="display: block;">이메일 정보 마케팅 사용 동의</label>
									<input type="checkbox" class="form-check-input">
									<label class="form-check-label" for="">동의합니다.</label>
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<div class="row">
										<div class="col mx-auto">
											<label class="form-label" for="ccgUseNy">통신사</label>
											<input type="text" class="form-control">
										</div>
										<div class="col mx-auto">
											<label class="form-label" for="ccgUseNy">모바일</label>
											<input type="text" class="form-control">
										</div>
									</div>
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="ccgOrder" style="display: block;">핸드폰 정보 마케팅 사용 동의</label>
									<input type="checkbox" class="form-check-input">
									<label class="form-check-label" for="">동의합니다.</label>
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<label class="form-label" for="ccgOrder">전화번호</label>
									<input type="text" class="form-control">
								</div>
							</div>
							<div class="row m-4">
								<div class="col-6">
									<label class="form-label" for="mmPostcode">주소</label>
									<div class="row mb-2">
										<div class="col-sm-5">
											<div class="input-group">
												<input class="form-control" type="text" id="mmPostcode" name="mmPostcode" placeholder="우편번호" readonly>	
												<button class="btn btn-light btn-outline-secondary" type="button" onclick="mmExecDaumPostcode()"><i class="fa-solid fa-magnifying-glass"></i></button>
												<button class="btn btn-light btn-outline-secondary" type="button" id="btnAddressClear"><i class="fa-solid fa-x"></i></button>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col mx-auto">
											<input class="form-control" type="text" id="mmRoadAddress" placeholder="도로명주소" readonly>
										</div>
									</div>
									<div class="row mt-2">
										<div class="col mx-auto">
											<input class="form-control" type="text" id="mmJibunAddress" placeholder="지번주소" readonly>
										</div>
									</div>
									<span id="guide" style="color:#999;display:none"></span>
									<div class="row mt-2">
										<div class="col mx-auto">
											<input class="form-control" type="text" id="mmDetailAddress" placeholder="상세주소">
										</div>
									</div>
									<div class="row mt-2">
										<div class="col mx-auto">
											<input class="form-control" type="text" id="mmExtraAddress" placeholder="참고항목" readonly>
										</div>
									</div>
									<div class="row mt-2">
										<div class="col mx-auto">
											<input type="hidden" name="place">
											<input class="form-control" type="text" id="mmLat" name="lat" placeholder="위도" readonly>
										</div>
										<div class="col mx-auto">
											<input class="form-control" type="text" id="mmLng" name="lng" placeholder="경도" readonly>
										</div>
									</div>
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="cgfExplain">설명</label>
									<textarea  class="form-control" id="cgfExplain"></textarea>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col px-5">
								<button class="btn btn-secondary" type="button" id="btnList">
									<i class="fa-solid fa-bars"></i>
								</button>
							</div>
							<div class="col px-4" style="text-align: right;">
								<button class="btn btn-danger" type="button" id="btnUelete">
									<i class="fa-duotone fa-x"></i>
								</button>
								<button class="btn btn-danger" type="button" id="btnDelete">
									<i class="fa-regular fa-trash-can"></i>
								</button>
								<button class="btn btn-success" type="button" id="btnSave">
									<i class="fa-regular fa-file-excel"></i>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Footer Start -->
	    <div class="container-fluid bg-dark text-light footer mt-5 pt-5">
	    	<div class="container">
	            <div class="copyright">
	                <div class="row">
	                    <div class="col text-center">
	                        Copyright &copy; 2022&nbsp;<a class="border-bottom" href="#">ISML</a>&nbsp;lnc, All Right Reserved.
	                    </div>
	                </div>
	                <div class="row">
	                    <div class="col text-center">
	                        Designed By <a class="border-bottom" href="#">HTML Codex</a>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	    <!-- Footer End -->
	</form>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=17e90af3c57fa367793d1f57799dd4c9&libraries=services,clusterer,drawing"></script>
	<script src="/resources/xdmin/js/list.js"></script>
	<script src="/resources/xdmin/js/sidebar.js"></script>
	<script src="/resources/xdmin/js/reg.js"></script>
	
	<script type="text/javascript">
	
		var goUrlList = "/member/memberList";
		var goUrlInst = "/member/memberInst";
		var goUrlUpdt = "/member/memberUpdt";
		var goUrlUele = "/member/memberUele";
		var goUrlDele = "/member/memberDele";
	
		var form = $("form[name=form]");
		
		$("#btnSave").on("click", function(){
	   		form.attr("action", goUrlInst).submit();
		}); 
	
		$("#btnList").on("click", function(){
			form.attr("action", goUrlList).submit();
		});
		
		$("#btnUelete").on("click", function(){
			$("input:hidden[name=mmDelNy]").val(1);
			$(".modal-title").text("확 인");
			$(".modal-body").text("해당 데이터를 삭제하시겠습니까 ?");
			$("#btnModalUelete").show();
			$("#btnModalDelete").hide();
			$("#modalConfirm").modal("show");
		});
		
	
		$("#btnDelete").on("click", function(){
			$("input:hidden[name=mmDelNy]").val(0);
			$(".modal-title").text("확 인");
			$(".modal-body").text("해당 데이터를 삭제하시겠습니까 ?");
			$("#btnModalUelete").hide();
			$("#btnModalDelete").show();
			$("#modalConfirm").modal("show");
		});
		
		
		$("#btnModalUelete").on("click", function(){
			$("#modalConfirm").modal("hide");
			formVo.attr("action", goUrlUele).submit();
		});
		
		
		$("#btnModalDelete").on("click", function(){
			$("#modalConfirm").modal("hide");
			formVo.attr("action", goUrlDele).submit();
		});
		//카카오 지도 API
		//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	    function mmExecDaumPostcode() {
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
	                document.getElementById('mmPostcode').value = data.zonecode;
	                document.getElementById("mmRoadAddress").value = roadAddr;
	                document.getElementById("mmJibunAddress").value = data.jibunAddress;
	                
	                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
	                if(roadAddr !== ''){
	                    document.getElementById("mmExtraAddress").value = extraRoadAddr;
	                } else {
	                    document.getElementById("mmExtraAddress").value = '';
	                }
	
	                var guideTextBox = document.getElementById("guide");
	                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
	                if(data.autoRoadAddress) {
	                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
	                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
	                    guideTextBox.style.display = 'block';
	
	                } else if(data.autoJibunAddress) {
	                    var expJibunAddr = data.autoJibunAddress;
	                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
	                    guideTextBox.style.display = 'block';
	                } else {
	                    guideTextBox.innerHTML = '';
	                    guideTextBox.style.display = 'none';
	                }
	                
	                /* lat and lng from address s */
	 				
	                var geocoder = new daum.maps.services.Geocoder();
	    			
	    			// 주소로 좌표를 검색
	    			geocoder.addressSearch(roadAddr, function(result, status) {
	    			 
	    				// 정상적으로 검색이 완료됐으면,
	    				if (status == daum.maps.services.Status.OK) {
	    					
	    					document.getElementById("mmLat").value=result[0].y;
	    					document.getElementById("mmLng").value=result[0].x;
	    				}
	    			});
	    			/* lat and lng from address e */
	                
	            }
	        }).open();
 
	    }
		
	    
		$("#btnAddressClear").on("click", function(){
			$("#mmPostcode").val('');
			$("#mmRoadAddress").val('');
			$("#mmJibunAddress").val('');
			$("#mmDetailAddress").val('');
			$("#mmExtraAddress").val('');
			$("#mmLat").val('');
			$("#mmLng").val('');
		});
		
	</script>
	
	<!-- <script type="text/javascript">
		
		
		function mmExecDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
			// 주소-좌표 변환 객체를 생성
			var geocoder = new daum.maps.services.Geocoder();
			
			// 주소로 좌표를 검색
			geocoder.addressSearch(roadAddr, function(result, status) {
			 
				// 정상적으로 검색이 완료됐으면,
				if (status == daum.maps.services.Status.OK) {
					
					document.getElementById("mmLat").value=result[0].y;
					document.getElementById("mmLng").value=result[0].x;
				}
			});
			/* lat and lng from address e */
	            }
	</script> -->
</body>
</html>


