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
		<div class="container">
			<div class="row">
	
				<!-- mypageList Start -->
				<%@include file="../../common/mypageListB.jsp"%>
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
								<div class="col-8 offset-2">
									<label class="form-label">전문분야 및 상세분야</label>
									<div class="input-group">
										<c:set var="listCodeSpecial" value="${CodeServiceImpl.selectListCachedCode('9')}"/>
										<c:forEach items="${listCodeSpecial}" var="listSpecial" varStatus="statusSpecial">
											<c:if test="${item.mmSpecial eq listSpecial.ccSeq}">
											<input type="text" class="form-control" id="mmSpecial" name="mmSpecial" value="${listSpecial.ccName }" readonly>
											</c:if>
										</c:forEach>
									</div>
									<div class="input-group">
										<c:set var="listCodeDetail" value="${CodeServiceImpl.selectListCachedCode('10')}"/>
										<c:forEach items="${listCodeDetail}" var="listDetail" varStatus="statusDatail">
											<c:if test="${item.mmDetail eq listDetail.ccSeq}">
											<input type="text" class="form-control" id="mmDetail" name="mmDetail" value="${listDetail.ccName }" readonly>
											</c:if>
										</c:forEach>
									</div>
								</div>
								<div class="col-8 offset-2">
									<label class="form-label" for="mmTechnique">보유기술</label>
									<div class="input-group">
										<c:set var="listCodeTechnique" value="${CodeServiceImpl.selectListCachedCode('11')}"/>
										<c:forEach items="${listCodeTechnique}" var="listTechnique" varStatus="statusTechnique">
											<c:if test="${item.mmTechnique eq listTechnique.ccSeq}">
											<input type="text" class="form-control" id="mmTechnique" name="mmTechnique" value="${listTechnique.ccName }" readonly>
											</c:if>
										</c:forEach>
									</div>
								</div>
								<div class="col-8 offset-2">
									<label class="form-label" for="mmCareer">경력</label>
									<div class="input-group">
										<c:set var="listCodeCareer" value="${CodeServiceImpl.selectListCachedCode('7')}"/>
										<c:forEach items="${listCodeCareer}" var="listCareer" varStatus="statusCareer">
											<c:if test="${item.mmCareer eq listCareer.ccSeq}">
											<input type="text" class="form-control" id="mmCareer" name="mmCareer" value="${listCareer.ccName }" readonly>
											</c:if>
										</c:forEach>
									</div>
								</div>
								<div class="col-3 offset-2">
									<label class="form-label" for="mmWishPay">희망급여</label>
									<div class="input-group">
										<input type="text" class="form-control w-25" id="mmWishPay" name="mmWishPay" value="<c:out value="${item.mmWishPay }"/>" readonly>
									</div>
								</div>
								<div class="col-8 offset-2">
									<label class="form-label" for="mmWorkTime">희망근로시간</label>
									<div class="input-group">
										<c:set var="listCodeWorkTime" value="${CodeServiceImpl.selectListCachedCode('13')}"/>
										<c:forEach items="${listCodeWorkTime}" var="listWorkTime" varStatus="statusWorkTime">
											<c:if test="${item.mmWorkTime eq listWorkTime.ccSeq}">
											<input type="text" class="form-control" id="mmWorkTime" name="mmWorkTime" value="${listWorkTime.ccName }" readonly>
											</c:if>
										</c:forEach>
									</div>
								</div>
								<div class="col-8 offset-2">
	                       	  <label class="form-label" for="mmIntroduce">자기소개</label>
	                       	  <div class="input-group">
	                       	  	   <textarea class="form-control" id="mmIntroduce" name="mmIntroduce" style="height: 150px;" readonly><c:out value="${item.mmIntroduce }" /></textarea>
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
	</div>
    
	<!-- Footer Start -->
	<%@include file="../../common/footer.jsp"%>
	<!-- Footer End -->

	<!-- Back to Top -->
	<a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-0 back-to-top"><i class="bi bi-arrow-up"></i></a>
</form>
    <%@ include file="../../common/basicJs.jsp" %>
    
    <script type="text/javascript">
		
		var goUrlModForm = "/member/memberModFormB";
		
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