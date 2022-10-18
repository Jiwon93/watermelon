	<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
	<%-- <input type="hidden" id="sessSeq" name="sessSeq" value="${sessSeq }"> --%>
		
	<c:choose>
		<c:when test="${sessRank eq 21}">
		<div class="col-sm-3 p-lg-5">
			<div class="text-center pb-4">
			<c:choose>
				<c:when test="${fn:length(listUploaded) eq 0 }">
					<img id="imgProfile" src="/resources/images/men.png" class="rounded-circle mx-auto d-block" width="100" height="100">
				</c:when>
				<c:otherwise>
					<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
						<c:if test="${listUploaded.type eq '1' }">
							<img id="imgProfile" src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" class="rounded-circle mx-auto d-block" width="100" height="100">
						</c:if>
					</c:forEach>
				</c:otherwise>
			</c:choose>
				<label for="mmUploadedProfileImage" class="form-label input-file-button"><b>+</b></label>
 				<input class="form-control form-control-sm" id="mmUploadedProfileImage" name="mmUploadedProfileImage" type="file" multiple="multiple" style="display: none;" onChange="upload('mmUploadedProfileImage', 0, 1, 1, 0, 0, 3);">
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
					<li class="mypageList"><a class="" type="button" id="">문의 내역</a></li>
					<li class="mypageList"><a class="" type="button" id="">만렙 후기</a></li>
					<li class="mypageList"><a class="" type="button" id="">만렙 캐시</a></li>
					<li class="mypageList"><a class="" type="button" id="">쿠폰/이벤트</a></li>
					<li class="mypageList"><a class="" href="javascript:goListView(<c:out value="${sessSeq }" />)">계정설정</a></li>
					<li class="mypageList"><a class="" type="button" id="btnListPwChange">비밀번호 변경</a></li>
					<li class="mypageList"><a class="" type="button" id="btnListMemberDrop">계정 탈퇴</a></li>
				</ul>					
			</div>
		</div>
		</c:when>
		<c:otherwise>
		<div class="col-sm-3 p-lg-5">
			<div class="text-center pb-4">
			<c:choose>
				<c:when test="${fn:length(listUploaded) eq 0 }">
					<img id="imgProfile" src="/resources/images/men.png" class="rounded-circle mx-auto d-block" width="100" height="100">
				</c:when>
				<c:otherwise>
					<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
						<c:if test="${listUploaded.type eq '1' }">
							<img id="imgProfile" src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" class="rounded-circle mx-auto d-block" width="100" height="100">
						</c:if>
					</c:forEach>
				</c:otherwise>
			</c:choose>
				<label for="mmUploadedProfileImage" class="form-label input-file-button"><b>+</b></label>
 				<input class="form-control form-control-sm" id="mmUploadedProfileImage" name="mmUploadedProfileImage" type="file" multiple="multiple" style="display: none;" onChange="upload('mmUploadedProfileImage', 0, 1, 1, 0, 0, 3);">
			</div>
			<div class="text-center pb-4">
				<button class="btn btn-primary" style="height: 30px; width: 60px; font-size: small;">만렙</button>
				<span class="px-3"><c:out value="${sessName }"/></span>
			</div>
			<div class="text-center pb-5">
				<button class="btn btn-secondary" style="width: 200px;" type="button">일반으로 전환</button>
			</div>
			<div class="pt-4">
				<h4 class="" style="border-bottom: 2px solid #AB7442;">마이페이지</h4>
				<ul class="mypageC">
					<li class="mypageList pt-3 pb-5"><a class="" type="button" id="btnListSaleManage">판매 관리</a></li>
					<li class="mypageList"><a class="" type="button" id="btnListSaleReg">판매 등록</a></li>
					<li class="mypageList"><a class="" type="button" id="#">수익 관리</a></li>
					<li class="mypageList"><a class="" type="button" id="#">광고 신청</a></li>
					<li class="mypageList"><a class="" type="button" id="#">나의 만렙 등급</a></li>
					<li class="mypageList"><a class="" type="button" id="#">문의 관리</a></li>
					<li class="mypageList"><a class="" href="javascript:goListView(<c:out value="${sessSeq }" />)">계정 설정</a></li>
					<li class="mypageList"><a class="" type="button" id="btnListPwChange">비밀번호 변경</a></li>
					<li class="mypageList"><a class="" type="button" id="btnListMemberDrop">계정 탈퇴</a></li>
				</ul>					
			</div>
		</div>
		</c:otherwise>
	</c:choose>
	
	<!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	
	<script>
		var goUrlListPwChange = "/member/pwChangeFormC"
		var goUrlListMemberDrop = "/member/memberDropFormC"
		var goUrlListPurchaseHistory = "/member/purchaseHistory"
		var goUrlListSaleManage = "/member/saleManage"
		var goUrlListSaleReg = "/member/saleReg"
		var goUrlListMypage = "/member/memberViewC";
		var goUrlPwUpdt = "/member/pwChange";


		$("#btnListPwChange").on("click", function(){
			$(location).attr("href", goUrlListPwChange);
		});

		$("#btnListMemberDrop").on("click", function(){
			$(location).attr("href", goUrlListMemberDrop);
		});
		
		$("#btnListMypage").on("click", function(){
	   		$(location).attr("href", goUrlListMypage);
		});

		$("#btnListPurchaseHistory").on("click", function(){
			$(location).attr("href", goUrlListPurchaseHistory);
		});

		$("#btnListSaleManage").on("click", function(){
			$(location).attr("href", goUrlListSaleManage);
		});

		$("#btnListSaleReg").on("click", function(){
			$(location).attr("href", goUrlListSaleReg);
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