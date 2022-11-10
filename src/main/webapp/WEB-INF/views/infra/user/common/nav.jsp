	<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
	<%-- <input type="hidden" id="sessSeq" name="sessSeq" value="${sessSeq }"> --%>
	<div class="container">
		<nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top p-0 pt-3">
	        <a type="button" id="btnHome" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
	            <img src="/resources/images/logo.PNG" alt="" style="width: 60px; height: 60px;">
	        </a>
	        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
	            <span class="navbar-toggler-icon"></span>
	        </button>
	        
	        <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
		        <input class="form-control me-2" type="text" style="width: 400px; border-radius: 5px;" placeholder="Search" aria-label="Search">
		        <button class="btn btn-outline-primary" type="button"><i class="fa-solid fa-magnifying-glass"></i></button>
	        </div>
	        
	        <div class="collapse navbar-collapse" id="navbarCollapse">
	            <div class="navbar-nav ms-auto">
	            <c:choose>
	            	<c:when test="${sessSeq eq null }">
	            		<div class="navbar-nav ms-auto">
			                <a id="btnLoginGo" type="button" class="nav-item nav-link">로그인</a>
			                <a id="btnMemberRegC" type="button"class="nav-item nav-link">회원가입</a>
			            </div>
			            <div class="navbar-nav ms-auto pe-3 pt-3">
			            	<button class="btn btn-primary" type="button" id="btnMemberRegB">만렙등록</button>
			            </div>
			        </c:when>
			        <c:when test="${sessRank eq 20 }">
			        	<div class="navbar-nav ms-auto p-4 p-lg-0">
			                <a href="#" class="nav-item nav-link"><i class="fa-solid fa-comment fa-2x"></i></a>
			                <a href="#" class="nav-item nav-link"><i class="fa-solid fa-bell fa-2x"></i></a>
			                <a href="#" class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fa-solid fa-user fa-2x"></i></a>
			                <ul class="dropdown-menu" role="menu" style="right: 0; left: auto;">
			                	<li class="dropdown-item"><span style="font-weight: bold;"><c:out value="${sessName }"/>회원님</span></li>
					            <li><a class="dropdown-item" href="javascript:goView(<c:out value="${sessSeq }" />)"> 마이페이지</a></li>
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
				            <li><a class="dropdown-item" href="javascript:goView(<c:out value="${sessSeq }" />)">마이페이지</a></li>
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
    </div>
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    
    <script>
	 	var goUrlHome = "/member/memberHome";
	 	var goUrlMypage = "/member/memberViewC";
		var goUrlLogout = "/member/memberHome";
		var goUrlLoginGo = "/member/loginForm";
		var goUrlMemberRegC = "/member/memberRegFormC";
		var goUrlMemberRegB = "/member/memberRegFormB";
		var goUrlPurchaseHistory = "/member/purchaseHistory";
		var goUrlMemberMod = "/member/memberModFormC";
		var goUrlSaleManage = "/member/saleManage";
		
		$("#btnHome").on("click", function(){
	   		$(location).attr("href", goUrlHome);
		});
		
		$("#btnLoginGo").on("click", function(){
	   		$(location).attr("href", goUrlLoginGo);
		});
		
		$("#btnMypage").on("click", function(){
	   		$(location).attr("href", goUrlMypage);
		});
		
		$("#btnMemberRegC").on("click", function(){
	   		$(location).attr("href", goUrlMemberRegC);
		});
		
		$("#btnMemberRegB").on("click", function(){
	   		$(location).attr("href", goUrlMemberRegB);
		});
		
		$("#btnPurchaseHistory").on("click", function(){
	   		$(location).attr("href", goUrlPurchaseHistory);
		});
		
		$("#btnMemberMod").on("click", function(){
	   		$(location).attr("href", goUrlMemberMod);
		});
		
		$("#btnSaleManage").on("click", function(){
	   		$(location).attr("href", goUrlSaleManage);
		});
		 
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
		
		var form = $("form[name=form]");
		
		var seq = $("input:hidden[name=sessSeq]");
		
		goView = function(keyValue) {
	    	/* if(keyValue != 0) seq.val(btoa(keyValue)); */
	    	seq.val(keyValue);
			form.attr("action", goUrlMypage).submit();
		}
    </script>