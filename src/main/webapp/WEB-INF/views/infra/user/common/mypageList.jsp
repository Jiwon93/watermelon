<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>	
<div class="col-sm-3 p-lg-5">
	<div class="text-center pb-4">
	<c:set var="type" value="1"/>		<!-- #-> -->
   	<c:set var="name" value="uploadImgProfile"/>		<!-- #-> -->
	<c:choose>
		<c:when test="${mmSeq eq 0 }">
			<img id="<c:out value="${name }"/>Preview" src="/resources/images/men.png" class="rounded-circle mx-auto d-block" width="100" height="100">
		</c:when>
		<c:otherwise>
			<c:choose>
				<c:when test="${fn:length(listUploaded) eq 0 }">
					<img id="<c:out value="${name }"/>Preview" src="/resources/images/men.png" class="rounded-circle mx-auto d-block" width="100" height="100">
				</c:when>
				<c:otherwise>
					<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
						<c:if test="${listUploaded.type eq type }">
							<img id="<c:out value="${name }"/>Preview" src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" class="rounded-circle mx-auto d-block" width="100" height="100">
						</c:if>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</c:otherwise>
	</c:choose>
	</div>
	<div class="text-center pb-4">
		<button class="btn btn-secondary" style="height: 30px; width: 60px; font-size: small;">일반</button>
		<span class="px-3"><c:out value="${sessName }"/></span>
	</div>
	<div class="text-center pb-5">
		<button class="btn btn-primary" style="width: 200px;">만렙으로 전환</button>
	</div>
	<div class="pt-4">
		<h4 class="" style="border-bottom: 2px solid #AB7442;">마이페이지</h4>
		<ul class="mypageC">
			<li class="mypageList pt-3 pb-5"><a class="" type="button" id="btnListPurchaseHistory">구매 내역</a></li>
			<!-- 
			<li class="mypageList"><a class="" type="button" id="">문의 내역</a></li>
			<li class="mypageList"><a class="" type="button" id="">만렙 후기</a></li>
			<li class="mypageList"><a class="" type="button" id="">만렙 캐시</a></li>
			<li class="mypageList"><a class="" type="button" id="">쿠폰/이벤트</a></li>
			 -->
			<li class="mypageList"><a class="" href="javascript:goListView(<c:out value="${sessSeq }" />)">계정설정</a></li>
			<li class="mypageList"><a class="" type="button" id="btnListPwChange">비밀번호 변경</a></li>
			<li class="mypageList"><a class="" type="button" id="btnListMemberDrop">계정 탈퇴</a></li>
		</ul>					
	</div>
</div>
	
	
	<!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script>
		var goUrlListPwChange = "/member/pwChangeFormC"
		var goUrlListMemberDrop = "/member/memberDropFormC"
		var goUrlListPurchaseHistory = "/item/purchaseHistory"
		var goUrlListMypage = "/member/memberViewC";
		var goUrlPwUpdt = "/member/pwChange";


		$("#btnListPwChange").on("click", function(){
			$(location).attr("href", goUrlListPwChange);
		});

		$("#btnListMemberDrop").on("click", function(){
			$(location).attr("href", goUrlListMemberDrop);
		});
		/*
		$("#btnListMypage").on("click", function(){
	   		$(location).attr("href", goUrlListMypage);
		});
		
		$("#btnListMypageB").on("click", function(){
	   		$(location).attr("href", goUrlListMypageB);
		});
		*/
		$("#btnListPurchaseHistory").on("click", function(){
			$(location).attr("href", goUrlListPurchaseHistory);
		});

		$("#btnPwUpdt").on("click",function(){
			form.attr("action", goUrlPwUpdt).submit();
		});

		var form = $("form[name=form]");
				
		var seq = $("input:hidden[name=sessSeq]");

		goListView = function(keyValue) {
			/* if(keyValue != 0) seq.val(btoa(keyValue)); */
			seq.val(keyValue);
			form.attr("action", goUrlListMypage).submit();
		}
		
	</script>