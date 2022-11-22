<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>혼자서 할 수 없던 것 | 인생만렙에서 만렙들과 해보세요.</title>
    <%@ include file="../../common/basicSetting.jsp" %>
    
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
    	
    	.saleRegF {
    		border: 2px dashed darkgray;
    		text-align: center;
    		height: 250px;
    	}
    	
    	.saleRegBtn {
    		margin-top: 80px;
    	}
    </style>
</head>

<body>
<form method="post" id="form" name="form" autocomplete="off" enctype="multipart/form-data">
    <input type="hidden" id="sessSeq" name="sessSeq" value="${sessSeq }">
    <input type="hidden" id="itemSeq" name="itemSeq" value="${dto.itemSeq }">
    <input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage }" default="1"/>">
	<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow }"/>">
    <!-- Navbar Start -->
    <%@include file="../../common/nav.jsp"%>
    <!-- Navbar End -->
    
    <!-- Contact Start -->
    <div class="container-fluid overflow-hidden" style="margin: 1rem 0;">
		<div class="row">

		<!-- mypageList Start -->
		<%@include file="../../common/mypageList.jsp"%>
		<!-- mypageList End -->

			<div class="col-sm-9 p-2">
    			<div class="p-lg-5">
			        <div class="">
			            <h4 class="mb-4">판매등록</h4>
			        </div>
        			<div class="saleRegF">
        	   			<div class="saleRegBtn">
         	   				<a class="" id="btnSaleRegForm" type="button">
			         	   	   <i class="fa-solid fa-plus fa-3x"></i>
			         	   	   <p>판매 등록하기</p>
    	   		   			</a>
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
    <script>
    	var goUrlSaleRegForm = "/item/saleRegForm";
    	
    	$("#btnSaleRegForm").on("click", function(){
			$(location).attr("href", goUrlSaleRegForm);
		});
    </script>
    
</body>

</html>