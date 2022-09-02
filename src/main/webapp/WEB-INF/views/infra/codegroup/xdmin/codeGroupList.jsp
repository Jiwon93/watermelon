<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>codeGroupList</title>
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
		
		td {
			border: 1px solid lightgray;
			height: 35px;
		}
		
		.tableHead1 {
			width: 40px;
			text-align: center;
		}
		
		.tableHead {
			background-color: black;
			color: white;
		}
		
		.listCheck {
			text-align: center;
			justify-content: center;
		}
	</style>
	
	<link href="/resources/css/list.css" rel="stylesheet">
</head>
<body>
	<form action="">
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
					<span class="fs-5">Tony Chang</span>
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
			            <a class="nav-link active" aria-current="page" href="#">회원관리</a>
			          </li>
			          <li class="nav-item">
			            <a class="nav-link" href="#">서비스관리</a>
			          </li>
			          <li class="nav-item">
			            <a class="nav-link" href="#">사이트관리</a>
			          </li>
			          <li class="nav-item">
			            <a class="nav-link" href="#">로그관리</a>
			          </li>
			          <li class="nav-item">
			            <a class="nav-link" href="#">시스템관리</a>
			          </li>
			          <li class="nav-item">
			            <a class="nav-link" href="#">시스템관리</a>
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
						<div class="col border me-4">
							<div class="row  mt-2 mb-2">
								<div class="col-2 p-1">
									<select class="form-select">
										<option>N</option>
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
									<select class="form-select">
										<option>검색구분</option>
									</select>
								</div>
								<div class="col-2 p-1">
									<input class="form-control" type="text" placeholder="검색어">
								</div>
								<div class="col-1 p-1">
									<a class="btn btn-warning" href="#" role="button"><i class="fa-solid fa-magnifying-glass"></i></a>
									<a class="btn btn-danger" href="#" role="button"><i class="fa-solid fa-arrow-rotate-right"></i></a>
								</div>
							</div>
						</div>
					</div>
					<div class="row mt-3">
						<div class="row">
							<div class="col-11 p-0">
								<span>Total: 18</span>
							</div>
							<div class="col-1 p-0">
								<div class="col-12">
									<select class="form-select py-1" style="height: 30px; font-size: 12px;">
										<option value="10" selected>10</option>
										<option value="15">15</option>
										<option value="20">20</option>
										<option value="30">30</option>
									</select>
								</div>
							</div>
						</div>
						<div class="row mt-1">
							<table class="table table-striped table-hover border">
								<tr class="table-dark">
									<td class="tableHead1"><input class="listCheck" type="checkbox"></td>
									<td class="tableHead1">#</td>
									<td class="tableHead">코드그룹 코드</td>
									<td class="tableHead">코드그룹 이름 (한글)</td>
									<td class="tableHead">코드그룹 이름 (영문)</td>
									<td class="tableHead">코드갯수</td>
									<td class="tableHead">등록일</td>
									<td class="tableHead">수정일</td>
								</tr>
								<c:choose>
									<c:when test="${fn:length(list) eq 0 }">
										<tr>
											<td class="text-center" colspan="8">There is no data!</td>
										</tr>
									</c:when>
									<c:otherwise>
										<c:forEach items="${list}" var="list" varStatus="status">
											<tr>
												<td class="tableHead1"><input class="listCheck" type="checkbox"></td>
												<td class="tableHead1"><c:out value="${list.ccgSeq }"/></td>
												<td><c:out value="${list.ccgSeq }"/></td>
												<td><c:out value="${list.ccgName }"/></td>
												<td></td>
												<td><c:out value="${list.ccCount }"/></td>
												<td></td>
												<td></td>
											</tr>
										</c:forEach>
									</c:otherwise>
								</c:choose>
							</table>
						</div>
						<div class="row mt-2 text-center">
						  <ul class="pagination" style="justify-content: center;">
						  	<li class="page-item">
						      <a class="page-link" href="#" aria-label="Previous">
						        <span aria-hidden="true">&laquo;</span>
						      </a>
						    </li>
						    <li class="page-item">
						        <a class="page-link active" aria-current="page">1</a>
						    </li>
						    <li class="page-item">
						    	<a class="page-link" href="#">2</a>
					    	</li>
						    <li class="page-item">
						        <a class="page-link" href="#">3</a>
						    </li>
						    <li class="page-item">
						    	<a class="page-link" href="#">4</a>
					    	</li>
						    <li class="page-item">
						        <a class="page-link" href="#">5</a>
						    </li>
						    <li class="page-item">
						      <a class="page-link" href="#" aria-label="Next">
						        <span aria-hidden="true">&raquo;</span>
						      </a>
						    </li>
						  </ul>
						</div>
						<div class="row p-0">
							<div class="col">
								<button class="btn btn-danger" type="button" id="cglCancel"><i class="fa-duotone fa-x"></i></button>
								<button class="btn btn-danger" type="button" id="cglDel"><i class="fa-regular fa-trash-can"></i></button>
							</div>
							<div class="col" style="text-align: right;">
								<button class="btn btn-success" type="button" id="cglExcel"><i class="fa-regular fa-file-excel"></i></button>
								<button class="btn btn-primary" type="button" id="cglPlus"><i class="fa-regular fa-plus"></i></button>
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
</body>
</html>