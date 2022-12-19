<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>혼자서 할 수 없던 것 | 인생만렙에서 만렙들과 해보세요.</title>
    <%@ include file="../common/basicCss.jsp" %>
    
    <!-- page css -->
    <link href="/resources/user/css/mainCss.css" rel="stylesheet">
    
    <style type="text/css">
    	.nav-tabs{
    		font-size: x-large;
    	}
    	
    	.sideMenu{
    		list-style: none;
    		padding: 0px;
    	}
		
		.sideMenu > li{
			padding-top: 20px;
		}
		
		.menuHead {
			background-color: #FAFAFC;
			font-weight: bold;
			height: 40px;
			text-indent: 20px;
			border-right: 1px solid #E0E1E9;
		} 
		
		.menuBody {
			text-indent: 20px;
			border: 1px solid #E0E1E9;
			font-size: 13px;
			word-spacing: 20px;
		}
    </style>
</head>

<body>
<form method="post" id="form" name="form" autocomplete="off">
    <input type="hidden" id="sessSeq" name="sessSeq" value="${sessSeq }">
    <input type="hidden" name="itemSeq" value="${dto.itemSeq }">
    <input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage }" default="1"/>">
	<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow }"/>">
    <!-- Navbar Start -->
    <%@include file="../common/nav.jsp"%>
    <!-- Navbar End -->
    <!-- Carousel Start -->
    <div class="container-fluid p-0 pb-5 mt-5">
        <div class="owl-carousel header-carousel position-relative">
            <div class="owl-carousel-item position-relative">
                <img class="img-fluid" src="/resources/images/slide2.jpg" alt="">
                <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center" style="background: rgba(53, 53, 53, .7);">
                	<div class="container">
                    	<div class="row justify-content-center">
                        	<div class="col-12 col-lg-8 text-center">
                        		<i class="fa-solid fa-computer fa-4x" style="color: white;"></i>
								<br><label class="text-white" for="developDesign"><b>개발/디자인</b></label>
							</div>
						</div>
					</div>
				</div>
            </div>
        </div>
    </div>
    <!-- Carousel End -->
    
    <!-- Service Start -->
    <div class="container-fluid py-4">
	    <div class="container">
	    	<div class="row">
	    		<div class="col-2">
					<ul class="nav nav-tabs">
					  	<li class="nav-item">
					    	<a class="nav-link active" data-toggle="tab" href="#developM">개발</a>
					  	</li>
					  	<li class="nav-item">
					    	<a class="nav-link" data-toggle="tab" href="#designM">디자인</a>
					  	</li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane fade show active" id="developM">
							<ul class="sideMenu">
								<li>
									<a class="active" href="#">웹</a>
								</li>
								<li>
									<a class="" href="#">모바일 앱</a>
								</li>
								<li>
									<a class="" href="#">프로그램</a>
								</li>
								<li>
									<a class="" href="#">쇼핑몰 커머스</a>
								</li>
								<li>
									<a class="" href="#">데이터</a>
								</li>
								<li>
									<a class="" href="#">보안</a>
								</li>
							</ul>
						</div>
						<div class="tab-pane fade" id="designM">
							<ul>
								<li>
									<a class="" href="#">로고 브랜딩</a>
								</li>
								<li>
									<a class="" href="#">상세 이벤트 페이지</a>
								</li>
								<li>
									<a class="" href="#">명함 인쇄 홍보물</a>
								</li>
								<li>
									<a class="" href="#">웹 모바일 디자인</a>
								</li>
								<li>
									<a class="" href="#">일러스트 캐리커쳐</a>
								</li>
								<li>
									<a class="" href="#">웹툰 캐릭터 이모티콘</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-10">
					<div class="row p-1">
			            <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
							<ol class="breadcrumb">
						    	<li class="breadcrumb-item"><a href="#">홈</a></li>
						    	<li class="breadcrumb-item"><a href="#">개발/디자인</a></li>
						    	<li class="breadcrumb-item active" aria-current="page">웹</li>
							</ol>
						</nav>
					</div>
					<div class="row ps-3">
						<table class="border border-1">
							<tr>
								<td class="menuHead">기술 수준</td>
								<td class="menuBody">
									<a class="menuOption" href="#">초급</a> 
									<a class="menuOption" href="#">중급</a> 
									<a class="menuOption" href="#">고급</a>
								</td>
							</tr>
							<tr>
								<td class="menuHead">팀 규모</td>
								<td class="menuBody">
									<a class="menuOption" href="#">1인</a> 
									<a class="menuOption" href="#">5인미만</a> 
									<a class="menuOption" href="#">30인미만</a> 
									<a class="menuOption" href="#">30인이상</a>
								</td>
							</tr>
							<tr>
								<td class="menuHead">주말 여부</td>
								<td class="menuBody">
									<a class="menuOption" href="#">가능</a> 
									<a class="menuOption" href="#">불가능</a>
								</td>
							</tr>
						</table>
					</div>
					<div class="row p-1 mt-3 mb-5">
					<c:choose>
						<c:when test="${fn:length(productList) eq 0 }">
							<p>준비된 상품이 없습니다.</p>
						</c:when>
						<c:otherwise>
							<c:forEach items="${productList}" var="productList" varStatus="statusProductList">
		           		<div class="col-3 mt-3 service-item">
		               		<div class="overflow-hidden">
		               	    	<!-- <img class="menuDD" src="/resources/images/main.jpg"> -->
	           	   	   	   	    <img class="menuDD" src="<c:out value="${productList.path }"/><c:out value="${productList.uuidName }"/>">
		           			</div>
		           			<div class="pt-2">
			           			<div>
			           				<p class="mainName mb-0"><c:out value="${productList.mmNickname }" /></p>
		           					<c:choose>
										<c:when test="${mmSeq eq null }">
										</c:when>
										<c:otherwise>
										<c:choose>
										<c:when test="${like.mmSeq eq null }">
										<div id="likeBtnATag" class="likeBtnDiv" name="likeBtnATag"><a id="likeBtn" type="button"><i class="fa-regular fa-heart"></i>  ${likeCount }</a></div>
										</c:when>
										<c:otherwise>
										<div id="likeBtnATag" class="likeBtnDiv" name="likedBtnATag"><a id="likedBtn" type="button"><i class="fa-solid fa-heart" style="color: #E95721;"></i> ${likeCount }</a></div>
										</c:otherwise>
										</c:choose>
										</c:otherwise>
									</c:choose>
		           				</div>
		           				<p class="mainTitle"><a href="javascript:goView(<c:out value="${productList.itemSeq }" />)"><c:out value="${productList.itTitle }" /></a></p>
		           				<p class="mainPay mb-0" id="itemPrice">
		           					<i class="fa-solid fa-receipt">&nbsp;</i><fmt:formatNumber type="number" maxFractionDigits="3" value="${productList.itemPrice }" />원
	           					</p>
	           					<div class="mainGrade">
				       				<i class="fa-solid fa-star" style="color: #FFD400;"></i>
				       				<span style="color: #9A9BA7;">5.0ㅣ32개의 평가</span>
			       				</div>
		           			</div>
		           		</div>
	           				</c:forEach>
						</c:otherwise>
					</c:choose>
		            </div>
		            <!-- pagination s -->
				    <%@include file="../common/pagination.jsp"%>
				    <!-- pagination e -->
				</div>
			</div>
	    </div>
    </div>
    <!-- Service End -->

    <!-- Footer Start -->
    <%@include file="../common/footer.jsp"%>
    <!-- Footer End -->

    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-0 back-to-top"><i class="bi bi-arrow-up"></i></a>
