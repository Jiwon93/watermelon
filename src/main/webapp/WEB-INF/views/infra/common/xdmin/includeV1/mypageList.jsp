	<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
	<input type="hidden" id="sessSeq" name="sessSeq">
	
<c:choose>
	<c:when test="${sessSeq eq 26}">
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
				<li class="mypageList pt-3 pb-5"><a class="" type="button" id="btnListPurchaseHistory">구매 내역</a></li>
				<li class="mypageList"><a class="" type="button" id="">문의 내역</a></li>
				<li class="mypageList"><a class="" type="button" id="">만렙 후기</a></li>
				<li class="mypageList"><a class="" type="button" id="">만렙 캐시</a></li>
				<li class="mypageList"><a class="" type="button" id="">쿠폰/이벤트</a></li>
				<li class="mypageList"><a class="" href="javascript:goView(<c:out value="${sessSeq }" />)">계정설정</a></li>
				<li class="mypageList"><a class="" type="button" id="btnListPwChange">비밀번호 변경</a></li>
				<li class="mypageList"><a class="" type="button" id="btnListMemberDrop">계정 탈퇴</a></li>
			</ul>					
		</div>
	</div>
	</c:when>
	<c:otherwise>
	<div class="col-sm-3 p-lg-5">
		<div class="text-center pb-4">
			<img src="/resources/images/men.png" class="border border-3 rounded-circle" style="height: 40%; width: 40%;" alt="">
		</div>
		<div class="text-center pb-4">
			<button class="btn btn-primary" style="height: 30px; width: 60px; font-size: small;">만렙</button>
			<span class="px-3"><c:out value="${item.mmName }"/></span>
		</div>
		<div class="text-center pb-5">
			<button class="btn btn-secondary" style="width: 200px;" type="button">일반으로 전환</button>
		</div>
		<div class="pt-4">
			<h4 class="" style="border-bottom: 2px solid #AB7442;">마이페이지</h4>
			<ul class="mypageC">
				<li class="mypageList pt-3 pb-5"><a class="" id="btnSaleManage">판매 관리</a></li>
				<li class="mypageList"><a class="" type="button" id="btnSaleReg">판매 등록</a></li>
				<li class="mypageList"><a class="" type="button" id="#">수익 관리</a></li>
				<li class="mypageList"><a class="" type="button" id="#">광고 신청</a></li>
				<li class="mypageList"><a class="" type="button" id="#">나의 만렙 등급</a></li>
				<li class="mypageList"><a class="" type="button" id="#">문의 관리</a></li>
				<li class="mypageList"><a class="" href="javascript:goView(<c:out value="${sessSeq }" />)">계정 설정</a></li>
				<li class="mypageList"><a class="" type="button" id="btnListPwChange">비밀번호 변경</a></li>
				<li class="mypageList"><a class="" type="button" id="btnListMemberDrop">계정 탈퇴</a></li>
			</ul>					
		</div>
	</div>
	</c:otherwise>
</c:choose>