<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<jsp:useBean id="CodeServiceImpl" class="com.lifemanlab.shop.modules.code.CodeServiceImpl"/>

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
<form method="post" name="form" autocomplete="off" enctype="multipart/form-data">
<input type="hidden" id="sessSeq" name="sessSeq" value="${sessSeq }">
<input type="hidden" id="mmSeq" name="mmSeq" value="${vo.mmSeq }">
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
						<h4 class="mb-4">계정설정</h4>
					</div>
					<div class="p-4 border border-2 border-light">
						<div class="row g-3">
							<div class="col-8 offset-2">
								<label class="form-label" for="mmNickname">닉네임</label>	
								<div class="input-group">
									<input type="text" class="form-control" id="mmNickname" name="mmNickname" value="<c:out value="${item.mmNickname }"/>" readonly>
								</div>
							</div>
							<div class="col-8 offset-2">
								<label class="form-label" for="mmEmail">이메일</label>
								<div class="input-group">
									<input type="email" class="form-control" id="mmEmail" name="mmEmail" value="<c:out value="${item.mmEmail }"/>" readonly>
								</div>
							</div>
							<div class="col-8 offset-2">
								<label class="form-label" for="mmBod">생년월일</label>	
								<div class="input-group">
									<input type="text" class="form-control" id="mmBod" name="mmBod" value="<c:out value="${item.mmBod }"/>" readonly>
								</div>
							</div>
							<div class="col-8 offset-2">
								<label class="form-label" for="mmpPhoneNumber">핸드폰</label>	
								<div class="input-group">
									<input type="text" class="form-control" id="mmpPhoneNumber" name="mmpPhoneNumber" value="<c:out value="${item.mmpPhoneNumber }"/>" readonly>
								</div>
							</div>
							<div class="col-8 offset-2">
								<label class="form-label" for="genderReg">성별</label>	
								<br>
								<div class="form-check form-check-inline">
								<c:choose>
									<c:when test="${item.mmGender eq 5 }">
									<input type="radio" class="form-check-input" name="mmGender" id="mmGender1" checked disable>
									<label class="form-check-label" for="genderRegM">남자</label>
									</c:when>
									<c:when test="${item.mmGender eq 6 }">
									<input type="radio" class="form-check-input" name="mmGender" id="mmGender2" checked disable>
									<label class="form-check-label" for="genderRegM">여자</label>
									</c:when>
									<c:otherwise>
									<input type="radio" class="form-check-input" name="mmGender" id="mmGender3" checked disable>
									<label class="form-check-label" for="genderRegM">기타</label>
									</c:otherwise>
								</c:choose>
								</div>
							</div>
							<div class="col-3 offset-2">
								<label class="form-label" for="mmZip">주소</label>
								<div class="input-group">
									<input type="text" class="form-control w-25" id="mmZip" name="mmZip" value="<c:out value="${item.mmZip }"/>" readonly>
								</div>
							</div>
							<div class="col-8 offset-2 mt-2">
								<div class="input-group mb-2">
									<input type="text" class="form-control" id="mmAddress1" name="mmAddress1" value="<c:out value="${item.mmAddress1 }"/>" readonly>
								</div>
								<div class="input-group">
									<input type="text" class="form-control" id="mmAddress2" name="mmAddress2" value="<c:out value="${item.mmAddress2 }"/>" readonly>
								</div>
							</div>
							<div class="col-8 offset-2">
								<label class="form-label" for="mmJob">직업</label>
								<div class="input-group">
									<c:set var="listCodeJob" value="${CodeServiceImpl.selectListCachedCode('4')}"/>
									<c:forEach items="${listCodeJob}" var="listJob" varStatus="statusJob">
										<c:if test="${item.mmJob eq listJob.ccSeq}">
										<input type="text" class="form-control"  id="mmJob" name="mmJob" value="${listJob.ccName }" readonly>
										</c:if>
									</c:forEach>
								</div>
							</div>
							<div class="col-8 offset-2">
								<label class="form-label" for="mmInterest">관심분야</label>
								<div class="input-group">
									<c:set var="listCodeInterest" value="${CodeServiceImpl.selectListCachedCode('8')}"/>
									<c:forEach items="${listCodeInterest}" var="listInterest" varStatus="statusInterest">
										<c:if test="${item.mmInterest eq listInterest.ccSeq}">
										<input type="text" class="form-control" id="mmInterest" name="mmInterest" value="${listInterest.ccName }" readonly>
										</c:if>
									</c:forEach>
								</div>
							</div>
							<div class="col-sm-12 text-center">
								<a class="btn btn-primary w-25" href="javascript:goMod(<c:out value="${item.mmSeq }" />)">수정하기</a>	
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
    <script type="text/javascript">
		
		var goUrlModForm = "/member/memberModFormC";
		
		var form = $("form[name=form]");
		var seq = $("input:hidden[name=mmSeq]");
		/* 
		$("#btnModForm").on("click", function(){
	   		$(location).attr("href", goUrlModForm);
		});
		 */
		
		goMod = function(keyValue) {
			 seq.val(keyValue);
			 form.attr("action", goUrlModForm).submit();
		 }
		
		
		/* 
		goMod = function(keyValue) {
			if(keyValue != 0) seq.val(btoa(keyValue));
			seq.val(keyValue);
			form.attr("action", goUrlModForm).submit();
		}
		*/
    </script>
</body>

</html>