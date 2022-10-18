<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

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
					<span class="fs-5"><c:out value="${sessName }" /></span>
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