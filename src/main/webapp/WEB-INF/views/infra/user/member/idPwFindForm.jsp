<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>혼자서 할 수 없던 것 | 인생만렙에서 만렙들과 해보세요.</title>
    <%@ include file="../common/basicSetting.jsp" %>

	<style type="text/css">
		.row {
			flex-wrap: nowrap;
			display: flex;
			justify-content: center;
		}
		
		.box {
			border-radius: 10px;
		}
	</style>

</head>

<body>
<form method="post" id="form" name="form" autocomplete="off" enctype="multipart/form-data">
	<input type="hidden" id="sessSeq" name="sessSeq" value="${sessSeq }">
	<!-- Navbar Start -->
	<%@include file="../common/nav.jsp"%>
	<!-- Navbar End -->

	<!-- Contact Start -->
	<div class="contaniner-fluid mb-4">
		<div class="row">
			<div class="col text-center">
				<h3>아이디/비밀번호 찾기</h3>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="box col-sm-4 bg-light">
				<div class="row mt-4">
					<div class="section-title">
						<h5 class="mb-4">아이디 찾기</h5>
					</div>
				</div>
				<div class="row mb-3">
					<div class="col">
						<div class="form-floating">
							<input type="text" class="form-control" id="mmName" name="mmName" value="${dto.mmName }">
							<label for="mmName">이름</label>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<div class="form-floating">
							<input type="text" class="form-control" id="mmpPhoneNumber" name="mmpPhoneNumber" value="${dto.mmpPhoneNumber }">
							<label for="mmpPhoneNumber">핸드폰 번호</label>
						</div>
					</div>
				</div>
				<div class="row mt-3">
					<div class="col">
						<p>본인인증 받으신 정보를 입력해 주세요.</p>
					</div>
				</div>
				<div class="row mb-4">
					<div class="col">
						<button class="btn btn-primary w-100 py-2" type="button" id="btnFindEmail" data-bs-toggle="modal" data-bs-target="#emailAddress">이메일 주소 찾기</button>
					</div>
					<div class="modal fade" id="emailAddress" aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog modal-dialog-centered">
							<div class="modal-content ">
								<div class="modal-head text-end mt-2 me-2">
									<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
								</div>
								<div class="modal-body text-center">
									<i class="fa-solid fa-circle-check fa-4x" style="color: #2ECC71;"></i>
									<h5 class="modal-title mt-2" id="exampleModalLabel">가입하신 이메일 주소는</h5>
									<p class="mt-5 mb-3"><c:out value="${sessEmail }" /></p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row mt-4">
			<div class="box col-sm-4 bg-light">
				<div class="row mt-4">
					<div class="section-title">
						<h5 class="mb-4">비밀번호 찾기</h5>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<div class="form-floating">
							<input type="email" class="form-control" id="emailFind">
							<label for="emailFind">이메일</label>
						</div>
					</div>
				</div>
				<div class="row mt-3">
					<div class="col">
						<p>가입 시 등록하신 이메일 주소를 입력해 주세요. 비밀번호 재설정 링크를 보내드립니다.</p>
					</div>
				</div>
				<div class="row mb-4">
					<div class="col">
						<button class="btn btn-primary w-100" type="button" data-bs-toggle="modal" data-bs-target="#pwreUrl">비밀번호 재설정 URL 전송</button>
					</div>
					<div class="modal fade" id="pwreUrl" aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog modal-dialog-centered">
							<div class="modal-content ">
								<div class="modal-head text-end mt-2 me-2">
									<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
								</div>
								<div class="modal-body text-center">
									<i class="fa-solid fa-circle-check fa-4x" style="color: #2ECC71;"></i>
									<h5 class="modal-title mt-2" id="exampleModalLabel">전송완료</h5>
									<p class="mt-5 mb-3">이메일 주소로 비밀번호 재설정 링크를 발송하였습니다.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-4 p-0">
				<div class="row mt-3">
					<div class="col-6">
						<button type="button" class="btn btn-secondary mt-2" style="width: 100px;" id="btnLogin2">로그인</button>
					</div>
					<div class="col-6 text-end">
						<button type="button" class="btn btn-secondary mt-2" style="width: 100px;" id="btnRegForm2">회원가입</button>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- Contact End -->
    
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
						Designed By <a class="border-bottom" href="https://htmlcodex.com">HTML Codex</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer End -->
</form>

    <script type="text/javascript">
    	var goUrlLogin2 = "/member/loginForm";
    	var goUrlRegForm2 = "/member/memberRegFormC";
    	
    	var form = $("form[name=form]");
    	
    	$("#btnLogin2").on("click", function(){
	   		$(location).attr("href", goUrlLogin2);
		});
    	
    	$("btnRegForm2").on("click", function(){
   			$(location).attr("href", goUrlRegForm2);
    	});
    	
    	//아이디 찾기
    	$("#btnFindEmail").on("click", function(){
    		//if(validation() == false) return false;
    		
    			$.ajax({
    				async: true 
    				,cache: false
    				,type: "post"
    				/* ,dataType:"json" */
    				,url: "/member/findEmail"
    				/* ,data : $("#formLogin").serialize() */
    				//,data : { "mmEmail" : $("#mmEmail").val(), "mmPw" : $("#mmPw").val(), "autoLogin" : $("#autoLogin").is(":checked")}
    				,data : { "mmName" : $("#mmName").val(), "mmpPhoneNumber" : $("#mmpPhoneNumber").val()}
    				,success: function(response) {
    					if(response.rt == "success") {
    						//if(response.changePwd == "true") {
    						//	location.href = URL_CHANGE_PWD_FORM;
    						//} else {
    							location.href = goUrlLogin;
    					} else {
    						alert("회원없음");
    					}
    				}
    				,error : function(jqXHR, textStatus, errorThrown){
    					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
    				}
    			});
    		});
    </script>
</body>

</html>