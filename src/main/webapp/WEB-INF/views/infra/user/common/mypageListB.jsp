<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>	
<div class="col-sm-3 p-lg-5">
	<div class="text-center pb-4">
	<c:set var="type" value="1"/>	
      	<c:set var="name" value="uploadImgProfile"/>
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
					<c:set var="GetNy" value="0"/>
					<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
						<c:if test="${listUploaded.type eq type }">
				        	<input type="hidden" id="<c:out value="${name }"/>DeleteSeq" name="<c:out value="${name }"/>DeleteSeq" value="<c:out value="${listUploaded.seq }"/>"/>
				        	<input type="hidden" id="<c:out value="${name }"/>DeletePathFile" name="<c:out value="${name }"/>DeletePathFile" value="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>"/>  
							<img id="<c:out value="${name }"/>Preview" src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" class="rounded-circle mx-auto d-block" width="100" height="100">
							<c:set var="GetNy" value="1"/>		
						</c:if>
					</c:forEach>
					<c:if test="${GetNy eq 0 }">
						<img id="<c:out value="${name }"/>Preview" src="/resources/images/men.png" class="rounded-circle mx-auto d-block" width="100" height="100">
					</c:if>
				</c:otherwise>
			</c:choose>
		</c:otherwise>
	</c:choose>
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
			<!-- 
			<li class="mypageList"><a class="" type="button" id="#">수익 관리</a></li>
			<li class="mypageList"><a class="" type="button" id="#">광고 신청</a></li>
			<li class="mypageList"><a class="" type="button" id="#">나의 만렙 등급</a></li>
			<li class="mypageList"><a class="" type="button" id="#">문의 관리</a></li>
			 -->
			<li class="mypageList"><a class="" href="javascript:goListViewB(<c:out value="${sessSeq }" />)">계정 설정</a></li>
			<li class="mypageList"><a class="" type="button" id="btnListPwChange">비밀번호 변경</a></li>
			<li class="mypageList"><a class="" type="button" id="btnListMemberDrop">계정 탈퇴</a></li>
		</ul>					
	</div>
</div>

<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>
	var goUrlListPwChange = "/member/pwChangeFormB"
	var goUrlListSaleManage = "/item/saleManage"
	var goUrlListSaleReg = "/item/saleReg"
	var goUrlListMypageB = "/member/memberViewB";
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

	goListViewB = function(keyValue) {
		/* if(keyValue != 0) seq.val(btoa(keyValue)); */
		seq.val(keyValue);
		form.attr("action", goUrlListMypageB).submit();
	}
	
</script>