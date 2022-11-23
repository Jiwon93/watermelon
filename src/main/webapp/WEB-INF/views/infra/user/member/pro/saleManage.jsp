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
        <div class="row">
           
           <!-- mypageList Start -->
	       <%@include file="../../common/mypageListB.jsp"%>
	       <!-- mypageList End -->
		       
	           <div class="col-sm-9 p-2">
	               <div class="p-lg-5">
	                   <div class="">
	                       <h4 class="mb-4">판매관리</h4>
	                   </div>
	                   <div class="row g-3 mb-3">
	                   	   <div class="col-3">
	                       	   <div class="input-group">
		                           <select class="form-select" id="serviceReg">
									   <option value="s0" selected>서비스를 선택해주세요.</option>
								   </select>
							   </div>
						   </div>
						   <div class="col-2">
							   <div class="input-group">
		                           <select class="form-select" id="orderReg">
									   <option value="s0" selected>주문번호</option>
								   </select>
							   </div>
						   </div>
						   <div class="col-2 form-inline">
						   		<div class="input-group">
						        <input class="form-control" type="search" placeholder="검색어">
						        <a class="btn btn-outline-primary" type="button"><i class="fa-solid fa-magnifying-glass"></i></a>
					       		</div>
					       </div>
					       <div class="col offset-1">
					       	   <a href="#" class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-expanded="false">주문날짜순</a>
						       <ul class="dropdown-menu">
						            <li><a class="dropdown-item" href="#">가격순</a></li>
						       </ul>
					       </div>
					   </div>
	                   <div class="p-4 pb-1 border border-2 border-light">
		                   <div class="row g-3">
		                   <c:choose>
		                   	   <c:when test="${fn:length(saleItem) eq 0 }">
		                   	   	   <p>등록된 상품이 없습니다.</p>
	                   	   	   </c:when>
	                   	   	   <c:otherwise>
	                   	   	   	   <c:forEach items="${saleItem }" var="saleItem" varStatus="status">
		                   	   <table class="m-4">
		                   	   	   <tr>
		                   	   	   	   <td rowspan="6" style="width: 270px;">
		                   	   	   	   	   <img src="<c:out value="${saleItem.path }"/><c:out value="${saleItem.uuidName }"/>" style="width: 220px; height: 150px;">
		                   	   	   	   </td>
		                   	   	   	   <td><span class="btn btn-secondary btn-sm" style="height: 30px; width: 80px;">주문완료</span></td>
		                   	   	   	   <td></td>
		                   	   	   </tr>
		                   	   	   <tr>
		                   	   	   	   <!-- <td></td> -->
		                   	   	   	   <td><b><c:out value="${saleItem.itTitle }" /></b></td>
		                   	   	   	   <td><b><fmt:formatNumber type="number" maxFractionDigits="3" value="${saleItem.itemPrice }" />원</b></td>
		                   	   	   </tr>
		                   	   	   <tr>
		                   	   	   	   <!-- <td></td> -->
		                   	   	   	   <td>작업완료일 : <c:out value="${saleItem.regDateTime }" /></td>
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
    
    <!-- Footer Start -->
    <%@include file="../../common/footer.jsp"%>
    <!-- Footer End -->

    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-0 back-to-top"><i class="bi bi-arrow-up"></i></a>
</form>
	<%@ include file="../../common/basicJs.jsp" %>
	
    <script type="text/javascript">
	    var goUrlList = "/item/saleManage";
	    
	    goList = function(thisPage) {
			$("input:hidden[name=thisPage]").val(thisPage);
			form.attr("action", goUrlList).submit();
		}
    </script>
    
</body>

</html>