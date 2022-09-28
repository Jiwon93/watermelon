	<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
	
	<nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top p-0">
        <a type="button" id="btnHome" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
            <img src="/resources/images/logo.PNG" alt="" style="width: 60px; height: 60px;">
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
        	<form class="d-flex" role="search">
		        <input class="form-control me-2" type="search" style="width: 400px;" placeholder="Search" aria-label="Search">
		        <button class="btn btn-outline-primary" type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
		    </form>
        </div>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto">
            <c:choose>
            	<c:when test="${sessSeq eq null }">
            		<div class="navbar-nav ms-auto">
		                <a href="/member/loginForm" class="nav-item nav-link">로그인</a>
		                <a href="#" class="nav-item nav-link">회원가입</a>
		            </div>
		            <div class="navbar-nav ms-auto pe-3 pt-3">
		            	<button class="btn btn-primary" type="button">만렙등록</button>
		            </div>
		        </c:when>
		        <c:when test="${sessRank eq 25 }">
		        	<div class="navbar-nav ms-auto p-4 p-lg-0">
		                <a href="loginForm.html" class="nav-item nav-link"><i class="fa-solid fa-comment fa-2x"></i></a>
		                <a href="memberRegFormC.html" class="nav-item nav-link"><i class="fa-solid fa-bell fa-2x"></i></a>
		                <a href="#" class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fa-solid fa-user fa-2x"></i></a>
		                <ul class="dropdown-menu" role="menu" style="right: 0; left: auto;">
		                	<li class="dropdown-item"><span style="font-weight: bold;"><c:out value="${sessName }"/>회원님</span></li>
				            <li><a class="dropdown-item"  type="button" id="btnMypage">마이페이지</a></li>
				            <li><a class="dropdown-item" type="button" id="btnSaleManage">판매 관리</a></li>
				            <li><a class="dropdown-item" type="button" id="btnMemberMod">계정 설정</a></li>
				            <li><hr class="dropdown-divider"></li>
				            <li><a class="dropdown-item" type="button" id="btnLogout">로그 아웃</a></li>
				        </ul>
		            </div>
		        </c:when>
		        <c:otherwise>
		        	<a href="#" class="nav-item nav-link"><i class="fa-solid fa-comment fa-2x"></i></a>
	                <a href="#" class="nav-item nav-link"><i class="fa-solid fa-bell fa-2x"></i></a>
	                <a href="#" class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fa-solid fa-user fa-2x"></i></a>
	                <ul class="dropdown-menu" id="" role="menu" style="right: 0; left: auto;">
	                	<li class="dropdown-item"><span style="font-weight: bold;"><c:out value="${sessName }"/>회원님</span></li>
			            <li><a class="dropdown-item" type="button" id="btnMypage">마이페이지</a></li>
			            <li><a class="dropdown-item" type="button" id="btnPurchaseHistory">구매 목록</a></li>
			            <li><a class="dropdown-item" type="button" id="btnMemberMod">계정 설정</a></li>
			            <li><hr class="dropdown-divider"></li>
			            <li><a class="dropdown-item" type="button" id="btnLogout">로그 아웃</a></li>
			        </ul>
		        </c:otherwise>
	        </c:choose>
            </div>
        </div>
    </nav>
    
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    
    <script>
	 // 로그아웃
		var goUrlLogout = "/member/memberHome";
		 
		$("#btnLogout").on("click", function(){
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				,url: "/member/logoutProc"
				,data : {}
				,success: function(response) {
					if(response.rt == "success") {
							location.href = goUrlLogout;
					} else {
						// by pass
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
		});
    </script>