</form>
    <%@ include file="../common/basicJs.jsp" %>
    
    <script>
    	var goUrlItemMenu = "/item/itemMenu";
    	var goUrlList = "/item/itemMenu";
    	var goUrlView = "/item/itemMenuView";
    	
    	var form = $("form[name=form]");
    	
    	var seq = $("input:hidden[name=itemSeq]");
    	
    	$("#btnItemMenu").on("click", function(){
	   		$(location).attr("href", goUrlItemMenu);
		});
    	
    	goList = function(thisPage) {
			$("input:hidden[name=thisPage]").val(thisPage);
			form.attr("action", goUrlList).submit();
		}
    	
    	goView = function(keyValue) {
	    	seq.val(keyValue);
			form.attr("action", goUrlView).submit();
		}
    	
    	function unlike(){
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				,url: "/board/boardUnLike"
				,data : { "bdSeq" : $("#bdSeq").val(), "infrMmSeq" : $("#infrMmSeq").val() }
				,success: function(response) {
					if(response.rt == "success") {
						var str = "";
						$(".likeBtnDiv").empty();
		   				str += '<a id="likeBtn" type="button" onclick="like();">';
		   				str += '<i class="fa-regular fa-heart"></i> ' + response.likedCount;
		   				str += '</a>';	   		
		   				document.getElementById("likeBtnATag").innerHTML = str;
					} else {
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
		};
		
		function like(){
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				,url: "/item/itemLike"
				,data : { "itemSeq" : $("#itemSeq").val(), "mmSeq" : $("#mmSeq").val() }
				,success: function(response) {
					if(response.rt == "success") {
						var str = "";
						$(".likeBtnDiv").empty();
		   				str += '<a id="likedBtn" name="likedBtn" type="button" onclick="unlike();">';
		   				str += '<i class="fa-solid fa-heart" style="color: #E95721;"></i> ' + response.likedCount;
		   				str += '</a>';   
		   				document.getElementById("likeBtnATag").innerHTML = str;
					} else{
						
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
		}
		
		$("#likedBtn").on("click", function(){
			unlike();
		});
		
		
		$("#likeBtn").on("click", function(){
			like();
		});
    </script>
</body>

</html>