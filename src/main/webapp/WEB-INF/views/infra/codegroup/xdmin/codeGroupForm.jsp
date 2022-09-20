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
<title>codeGroupForm</title>

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
						<h4>코드그룹 관리</h4>
						<div class="container-fluid">
							<div class="row m-4">
								<div class="col-6">
									<label class="form-label" for="ccgSeq">코드그룹 코드</label>
									<input type="text" class="form-control" id="ccgSeq" placeholder="자동생성" readonly>
								</div>
								<div class="col-6">
									<label class="form-label" for="cgfCodeGroupCodeAnother">코드그룹 코드 (Another)</label>
									<input type="text" class="form-control" id="cgfCodeGroupCodeAnother" placeholder="영문(대소문자),숫자">
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<label class="form-label" for="ccgName">코드그룹 이름 (한글)</label>
									<input type="text" class="form-control" id="ccgName" name="ccgName" value="<c:out value="${dto.ccgName }"/>" placeholder="한글,숫자">
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="ccgNameEng">코드그룹 이름 (영문)</label>
									<input type="text" class="form-control" id="ccgNameEng" name="ccgNameEng" value="<c:out value="${dto.ccgNameEng }"/>" placeholder="영문(대소문자),숫자">
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<label class="form-label" for="ccgUseNy">사용여부</label>
									<select class="form-select" id="ccgUseNy" name="ccgUseNy">
										<option value="" <c:if test="${empty dto.ccgUseNy }">selected</c:if>>사용여부 선택</option>
										<option value="1" <c:if test="${dto.ccgUseNy eq 1 }">selected</c:if>>Y</option>
										<option value="0" <c:if test="${dto.ccgUseNy eq 0 }">selected</c:if>>N</option>
									</select>
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="ccgOrder">순서</label>
									<input type="text" class="form-control" id="ccgOrder" name="ccgOrder" value="<c:out value="${dto.ccgOrder }"/>" placeholder="숫자">
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<label class="form-label" for="cgfExplain">설명</label>
									<textarea  class="form-control" id="cgfExplain"></textarea>
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="ccgDelNy">삭제여부</label>
									<select class="form-select" id="ccgDelNy" name="ccgDelNy">
										<option value="" <c:if test="${empty dto.ccgDelNy }">selected</c:if>>삭제여부 선택</option>
										<option value="1" <c:if test="${dto.ccgDelNy eq 1 }">selected</c:if>>Y</option>
										<option value="0" <c:if test="${dto.ccgDelNy eq 0 }">selected</c:if>>N</option>
									</select> 
									<%-- 
									<input type="radio" id="ccgDelNy1" name="ccgDelNy" value="1" <c:if test="${dto.ccgDelNy eq 1 }">selected</c:if>>Y
									<input type="radio" id="ccgDelNy0" name="ccgDelNy" value="0" <c:if test="${dto.ccgDelNy eq 0 }">selected</c:if>>N
									 --%>
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<label class="form-label" for="ccgRegDatetime">코드 등록 날짜</label>
									<input type="text" class="form-control" id="ccgRegDatetime" name="ccgRegDatetime" value="<c:out value="${dto.ccgRegDatetime }"/>">
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="ccgModDatetime">코드 수정 날짜</label>
									<input type="text" class="form-control" id="ccgModDatetime" name="ccgModDatetime" value="<c:out value="${dto.ccgModDatetime }"/>">
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
								<button class="btn btn-danger" type="button" id="btnUele">
									<i class="fa-duotone fa-x"></i>
								</button>
								<button class="btn btn-danger" type="button" id="btnDele">
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
	
		var goUrlList = "/codeGroup/codeGroupList";
		var goUrlInst = "/codeGroup/codeGroupInst";
		var goUrlUpdt = "/codeGroup/codeGroupUpdt";
		var goUrlUele = "/codeGroup/codeGroupUele";
		var goUrlDele = "/codeGroup/codeGroupDele";
	
		var form = $("form[name=form]");
	
		$("#btnSave").on("click", function(){
	   		form.attr("action", goUrlInst).submit();
		}); 
	
		$("#btnList").on("click", function(){
			form.attr("action", goUrlList).submit();
		});
	
		/* 
			function test() {
			
			alert(document.getElementById("ccgName").value);
			alert(document.getElementById('ccgNameEng').value);
			alert(document.getElementById('ccgUseNy').value);
			alert(document.getElementById('ccgOrder').value);
			alert(document.querySelector("input[name='ccgDelNy']:checked").value);
			alert(document.getElementById('ccgRegDatetime').value);
			
			if(document.getElementById("ccgName").value == '' || document.getElementById("ccgName").value == null){
				alert("이름을 입력해 주세요");
				document.getElementById("ccgName").value= "";
				document.getElementById("ccgName").focus();
				return false;
			}
			
			if(document.getElementById("ccgNameEng").value == '' || document.getElementById("ccgNameEng").value == null){
				alert("이름(영문)을 입력해 주세요");
				document.getElementById("ccgNameEng").value= "";
				document.getElementById("ccgNameEng").focus();
				return false;
			}
			
			if(document.getElementById('ccgUseNy').value == '' || document.getElementById('ccgUseNy').value == null) {
				alert("사용여부를 선택해 주세요");
				document.getElementById('ccgUseNy').value= "";
				document.getElementById('ccgUseNy').focus();
				return false;
			}
			
			if(document.getElementById("ccgOrder").value == '' || document.getElementById("ccgOrder").value == null) {
				alert("순서를 입력해 주세요");
				document.getElementById("ccgOrder").value= "";
				document.getElementById("ccgOrder").focus();
				return false;
			}
			
			if(document.querySelector("input[name='ccgDelNy']:checked").value == '' || document.querySelector("input[name='ccgDelNy']:checked").value == null) {
				alert("삭제여부를 선택해 주세요");
				document.querySelector("input[name='ccgDelNy']:checked").value="";
				document.querySelector("input[name='ccgDelNy']:checked").focus();
				return false;
			}
			
			if(document.getElementById("ccgRegDatetime").value == '' || document.getElementById("ccgRegDatetime").value == null) {
				alert("등록일자를 입력해 주세요");
				document.getElementById("ccgRegDatetime").value= "";
				document.getElementById("ccgRegDatetime").focus();
				return false;
			}
			
		} 
		*/
	
	</script>
</body>
</html>