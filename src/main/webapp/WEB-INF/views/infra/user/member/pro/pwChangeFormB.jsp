<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>혼자서 할 수 없던 것 | 인생만렙에서 만렙들과 해보세요.</title>
    <%@ include file="../../common/basicCss.jsp" %>
    
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
<form method="get" id="form" name="form" autocomplete="off" enctype="multipart/form-data">
	<input type="hidden" id="sessSeq" name="sessSeq" value="${sessSeq }">   
    <!-- Navbar Start -->
    <%@include file="../../common/nav.jsp"%>
    <!-- Navbar End -->
    
    <!-- Contact Start -->
    <div class="container-fluid overflow-hidden" style="margin: 1rem 0;">
           <div class="row">
           
	           <!-- mypageList Start -->
		       <%@include file="../../common/mypageListB.jsp"%>
		       <!-- mypageList End -->
		       
	           <div class="col-sm-9 p-2">
	               <div class="p-lg-5">
	                   <div class="">
	                       <h4 class="mb-4">비밀번호 변경</h4>
	                   </div>
	                   <div class="p-4 border border-2 border-light" style="height: 700px;">
		                   <div class="row g-3">
		                   	   <div class="col-8 offset-2">
		                       	   <label class="form-label" for="passwordReg">현재 비밀번호</label>
		                           <div class="input-group">
		                               <input type="password" class="form-control" id="passwordReg" placeholder="현재 비밀번호를 입력해 주세요.">
		                           </div>
		                       </div>
		                       <div class="col-8 offset-2">
		                       	   <label class="form-label" for="passwordReg">새로운 비밀번호</label>
		                           <div class="input-group">
		                               <input type="password" class="form-control" id="passwordReg" placeholder="새로운 비밀번호를 입력해 주세요.">
		                           </div>
		                       </div>
		                       <div class="col-8 offset-2">
		                       	   <label class="form-label" for="passwordReg">비밀번호 확인</label>
		                           <div class="input-group">
		                               <input type="password" class="form-control" id="passwordReg" placeholder="새로운 비밀번호를 한번 더 입력해 주세요.">
		                           </div>
		                       </div>
							   <div class="col-sm-12 text-center vertical-align-bottom">
							   	   <button type="button" class="btn btn-primary w-25" onclick="location.href='memberViewFormB.html'">변경완료</button>	
							   </div>
		                   </div>
	                   </div>
	               </div>
	           </div>
           </div>
    </div>
    
    <!-- Footer Start -->
    <%@include file="../../common/footer.jsp"%>
    <!-- Footer End -->

    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-0 back-to-top"><i class="bi bi-arrow-up"></i></a>
</form>
	<%@ include file="../../common/basicJs.jsp" %>
</body>

</html>