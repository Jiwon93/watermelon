<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<nav class="navbar navbar-expand-lg">
	<div class="container-fluid">
		<div class="col-1">
			<img src="/resources/images/logo.PNG" alt="" style="width: 60px; height: 60px;">
		</div>
		<div class="col-6 text-center">
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
		<div class="col-1 text-start">
			<a type="button" id="btnLogout"><i class="fa-solid fa-door-open">로그아웃</i></a>
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

<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  
<script>
	var goUrlLogout = "/member/xdminLoginForm";
	
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