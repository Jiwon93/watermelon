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
    
    <link href="/resources/css/user/nav.css" rel="stylesheet">
    
    <!-- Fontawesome Stylesheet -->
    <script src="https://kit.fontawesome.com/059fbc3cf8.js" crossorigin="anonymous"></script>
    <style type="text/css">
    	label {
    		font-weight: bold;
    	}
    	
    	.input-group {
    		border-radius: 5px;
    	}
    	
    	.confirm {
    		background-color: white;
    		border-radius: 8px;
    		height: 25px;
    		width: 60px;
    		font-size: 0.7em;
    		text-align: center;
    		padding: 4px 3px 3px 3px;
    	}
    	
    	.mypageC {
    		list-style: none;
    		margin: 0px;
    		padding: 0px;
    	}
    	
    	.mypageList {
    		height: 45px;
    	}
    </style>
</head>

<body>
<form form method="get" id="form" name="form" autocomplete="off" enctype="multipart/form-data">
	<input type="hidden" name="mmSeq" value="<c:out value="${vo.mmSeq}"/>"/>   
    <!-- Navbar Start -->
    <%@include file="../../common/xdmin/includeV1/nav.jsp"%>
    <!-- Navbar End -->
    
    <!-- Contact Start -->
    <div class="container-fluid overflow-hidden" style="margin: 1rem 0;">
           <div class="row">
	           <div class="col-sm-3 p-lg-5">
	           		<div class="text-center pb-4">
						<img src="/resources/images/men.png" class="border border-3 rounded-circle" style="height: 40%; width: 40%;" alt="">
					</div>
					<div class="text-center pb-4">
						<button class="btn btn-secondary" style="height: 30px; width: 60px; font-size: small;">일반</button>
						<span class="px-3"><c:out value="${item.mmName }"/></span>
					</div>
					<div class="text-center pb-5">
						<button class="btn btn-primary" style="width: 200px;">만렙으로 전환</button>
					</div>
					<div class="pt-4">
						<h4 class="" style="border-bottom: 2px solid #AB7442;">마이페이지</h4>
						<ul class="mypageC">
				            <li class="mypageList pt-3 pb-5"><a class="" href="#">구매 내역</a></li>
				            <li class="mypageList"><a class="" href="#">문의 내역</a></li>
				            <li class="mypageList"><a class="" href="#">만렙 후기</a></li>
				            <li class="mypageList"><a class="" href="#">만렙 캐시</a></li>
				            <li class="mypageList"><a class="" href="#">쿠폰/이벤트</a></li>
				            <li class="mypageList"><a class="" href="#">계정설정</a></li>
				            <li class="mypageList"><a class="" type="button" id="btnPwChange">비밀번호 변경</a></li>
				            <li class="mypageList"><a class="" href="#">계정 탈퇴</a></li>
				        </ul>					
					</div>
	           </div>
	           <div class="col-sm-9 p-2">
	               <div class="p-lg-5">
	                   <div class="">
	                       <h4 class="mb-4">계정설정</h4>
	                   </div>
	                   <div class="p-4 border border-2 border-light">
		                   <div class="row g-3">
		                   	   <div class="col-8 offset-2">
		                       	   <label class="form-label" for="mmNickname">닉네임</label>	
		                           <div class="input-group">
		                               <input type="text" class="form-control" id="mmNickname" value="<c:out value="${item.mmNickname }"/>" readonly>
		                           </div>
		                       </div>
		                       <div class="col-8 offset-2">
		                       	   <label class="form-label" for="mmEmail">이메일</label>
		                           <div class="input-group">
		                               <input type="email" class="form-control" id="mmEmail" value="<c:out value="${item.mmEmail }"/>" readonly>
		                           </div>
		                       </div>
		                       <div class="col-8 offset-2">
		                       	   <label class="form-label" for="mmBod">생년월일</label>	
		                           <div class="input-group">
		                               <input type="text" class="form-control" id="mmBod" value="<c:out value="${item.mmBod }"/>" readonly>
		                           </div>
		                       </div>
		                       <div class="col-8 offset-2">
		                       	   <label class="form-label" for="mmpPhoneNumber">핸드폰</label>	
		                           <div class="input-group">
		                               <input type="text" class="form-control" id="mmpPhoneNumber" value="<c:out value="${item.mmpPhoneNumber }"/>" readonly>
		                           </div>
		                       </div>
		                       <div class="col-8 offset-2">
		                       	   <label class="form-label" for="genderReg">성별</label>	
		                           <br>
		                           <div class="form-check form-check-inline">
		                           	   <c:choose>
		                           	   	   <c:when test="${item.mmGender eq 5 }">
		                               <input type="radio" class="form-check-input" name="mmGender" id="mmGender1" checked readonly>
		                               <label class="form-check-label" for="genderRegM">남자</label>
		                               	   </c:when>
		                               	   <c:when test="${item.mmGender eq 6 }">
	                               	   <input type="radio" class="form-check-input" name="mmGender" id="mmGender2" checked readonly>
		                               <label class="form-check-label" for="genderRegM">여자</label>
		                               	   </c:when>
		                               	   <c:otherwise>
	                               	   <input type="radio" class="form-check-input" name="mmGender" id="mmGender3" checked readonly>
		                               <label class="form-check-label" for="genderRegM">기타</label>
		                               	   </c:otherwise>
	                               	   </c:choose>
		                           </div>
		                       </div>
		                       <div class="col-3 offset-2">
		                       	   <label class="form-label" for="mmZip">주소</label>
		                       	   <div class="input-group">
		                               <input type="text" class="form-control w-25" id="mmZip" value="<c:out value="${item.mmZip }"/>" readonly>
		                           </div>
		                       </div>
		                       <div class="col-8 offset-2 mt-2">
		                           <div class="input-group mb-2">
		                               <input type="text" class="form-control" id="mmAddress1" value="<c:out value="${item.mmAddress1 }"/>" readonly>
		                           </div>
		                           <div class="input-group">
		                               <input type="text" class="form-control" id="mmAddress2" value="<c:out value="${item.mmAddress2 }"/>" readonly>
		                           </div>
		                       </div>
		                       <div class="col-8 offset-2">
		                       	   <label class="form-label" for="mmJob">직업</label>
		                       	   <div class="input-group">
				                       <div class="input-group">
										   <input type="text" class="form-control"  id="mmJob" value="<c:out value="${item.mmJob }"/>" readonly>
								   	   </div>
					   		   	   </div>
				  			   </div>
							   <div class="col-8 offset-2">
		                       	   <label class="form-label" for="mmInterest">관심분야</label>
		                       	   <div class="input-group">
			                           <div class="input-group">
										   <input type="text" class="form-control" id="mmInterest" value="<c:out value="${item.mmInterest }"/>" readonly>
									   </div>
								   </div>
							   </div>
							   <div class="col-sm-12 text-center">
							   	   <button type="button" class="btn btn-primary w-25">수정하기</button>	
							   </div>
		                   </div>
	                   </div>
	               </div>
	           </div>
           </div>
    </div>
    
    <!-- Footer Start -->
    <%@include file="../../common/xdmin/includeV1/footer.jsp"%>
    <!-- Footer End -->

    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-0 back-to-top"><i class="bi bi-arrow-up"></i></a>
