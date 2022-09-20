<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<jsp:useBean id="CodeServiceImpl" class="com.lifemanlab.shop.modules.code.CodeServiceImpl"/>

<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>memberList</title>
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
		
		.tableHead1 {
			width: 40px;
			text-align: center;
		}

		.listCheck {
			text-align: center;
			justify-content: center;
		}
	</style>
	
	<link href="/resources/css/list.css" rel="stylesheet">
</head>
<body>
	<form method="post" name="mmFormList" id="mmFormList" >
		<input type="hidden" name="mmSeq" value="${dto.mmSeq }">
		<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage }" default="1"/>">
		<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow }"/>">
		<input type="hidden" name="checkboxSeqArray">
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
						<h4>회원 목록</h4>
						<div class="col border me-4">
							<div class="row mt-2 mb-2">
								<div class="col-2 p-1">
									<select id="shDelNy" name="shDelNy" class="form-select">
										<option value="" <c:if test="${empty vo.shDelNy }">selected</c:if>selected>삭제여부</option>
										<option value="0" <c:if test="${vo.shDelNy eq 0 }">selected</c:if>>N</option>
										<option value="1" <c:if test="${vo.shDelNy eq 1 }">selected</c:if>>Y</option>
									</select>
								</div>
								<div class="col-2 p-1">
									<select class="form-select">
										<option>수정일</option>
									</select>
								</div>
								<div class="col-2 p-1">
									<input class="form-control" type="text" placeholder="시작일">
								</div>
								<div class="col-2 p-1">
									<input class="form-control" type="text" placeholder="종료일">
								</div>
							</div>
							<div class="row mb-2">
								<div class="col-2 p-1">
									<select id="shOption" name="shOption" class="form-select">
										<option value="" <c:if test="${empty vo.shOption }">selected</c:if>>검색구분</option>
										<option value="1" <c:if test="${vo.shOption eq 1 }">selected</c:if>>이름</option>
										<option value="2" <c:if test="${vo.shOption eq 2 }">selected</c:if>>등급</option>
										<option value="3" <c:if test="${vo.shOption eq 3 }">selected</c:if>>이메일</option>
										<option value="4" <c:if test="${vo.shOption eq 4 }">selected</c:if>>닉네임</option>
										<option value="5" <c:if test="${vo.shOption eq 5 }">selected</c:if>>비밀번호</option>
										<option value="6" <c:if test="${vo.shOption eq 6 }">selected</c:if>>직업</option>
										<option value="7" <c:if test="${vo.shOption eq 7 }">selected</c:if>>성별</option>
									</select>
								</div>
								<div class="col-2 p-1">
									<input id="shValue" name="shValue" value="<c:out value="${vo.shValue }"/>" class="form-control" type="text" placeholder="검색어">
								</div>
								<div class="col-1 p-1">
									<button class="btn btn-warning" href="#" type="submit" role="button"><i class="fa-solid fa-magnifying-glass"></i></button>
									<button class="btn btn-danger" href="#" role="button"><i class="fa-solid fa-arrow-rotate-right"></i></button>
								</div>
							</div>
						</div>
					</div>
					<div class="row mt-3">
						<div class="row">
							<div class="col-11 p-0">
								<span>Total: 42</span>
							</div>
							<div class="col-1 p-0">
								<div class="col-12">
									<select class="form-select py-1" style="height: 30px; font-size: 12px;">
										<option>10</option>
									</select>
								</div>
							</div>
						</div>
						<div class="row mt-1">
							<table class="table table-striped table-hover border">
								<tr class="table-dark">
									<th class="tableHead1"><input class="listCheck" type="checkbox"></th>
									<th class="tableHead1">#</th>
									<th>이름</th>
									<th>등급</th>
									<th>이메일</th>
									<th>닉네임</th>
									<th>비밀번호</th>
									<th>직업</th>
									<th>성별</th>
									<th>방문수</th>
									<th>가입일</th>
									<th>상세</th>
								</tr>
								<c:set var="listCodeGender" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
								<c:set var="listCodeJob" value="${CodeServiceImpl.selectListCachedCode('4')}"/>
								<c:set var="listCodeRank" value="${CodeServiceImpl.selectListCachedCode('6')}"/>
								<c:choose>
									<c:when test="${fn:length(list) eq 0 }">
										<tr>
											<td class="text-center" colspan="12">There is no data!</td>
										</tr>
									</c:when>
									<c:otherwise>
										<c:forEach items="${list }" var="list" varStatus="status">
											<tr>
												<td class="tableHead1"><input class="listCheck" type="checkbox"></td>
												<td class="tableHead1"><c:out value="${list.mmSeq }"/></td>
												<td><c:out value="${list.mmName }"/></td>
												<%-- <td><c:out value="${list.mmRank }"/></td> --%>
												<td>
													<c:forEach items="${listCodeRank}" var="listRank" varStatus="statusRank">
														<c:if test="${list.mmRank eq listRank.ccSeq}"><c:out value="${listRank.ccName }"/></c:if>
													</c:forEach>
												</td>
												<td><c:out value="${list.mmEmail }"/></td>
												<td><c:out value="${list.mmNickname }"/></td>
												<td><c:out value="${list.mmPw }"/></td>
												<%-- <td><c:out value="${list.mmJob }"/></td> --%>
												<td>
													<c:forEach items="${listCodeJob}" var="listJob" varStatus="statusJob">
														<c:if test="${list.mmJob eq listJob.ccSeq}"><c:out value="${listJob.ccName }"/></c:if>
													</c:forEach>
												</td>
												<%-- <td><c:out value="${list.mmGender }"/></td> --%>
												<td>
													<c:forEach items="${listCodeGender}" var="listGender" varStatus="statusGender">
														<c:if test="${list.mmGender eq listGender.ccSeq}"><c:out value="${listGender.ccName }"/></c:if>
													</c:forEach>
												</td>
												<td></td>
												<td></td>
												<td></td>
											</tr>
										</c:forEach>
									</c:otherwise>
								</c:choose>
							</table>
						</div>
						<!-- pagination s -->
						<%@include file="../../common/xdmin/includeV1/pagination.jsp"%>
						<!-- pagination e -->
						<div class="row p-0">
							<div class="col">
								<button class="btn btn-danger" type="button" id="btnUele">
									<i class="fa-duotone fa-x"></i>
								</button>
								<button class="btn btn-danger" type="button" id="btnDel">
									<i class="fa-regular fa-trash-can"></i>
								</button>
							</div>
							<div class="col" style="text-align: right;">
								<button class="btn btn-success" type="button" id="btnExcel">
									<i class="fa-regular fa-file-excel"></i>
								</button>
								<button class="btn btn-primary" type="button" id="btnPlus">
									<i class="fa-regular fa-plus"></i>
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script>
		var goUrlList = "/member/memberList";
		var goUrlForm = "/member/memberForm";
		var goUrlView = "/member/memberView";
		var goUrlInst = "/member/memberInst";
		var goUrlUpdt = "/member/memberUpdt";
		var goUrlUele = "/member/memberUele";
		var goUrlDele = "/member/memberDele";

		var form = $("form[name=mmFormList]");

		$("#btnSearch").on("click", function() {
			form.attr("action", goUrlList).submit();
		});

		$("#btnReset").on("click", function() {
			$(location).attr("href", goUrlList);
		});
		
		$("#btnPlus").on("click", function(){
			$(location).attr("href", goUrlForm);
		});

		goList = function(thisPage) {
			$("input:hidden[name=thisPage]").val(thisPage);
			form.attr("action", goUrlList).submit();
		}
		
		var seq = $("input:hidden[name=mmSeq]");
		
		goForm = function(keyValue) {
			seq.val(keyValue);
			form.attr("action", goUrlForm).submit();
		}
		
		goView = function(keyValue) {
	    	/* if(keyValue != 0) seq.val(btoa(keyValue)); */
	    	seq.val(keyValue);
			form.attr("action", goUrlView).submit();
		}
	</script>
</body>
</html>