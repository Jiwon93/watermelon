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
<title>memberForm</title>

	<link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/sidebars/">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	
	<!-- Fontawesome Stylesheet -->
    <script src="https://kit.fontawesome.com/059fbc3cf8.js" crossorigin="anonymous"></script>
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
	
	<link href="/resources/css/list.css" rel="stylesheet">
</head>
<body>
	<!-- <form name="form" id="form" method="post" enctype="multipart/form-data"> -->
	<form id="form" name="form" method="post" autocomplete="off" enctype="multipart/form-data">
		<nav class="navbar navbar-expand-lg">
			<div class="container-fluid">
				<div class="col-1">
					<img src="/resources/images/logo.PNG" alt="" style="width: 60px; height: 60px;">
				</div>
				<div class="col-7 text-center">
					<h4>인생만렙 Management System</h4>
				</div>
				<div class="col-1 text-center">
					<img src="/resources/images/men.png" class="border border-3 rounded-circle" style="height: 35%; width: 35%;" alt="">
				</div>
				<div class="col-2 text-start">
					<span class="fs-5">Jiwon Shion</span>
					<br>
					<span class="fs-6">Administrator</span>
				</div>
				<div class="col-1">
					<select class="form-select form-select-sm">
						<option selected>언어</option>
						<option>한국어</option>
						<option>영어</option>
					</select>
				</div>
			</div>
		</nav>
		<nav class="navbar navbar-expand-lg" style="background-color: #E3F2FD">
		    <div class="container-fluid">
		        <a class="navbar-brand" href="#">Navbar</a>
		        <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
			        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
			          <li class="nav-item">
			            <a class="nav-link active" aria-current="page" href="#">코드그룹</a>
			          </li>
			          <li class="nav-item">
			            <a class="nav-link" href="#">코드그룹관리</a>
			          </li>
			          <li class="nav-item">
			            <a class="nav-link" href="#">코드</a>
			          </li>
			          <li class="nav-item">
			            <a class="nav-link" href="#">코드관리</a>
			          </li>
			        </ul>
		        </div>
		    </div>
		</nav>
		<div class="container-fluid">
			<div class="row mt-4">
				<div class="col-2">
					<div class="flex-shrink-0 p-3 bg-white" style="width: 280px;">
				    <ul class="list-unstyled ps-0">
				      <li class="mb-1">
				        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="true">
				          Home
				        </button>
				        <div class="collapse show" id="home-collapse">
				          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
				            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Overview</a></li>
				            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Updates</a></li>
				            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Reports</a></li>
				          </ul>
				        </div>
				      </li>
				      <li class="mb-1">
				        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false">
				          Dashboard
				        </button>
				        <div class="collapse" id="dashboard-collapse">
				          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
				            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Overview</a></li>
				            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Weekly</a></li>
				            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Monthly</a></li>
				            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Annually</a></li>
				          </ul>
				        </div>
				      </li>
				      <li class="mb-1">
				        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">
				          Orders
				        </button>
				        <div class="collapse" id="orders-collapse">
				          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
				            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">New</a></li>
				            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Processed</a></li>
				            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Shipped</a></li>
				            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Returned</a></li>
				          </ul>
				        </div>
				      </li>
				      <li class="border-top my-3"></li>
				      <li class="mb-1">
				        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">
				          Account
				        </button>
				        <div class="collapse" id="account-collapse">
				          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
				            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">New...</a></li>
				            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Profile</a></li>
				            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Settings</a></li>
				            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Sign out</a></li>
				          </ul>
				        </div>
				      </li>
				    </ul>
				  </div>
				</div>
				<div class="col-10">
					<div class="row">
						<h4>회원 관리</h4>
						<div class="container-fluid">
							<div class="row m-4">
								<div class="col-6">
									<label class="form-label" for="ccgSeq">아이디</label>
									<input type="text" class="form-control" id="ccgSeq">
								</div>
								<div class="col-6">
									<label class="form-label" for="cgfCodeGroupCodeAnother">코드그룹 코드 (Another)</label>
									<input type="text" class="form-control" id="cgfCodeGroupCodeAnother" placeholder="영문(대소문자),숫자">
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<label class="form-label" for="ccgName">성별</label>
									<input type="text" class="form-control" id="ccgName" name="ccgName" value="<c:out value="${dto.ccgName }"/>" placeholder="한글,숫자">
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="ccgNameEng">생일</label>
									<input type="text" class="form-control" id="ccgNameEng" name="ccgNameEng" value="<c:out value="${dto.ccgNameEng }"/>" placeholder="영문(대소문자),숫자">
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<label class="form-label" for="ccgName">Email</label>
									<input type="text" class="form-control" id="ccgName" name="ccgName" value="<c:out value="${dto.ccgName }"/>" placeholder="한글,숫자">
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="ccgNameEng">이메일 정보 마케팅 사용 동의</label>
									<input type="text" class="form-control" id="ccgNameEng" name="ccgNameEng" value="<c:out value="${dto.ccgNameEng }"/>" placeholder="영문(대소문자),숫자">
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<div class="row">
										<div class="col mx-auto">
											<label class="form-label" for="ccgUseNy">통신사</label>
											<input type="text" class="form-control" id="ccgRegDatetime" name="ccgRegDatetime" value="<c:out value="${dto.ccgRegDatetime }"/>">
										</div>
										<div class="col mx-auto">
											<label class="form-label" for="ccgUseNy">모바일</label>
											<input type="text" class="form-control" id="ccgRegDatetime" name="ccgRegDatetime" value="<c:out value="${dto.ccgRegDatetime }"/>">
										</div>
									</div>
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="ccgOrder">핸드폰 정보 마케팅 사용 동의</label>
									<input type="text" class="form-control" id="ccgOrder" name="ccgOrder" value="<c:out value="${dto.ccgOrder }"/>" placeholder="숫자">
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<label class="form-label" for="ccgOrder">전화번호</label>
									<input type="text" class="form-control" id="ccgOrder" name="ccgOrder" value="<c:out value="${dto.ccgOrder }"/>" placeholder="숫자">
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="ccgDelNy">팩스번호</label>
									<input type="text" class="form-control" id="ccgRegDatetime" name="ccgRegDatetime" value="<c:out value="${dto.ccgRegDatetime }"/>">
								</div>
							</div>
							<div class="row m-4">
								<div class="col-6">
									<label class="form-label" for="ccgRegDatetime">거주국가</label>
									<input type="text" class="form-control" id="ccgRegDatetime" name="ccgRegDatetime" value="<c:out value="${dto.ccgRegDatetime }"/>">
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
											<input class="form-control" type="text" id="" placeholder="위도" readonly>
										</div>
										<div class="col mx-auto">
											<input class="form-control" type="text" id="" placeholder="경도" readonly>
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
	<script src="/resources/js/list.js"></script>
	<script src="/resources/js/sidebar.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript">
	
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
	            }
	        }).open();
	    }
		
		$("#btnAddressClear").on("click", function(){
			$("#mmPostcode").val('');
			$("#mmRoadAddress").val('');
			$("#mmJibunAddress").val('');
			$("#mmDetailAddress").val('');
			$("#mmExtraAddress").val('');
		});
		
	</script>
</body>
</html>


