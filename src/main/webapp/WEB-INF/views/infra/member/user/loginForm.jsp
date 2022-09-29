<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>혼자서 할 수 없던 것 | 인생만렙에서 만렙들과 해보세요.</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="/resources/images/logo.PNG" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Roboto:wght@500;700;900&display=swap" rel="stylesheet"> 

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="/resources/template/woody/lib/animate/animate.min.css" rel="stylesheet">
    <link href="/resources/template/woody/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="/resources/template/woody/lib/lightbox/css/lightbox.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/resources/template/woody/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="/resources/template/woody/css/style.css" rel="stylesheet">
    
    <!-- kakao login -->
    <script src="https://t1.kakaocdn.net/kakao_js_sdk/2.0.0/kakao.min.js" integrity="sha384-PFHeU/4gvSH8kpvhrigAPfZGBDPs372JceJq3jAXce11bVA6rMvGWzvP4fMQuBGL" crossorigin="anonymous"></script>
 	<script>Kakao.init('17e90af3c57fa367793d1f57799dd4c9');</script>
 	
	<style type="text/css">
		.easyLogin {
			width: 70px;
			height: 70px;
			border-radius: 70%;
			overflow: hidden;
		}
		
		.btn {
			border-radius: 5px;
			height: 45px;
		}
		
	</style>

</head>

<body>
<form method="get" id="form" name="form" autocomplete="off" enctype="multipart/form-data">
    <!-- Navbar Start -->
    <%@include file="../../common/xdmin/includeV1/nav.jsp"%>
    <!-- Navbar End -->

    <!-- Contact Start -->
    <div class="container-fluid bg-light overflow-hidden" style="margin: 8rem 0;">
        <div class="container contract">
           <div class="col-6 contact-text py-5 offset-3">
               <div class="p-lg-5">
                   <div class="section-title text-center">
                       <h1 class="display-6 mb-4">로그인</h1>
                   </div>
                   <div class="row g-3">
                       <div class="col-8 offset-2">
                           <div class="form-floating">
                               <input type="email" class="form-control" id="mmEmail" name="mmEmail">
                               <label for="newEmail">이메일</label>
                           </div>
                       </div>
                       <div class="col-8 offset-2">
                           <div class="form-floating">
                               <input type="password" class="form-control" id="mmPw" name="mmPw">
                               <label for="newPw">비밀번호</label>
                           </div>
                       </div>
                       <div class="col-8 offset-2">
                           <button class="btn btn-primary w-100" type="button" id="btnLogin">로그인</button>
                       </div>
                       <div class="col-md-3 offset-2">
                           <div class="form-check">
                               <input type="checkbox" class="form-check-input" id="loginSave">
                               <label class="form-check-label" for="loginSave">로그인 유지</label>
                           </div>
                       </div>
                       <div class="col">
                           <div class="form-floating">
                           	   <a class="" href="idPwFindForm.html">아이디/비밀번호 찾기</a>
                           </div>
                       </div>
                   </div>
                   <br>
                   <div class="row g-3">
                    <div class="col-8 offset-2 text-center">
                     <h4 class="mb-4">간편 로그인</h4>
                 </div>
                </div>
                <div class="row g-3 justify-content-center">
                 <div class="easyLoginBox col-2">
                 	   <a href="#"><img src="/resources/images/naver.png" alt="" class="easyLogin"></a>			
                 </div>
                 <div class="easyLoginBox col-2">
               	    <a id="kakao-login-btn" href="https://kauth.kakao.com/oauth/authorize?client_id=17e90af3c57fa367793d1f57799dd4c9&redirect_uri=http://localhost:8080/member/kakaoLogin&response_type=code">
						<img src="/resources/images/kakao.png" alt="" class="easyLogin">
					</a>
					
							
                 </div>
                 <p id="token-result" style="display: none;"></p>
                 <div class="easyLoginBox col-2">
                 	   <a href="#"><img src="/resources/images/facebook.png" alt="" class="easyLogin"></a>			
                 </div>
                 <div class="easyLoginBox col-2">
                 	   <a href="#"><img src="/resources/images/google.png" alt="" class="easyLogin"></a>			
                 </div>
                   </div>
                   <br><br>
                   <div class="row g-3">
                    <div class="text-center">
                     <span class="mb-4">아직 회원이 아니시라면?</span>
                 </div>
                 <div class="col-8 offset-2">
                           <button class="btn btn-secondary w-100 py-2" type="button" id="btnReg">회원가입</button>
                       </div>
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
                        <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                        Designed By <a class="border-bottom" href="https://htmlcodex.com">HTML Codex</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End -->
</form>
    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/resources/template/woody/lib/wow/wow.min.js"></script>
    <script src="/resources/template/woody/lib/easing/easing.min.js"></script>
    <script src="/resources/template/woody/lib/waypoints/waypoints.min.js"></script>
    <script src="/resources/template/woody/lib/counterup/counterup.min.js"></script>
    <script src="/resources/template/woody/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="/resources/template/woody/js/main.js"></script>
    
    <!-- JavaScript & jQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    
    <script type="text/javascript">
	    function loginWithKakao() {
	    /* 	
	      Kakao.Auth.authorize({
	        redirectUri: 'https://developers.kakao.com/tool/demo/oauth',
	      });
	       */
	       
	    }
	
	    // 아래는 데모를 위한 UI 코드입니다.
	    displayToken()
	    function displayToken() {
	      var token = getCookie('authorize-access-token');
	
	      if(token) {
	        Kakao.Auth.setAccessToken(token);
	        Kakao.Auth.getStatusInfo()
	          .then(function(res) {
	            if (res.status === 'connected') {
	              document.getElementById('token-result').innerText
	                = 'login success, token: ' + Kakao.Auth.getAccessToken();
	            }
	          })
	          .catch(function(err) {
	            Kakao.Auth.setAccessToken(null);
	          });
	      }
	    }
	
	    function getCookie(name) {
	      var parts = document.cookie.split(name + '=');
	      if (parts.length === 2) { return parts[1].split(';')[0]; }
	    }
	    
	    var goUrlLogin = "/member/memberHome";
	 // 암호화
		$("#btnLogin").on("click", function(){
		//if(validation() == false) return false;
		
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "/member/loginProc"
				/* ,data : $("#formLogin").serialize() */
				//,data : { "mmEmail" : $("#mmEmail").val(), "mmPw" : $("#mmPw").val(), "autoLogin" : $("#autoLogin").is(":checked")}
				,data : { "mmEmail" : $("#mmEmail").val(), "mmPw" : $("#mmPw").val()}
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