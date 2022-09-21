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
<title>codeForm</title>
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
	<form method="get" id="form" name="form" autocomplete="off" enctype="multipart/form-data">
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
					<span class="fs-5">Jiwon Shin</span>
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
			            <a class="nav-link active" aria-current="page" href="codeGroupList.html">코드그룹</a>
			          </li>
			          <li class="nav-item">
			            <a class="nav-link" href="codeGroupForm.html">코드그룹관리</a>
			          </li>
			          <li class="nav-item">
			            <a class="nav-link" href="codeList.html">코드</a>
			          </li>
			          <li class="nav-item">
			            <a class="nav-link" href="codeForm.html">코드관리</a>
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
				          페이지 관리
				        </button>
				        <div class="collapse show" id="home-collapse">
				          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
				            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">팝업관리</a></li>
				            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">배너관리</a></li>
				            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">회사소개</a></li>
				            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">회원가입</a></li>
				            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">상품상세</a></li>
				          </ul>
				        </div>
				      </li>
				      <li class="mb-1">
				        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false">
				          회원관리
				        </button>
				        <div class="collapse" id="dashboard-collapse">
				          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
				            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">회원목록</a></li>
				            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">탈퇴회원</a></li>
				          </ul>
				        </div>
				      </li>
				      <li class="mb-1">
				        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">
				          판매관리
				        </button>
				        <div class="collapse" id="orders-collapse">
				          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
				            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">판매목록</a></li>
				            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">판매등록</a></li>
				            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">판매분류관리</a></li>
				            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">판매후기관리</a></li>
				          </ul>
				        </div>
				      </li>
				      <li class="border-top my-3"></li>
				      <li class="mb-1">
				        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">
				          주문관리
				        </button>
				        <div class="collapse" id="account-collapse">
				          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
				            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Profile</a></li>
				            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Settings</a></li>
				            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Sign out</a></li>
				          </ul>
				        </div>
				      </li>
				      <li class="mb-1">
				        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">
				          분석관리
				        </button>
				      </li>
				      <li class="mb-1">
				        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">
				          문의관리
				        </button>
				        <div class="collapse" id="account-collapse">
				          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
				            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded"></a></li>
				            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">문의목록</a></li>
				            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded"></a></li>
				            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Sign out</a></li>
				          </ul>
				        </div>
				      </li>
				    </ul>
				  </div>
				</div>
				<div class="col-10">
					<div class="row">
						<h4>코드 관리</h4>
						<div class="container-fluid">
							<div class="row m-4">
								<div class="col-6">
									<label class="form-label" for="codeGroup_ccgSeq">코드그룹</label>
									<select class="form-select" id="codeGroup_ccgSeq" name="codeGroup_ccgSeq">
										<option>선택</option>
										<c:forEach items="${ccgNameList}" var="ccgNameList" varStatus="status">
										<option value="${ccgNameList.ccgSeq }" ><c:out value="${ccgNameList.ccgName }"/></option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<label class="form-label" for="ccSeq">코드</label>
									<input type="text" class="form-control" id="ccSeq" name="ccSeq" placeholder="자동생성" readonly>
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="cfCodeAnother">코드 (Another)</label>
									<input type="text" class="form-control" id="cfCodeAnother">
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<label class="form-label" for="ccName">코드 이름 (한글)</label>
									<input type="text" class="form-control" id="ccName" name="ccName" value="<c:out value="${dto.ccName }"/>">
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="ccNameEng">코드 이름 (영문)</label>
									<input type="text" class="form-control" id="ccNameEng" name="ccNameEng" value="<c:out value="${dto.ccNameEng }" />">
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<label class="form-label" for="ccUseNy">사용여부</label>
									<select class="form-select" id="ccUseNy" name="ccUseNy">
										<option value="" <c:if test="${empty dto.ccUseNy }">selected</c:if>>사용여부 선택</option>
										<option value="1" <c:if test="${dto.ccUseNy eq 1 }">selected</c:if>>Y</option>
										<option value="0" <c:if test="${dto.ccUseNy eq 0 }">selected</c:if>>N</option>
									</select>
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="ccOrder">순서</label>
									<input type="text" class="form-control" id="ccOrder" name="ccOrder" value="<c:out value="${dto.ccOrder }"/>">
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<label class="form-label" for="cfExplain">설명</label>
									<textarea  class="form-control" id="cfExplain"></textarea>
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="ccDelNy">삭제여부</label>
									<select class="form-select" id="ccDelNy" name="ccDelNy">
										<option value="" <c:if test="${empty dto.ccDelNy }">selected</c:if>>삭제여부 선택</option>
										<option value="1" <c:if test="${dto.ccDelNy eq 1 }">selected</c:if>>Y</option>
										<option value="0" <c:if test="${dto.ccDelNy eq 0 }">selected</c:if>>N</option>
									</select>
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<label class="form-label" for="ccRegDatetime">코드 등록 날짜</label>
									<input type="text" class="form-control" id="ccRegDatetime" name="ccRegDatetime" value="<c:out value="${dto.ccRegDatetime }"/>">
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="ccModDatetime">코드 수정 날짜</label>
									<input type="text" class="form-control" id="ccModDatetime" name="ccModDatetime" value="<c:out value="${dto.ccModDatetime }"/>">
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
	<script type="text/javascript">
		var goUrlList = "/code/codeList";
		var goUrlInst = "/code/codeInst";
		var goUrlUpdt = "/code/codeUpdt";
		var goUrlUele = "/code/codeUele";
		var goUrlDele = "/code/codeDele";
	
		var form = $("form[name=form]");
		
		$("#btnSave").on("click", function(){
	   		form.attr("action", goUrlInst).submit();
		}); 
	
		$("#btnList").on("click", function(){
			form.attr("action", goUrlList).submit();
		});
		
		$("#btnUelete").on("click", function(){
			$("input:hidden[name=ccDelNy]").val(1);
			$(".modal-title").text("확 인");
			$(".modal-body").text("해당 데이터를 삭제하시겠습니까 ?");
			$("#btnModalUelete").show();
			$("#btnModalDelete").hide();
			$("#modalConfirm").modal("show");
		});
		

		$("#btnDelete").on("click", function(){
			$("input:hidden[name=ccDelNy]").val(0);
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
	
	</script>

</body>
</html>