</form>
<form name="formVo" id="formVo" method="post">
<!-- *Vo.jsp s -->
<input type="hidden" name="mmSeq" value="<c:out value="${vo.mmSeq}"/>"/> 
<!-- *Vo.jsp e -->
</form>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/resources/template/woody/lib/wow/wow.min.js"></script>
    <script src="/resources/template/woody/lib/easing/easing.min.js"></script>
    <script src="/resources/template/woody/lib/waypoints/waypoints.min.js"></script>
    <script src="/resources/template/woody/lib/counterup/counterup.min.js"></script>
    <script src="/resources/template/woody/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="/resources/template/woody/lib/isotope/isotope.pkgd.min.js"></script>
    <script src="/resources/template/woody/lib/lightbox/js/lightbox.min.js"></script>

    <!-- Template Javascript -->
    <script src="/resources/template/woody/js/main.js"></script>
    
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    
    <script type="text/javascript">
	    var goUrlHome = "/member/memberHome";
		var goUrlMypage = "/member/memberViewC";
		var goUrlMemberMod = "/member/memberModFormC";
		var goUrlSaleManage = "/member/saleManage";
		var goUrlPurchaseHistory = "/member/purchaseHistory";
		var goUrlItemMenu = "/item/itemMenu";
		var goUrlPwChange = "/member/pwChangeFormC"
		
		var seq = $("input:hidden[name=mmSeq]");
		
		var form = $("form[name=form]");
		var formVo = $("form[name=formVo]");
		
		$("#btnHome").on("click", function(){
	   		$(location).attr("href", goUrlHome);
		});
		
		$("#btnMypage").on("click", function(){
	   		$(location).attr("href", goUrlMypage);
		});
		
		$("#btnMemberMod").on("click", function(){
	   		$(location).attr("href", goUrlMemberMod);
		});
		
		$("#btnSaleManage").on("click", function(){
	   		$(location).attr("href", goUrlSaleManage);
		});
		
		$("#btnPurchaseHistory").on("click", function(){
	   		$(location).attr("href", goUrlPurchaseHistory);
		});
		
		$("#btnItemMenu").on("click", function(){
	   		$(location).attr("href", goUrlItemMenu);
		});
		
		$("#btnPwChange").on("click", function(){
	   		$(location).attr("href", goUrlPwChange);
		});
    </script>
</body>

</html>