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
<form method="post" id="form" name="form" autocomplete="off" enctype="multipart/form-data"> 
    <input type="hidden" id="sessSeq" name="sessSeq" value="${sessSeq }">
    <input type="hidden" name="itemSeq" value="${dto.itemSeq }">
    <input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage }" default="1"/>">
	<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow }"/>">
    <!-- Navbar Start -->
    <%@include file="../../common/nav.jsp"%>
    <!-- Navbar End -->
    
    <!-- Contact Start -->
    <div class="container-fluid overflow-hidden" style="margin: 1rem 0;">
        <div class="container">
	        <div class="row">
	           
	           <!-- mypageList Start -->
		       <%@include file="../../common/mypageList.jsp"%>
		       <!-- mypageList End -->
			       
		           <div class="col-sm-9 p-2">
		               <div class="p-lg-5">
		                   <div class="">
		                       <h4 class="mb-4">구매내역</h4>
		                   </div>
		                   <div class="row g-3 mb-3">
		                   	   <div class="col-3">
		                       	   <div class="input-group">
		                       	   	   <input type="date" class="form-control">
								   </div>
							   </div>
							   <div class="col-3">
								   <div class="input-group">
			                           <input type="date" class="form-control">
								   </div>
							   </div>
							   <div class="col-5 form-inline offset-1">
							   		<div class="input-group">
							        <input class="form-control" type="search" placeholder="검색어">
							        <a class="btn btn-outline-primary" type="button"><i class="fa-solid fa-magnifying-glass"></i></a>
						       		</div>
						       </div>
						   </div>
		                   <div class="p-4 pb-1 border border-2 border-light">
			                   <div class="row g-3">
			                   <c:choose>
			                   	   <c:when test="${fn:length(item) eq 0 }">
			                   	   	   <p>구매한 상품이 없습니다.</p>
		                   	   	   </c:when>
		                   	   	   <c:otherwise>
		                   	   	   	   <c:forEach items="${item }" var="item" varStatus="status">
			                   	   <table class="m-4">
			                   	   	   <tr style="height: 40px;">
			                   	   	   	   <td rowspan="3" style="width: 270px;"><img alt="" src="/resources/images/main.jpg" style="width: 220px; height: 150px;"></td>
			                   	   	   	   <td>
			                   	   	   	   	   <span class="btn btn-secondary btn-sm" style="height: 30px; width: 80px;">주문완료</span>
	                   	   	   	   	   	   	   <span class="px-5">#2036673</span>
	                   	   	   	   	   	   </td>
			                   	   	   	   <td></td>
			                   	   	   </tr>
			                   	   	   <tr>
			                   	   	   	   <!-- <td></td> -->
			                   	   	   	   <td><b><c:out value="${item.itTitle }" /></b></td>
			                   	   	   	   <td><b><c:out value="${item.itemPrice }" /></b></td>
			                   	   	   </tr>
			                   	   	   <tr>
			                   	   	   	   <!-- <td></td> -->
			                   	   	   	   <td>작업완료일 : 22.07.21 10:21</td>
			                   	   	   	   <td><a class="btn btn-outline-primary btn-sm" href="#" style="height: 30px;">거래명세서</a></td>
			                   	   	   </tr>
			                   	   	   <tr>
			                   	   	   	   <td></td>
			                   	   	   	   <td class="" style="text-align: left;">
			                   	   	   	   	   <img src="/resources/images/men.png" class="border border-1 rounded-circle" style="height: 30px; width: 30px;" alt="">
			                   	   	   	   	   <span class="px-2 text-secondary"><c:out value="${item.mmNickname }" /></span>
			                   	   	   	   </td>
			                   	   	   	   <td></td>
			                   	   	   </tr>
			                   	   </table>
			                   	   <hr>
			                   	   	   </c:forEach>
		                   	   	   </c:otherwise>
	                   	   	   </c:choose>
			                   </div>
		                   <!-- pagination s -->
						   <%@include file="../../common/pagination.jsp"%>
						   <!-- pagination e -->
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
    <script type="text/javascript">
	    var goUrlList = "/member/purchaseHistory";
	    
	    goList = function(thisPage) {
			$("input:hidden[name=thisPage]").val(thisPage);
			form.attr("action", goUrlList).submit();
		}
    </script>
    
</body>

</html>