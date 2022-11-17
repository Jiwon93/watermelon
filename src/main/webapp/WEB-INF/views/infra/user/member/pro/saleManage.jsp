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
    
    <link href="/resources/user/css/nav.css" rel="stylesheet">
    
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
	       <%@include file="../../common/mypageList.jsp"%>
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
		                   	   <c:when test="${fn:length(item) eq 0 }">
		                   	   	   <p>등록된 상품이 없습니다.</p>
	                   	   	   </c:when>
	                   	   	   <c:otherwise>
	                   	   	   	   <c:forEach items="${item }" var="item" varStatus="status">
		                   	   <table class="m-4">
		                   	   	   <tr>
		                   	   	   	   <td rowspan="6" style="width: 270px;"><img alt="" src="/resources/images/main.jpg" style="width: 220px; height: 150px;"></td>
		                   	   	   	   <td><span class="btn btn-secondary btn-sm" style="height: 30px; width: 80px;">주문완료</span></td>
		                   	   	   	   <td></td>
		                   	   	   </tr>
		                   	   	   <tr>
		                   	   	   	   <!-- <td></td> -->
		                   	   	   	   <td><b><c:out value="${item.itTitle }" /></b></td>
		                   	   	   	   <td><b><c:out value="${item.itemPrice }" />원</b></td>
		                   	   	   </tr>
		                   	   	   <tr>
		                   	   	   	   <!-- <td></td> -->
		                   	   	   	   <td>작업완료일 : 22.07.21 10:21</td>
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
	    var goUrlList = "/item/saleManage";
	    
	    goList = function(thisPage) {
			$("input:hidden[name=thisPage]").val(thisPage);
			form.attr("action", goUrlList).submit();
		}
    </script>
    
</body>

</html>