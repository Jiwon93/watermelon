<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<jsp:useBean id="CodeServiceImpl" class="com.lifemanlab.shop.modules.code.CodeServiceImpl" />
	
<!DOCTYPE html>
<html lang="ko">
 
<head>
	<meta charset="utf-8">
	<title>혼자서 할 수 없던 것 | 인생만렙에서 만렙들과 해보세요.</title>
	<%@ include file="../../common/basicCss.jsp" %>
	
	<link href="/resources/css/user/upload.css" rel="stylesheet">
	
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
		<input type="hidden" id="mmSeq" name="mmSeq" value="${vo.mmSeq }">
		<!-- Navbar Start -->
		<%@include file="../../common/nav.jsp"%>
		<!-- Navbar End -->

		<!-- Contact Start -->
		<div class="container-fluid overflow-hidden" style="margin: 1rem 0;">
			<div class="row">

				<!-- mypageList Start -->
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
					<input type="hidden" id="<c:out value="${name }"/>Type" name="<c:out value="${name }"/>Type" value="<c:out value="${type }"/>"/>
					<input type="hidden" id="<c:out value="${name }"/>MaxNumber" name="<c:out value="${name }"/>MaxNumber" value="0"/>
					<label for="<c:out value="${name }"/>" class="form-label input-file-button"><b>+</b></label>
						<input class="form-control form-control-sm" id="<c:out value="${name }"/>" name="<c:out value="${name }"/>" type="file" multiple="multiple" style="display: none;" onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 1, 1, 0, 0, 3);">
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
							<li class="mypageList"><a class="" href="javascript:goListView(<c:out value="${sessSeq }" />)">계정설정</a></li>
							<li class="mypageList"><a class="" type="button" id="btnListPwChange">비밀번호 변경</a></li>
							<li class="mypageList"><a class="" type="button" id="btnListMemberDrop">계정 탈퇴</a></li>
						</ul>					
					</div>
				</div>
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
										<input type="text" class="form-control" id="mmNickname"
											name="mmNickname"
											value="<c:out value="${item.mmNickname }"/>"
											placeholder="닉네임을 입력해 주세요.">
									</div>
								</div>
								<div class="col-8 offset-2">
									<label class="form-label" for="mmName">이름</label>
									<div class="input-group">
										<input type="text" class="form-control" id="mmName"
											name="mmName" value="<c:out value="${item.mmName }"/>"
											placeholder="닉네임을 입력해 주세요.">
									</div>
								</div>
								<div class="col-8 offset-2">
									<label class="form-label" for="mmEmail">이메일</label>
									<button class="confirm btn btn-primary"
										style="height: 30px; color: #AB7442;">인증</button>
									<div class="input-group">
										<input type="email" class="form-control" id="mmEmail"
											name="mmEmail" value="<c:out value="${item.mmEmail }"/>">
									</div>
								</div>
								<div class="col-8 offset-2">
									<label class="form-label" for="mmBod">생년월일</label>
									<div class="input-group">
										<input type="text" class="form-control" id="mmBod"
											name="mmBod" value="<c:out value="${item.mmBod }"/>">
									</div>
								</div>
								<div class="col-8 offset-2">
									<label class="form-label" for="mmpPhoneNumber">핸드폰</label>
									<button class="confirm btn btn-primary"
										style="height: 30px; color: #AB7442;">인증</button>
									<div class="input-group">
										<input type="text" class="form-control" id="mmpPhoneNumber"
											name="mmpPhoneNumber"
											value="<c:out value="${item.mmpPhoneNumber }"/>">
									</div>
								</div>
								<div class="col-8 offset-2">
									<label class="form-label" for="mmGender">성별</label> <br>
									<div class="form-check form-check-inline">
										<c:choose>
											<c:when test="${item.mmGender eq 5 }">
												<input type="radio" class="form-check-input" name="mmGender"
													id="mmGender1" value="5" disable
													<c:if test="${item.mmGender eq 5 }">checked</c:if>>
												<label class="form-check-label" for="genderRegM">남자</label>
											</c:when>
											<c:when test="${item.mmGender eq 6 }">
												<input type="radio" class="form-check-input" name="mmGender"
													id="mmGender2" value="6" disable
													<c:if test="${item.mmGender eq 6 }">checked</c:if>>
												<label class="form-check-label" for="genderRegM">여자</label>
											</c:when>
											<c:otherwise>
												<input type="radio" class="form-check-input" name="mmGender"
													id="mmGender3" value="7" disable
													<c:if test="${item.mmGender eq 7 }">checked</c:if>>
												<label class="form-check-label" for="genderRegM">기타</label>
											</c:otherwise>
										</c:choose>
									</div>
								</div>
								<div class="col-3 offset-2">
									<label class="form-label" for="addressReg">주소</label>
									<div class="input-group">
										<button class="btn btn-primary" type="submit"
											onclick="mmrfPostcodeBtn()">주소검색</button>
										<input type="text" class="form-control w-25" id="mmrfPostcode"
											name="mmZip" value="<c:out value="${item.mmZip }"/>">
									</div>
								</div>
								<div class="col-8 offset-2 mt-2">
									<div class="input-group mb-2">
										<input type="text" class="form-control" id="mmrfRoadAddress"
											name="mmAddress1"
											value="<c:out value="${item.mmAddress1 }"/>">
									</div>
									<span id="guide" style="color: #999; display: none"></span>
									<div class="input-group">
										<input type="text" class="form-control" id="mmrfDetailAddress"
											name="mmAddress2"
											value="<c:out value="${item.mmAddress2 }"/>">
									</div>
								</div>
								<div class="col-8 offset-2">
									<label class="form-label" for="mmJob">직업</label>
									<div class="input-group">
										<select class="form-select" id="mmJob" name="mmJob">
											<option>직업선택</option>
											<c:forEach begin="12" end="18" items="${ccNameList }" var="ccNameList" varStatus="status">
											<option value="${ccNameList.ccSeq }" <c:if test="${item.mmJob eq ccNameList.ccSeq }">selected</c:if>><c:out value="${ccNameList.ccName }" /></option>
											</c:forEach>
										</select>
									</div>
								</div>
								<div class="col-8 offset-2">
									<label class="form-label" for="mmInterest">관심선택(중복 선택 가능)</label>
									<div class="input-group">
										<select class="form-select" id="mmInterest" name="mmInterest">
											<option>관심분야선택</option>
											<c:forEach begin="29" end="38" items="${ccNameList }" var="ccNameList" varStatus="status">
											<option value="${ccNameList.ccSeq }" <c:if test="${item.mmInterest eq ccNameList.ccSeq }">selected</c:if>><c:out value="${ccNameList.ccName }" /></option>
											</c:forEach>
										</select>
									</div>
								</div>
								<div class="col-sm-12 text-center">
									<button class="btn btn-primary w-25" type="button" id="btnSave">수정완료</button>
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
	<%-- 
	<form name="formVo" id="formVo" method="post">
		<!-- *Vo.jsp s -->
		<input type="hidden" name="mmSeq" value="<c:out value="${vo.mmSeq }" />">
		<!-- *Vo.jsp e -->
	</form>
 	--%>
 	
	<!-- kakaoMap API -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=17e90af3c57fa367793d1f57799dd4c9&libraries=services,clusterer,drawing"></script>

	<!-- upload -->
	<script src="/resources/user/js/commonUser.js"></script>
	
	<script>
		var goUrlMemberMod = "/member/memberMod";
		var goUrlListPwChange = "/member/pwChangeFormC"
		var goUrlListMemberDrop = "/member/memberDropFormC"
		var goUrlListPurchaseHistory = "/item/purchaseHistory"
		var goUrlListMypage = "/member/memberViewC";
		var goUrlPwUpdt = "/member/pwChange";

		$("#btnSave").on("click", function() {
			form.attr("action", goUrlMemberMod).submit();
		});

		$("#btnListPwChange").on("click", function(){
			$(location).attr("href", goUrlListPwChange);
		});

		$("#btnListMemberDrop").on("click", function(){
			$(location).attr("href", goUrlListMemberDrop);
		});
		
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

		//카카오 지도 API
		//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
		function mmrfPostcodeBtn() {
			new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var roadAddr = data.roadAddress; // 도로명 주소 변수
						var extraRoadAddr = ''; // 참고 항목 변수

						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if (data.bname !== ''
								&& /[동|로|가]$/g.test(data.bname)) {
							extraRoadAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if (data.buildingName !== ''
								&& data.apartment === 'Y') {
							extraRoadAddr += (extraRoadAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if (extraRoadAddr !== '') {
							extraRoadAddr = ' (' + extraRoadAddr + ')';
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('mmrfPostcode').value = data.zonecode;
						document.getElementById("mmrfRoadAddress").value = roadAddr;

						var guideTextBox = document.getElementById("guide");
						// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
						if (data.autoRoadAddress) {
							var expRoadAddr = data.autoRoadAddress
									+ extraRoadAddr;
							guideTextBox.innerHTML = '(예상 도로명 주소 : '
									+ expRoadAddr + ')';
							guideTextBox.style.display = 'block';

						} else {
							guideTextBox.innerHTML = '';
							guideTextBox.style.display = 'none';
						}
					}
				}
			).open();
		}

		$("#btnAddressClear").on("click", function() {
			$("#mmrfPostcode").val('');
			$("#mmrfRoadAddress").val('');
			/* $("#mmJibunAddress").val(''); */
			$("#mmrfDetailAddress").val('');
			/* $("#mmExtraAddress").val(''); */
		});
		
		//업로드
		upload = function(objName, seq, allowedMaxTotalFileNumber, allowedExtdiv, allowedEachFileSize, allowedTotalFileSize, uiType) {
	
		//		objName 과 seq 는 jsp 내에서 유일 하여야 함.
		//		memberProfileImage: 1
		//		memberImage: 2
		//		memberFile : 3
		
		//		uiType: 1 => 이미지형
		//		uiType: 2 => 파일형
		//		uiType: 3 => 프로필형

			var files = $("#" + objName +"")[0].files;
			var filePreview = $("#" + objName +"Preview");
			var numbering = [];
			var maxNumber = 0;
			
			if(uiType == 1) {
				var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > div > img").length;
				var tagIds = document.querySelectorAll("#" + objName + "Preview > div");
				
				for(var i=0; i<tagIds.length; i++){
					var tagId = tagIds[i].getAttribute("id").split("_");
					numbering.push(tagId[2]);
				}
				
				if(uploadedFilesCount > 0){
					numbering.sort();
					maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
				}
			} else if(uiType == 2){
				var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > li").length;
				var tagIds = document.querySelectorAll("#" + objName + "Preview > li");
	
				for(var i=0; i<tagIds.length; i++){
					var tagId = tagIds[i].getAttribute("id").split("_");
					numbering.push(tagId[2]);
				}
				
				if(uploadedFilesCount > 0){
					numbering.sort();
					maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
				}
			} else {
				// by pass
			}
			
			$("#" + objName + "MaxNumber").val(maxNumber);
	
			var totalFileSize = 0;
			var filesCount = files.length;
			var filesArray = [];
			
			allowedMaxTotalFileNumber = allowedMaxTotalFileNumber == 0 ? MAX_TOTAL_FILE_NUMBER : allowedMaxTotalFileNumber;
			allowedEachFileSize = allowedEachFileSize == 0 ? MAX_EACH_FILE_SIZE : allowedEachFileSize;
			allowedTotalFileSize = allowedTotalFileSize == 0 ? MAX_TOTAL_FILE_SIZE : allowedTotalFileSize;
			
			if(checkUploadedTotalFileNumber(files, allowedMaxTotalFileNumber, filesCount, uploadedFilesCount) == false) { return false; }
			
			for (var i=0; i<filesCount; i++) {
				if(checkUploadedExt(files[i].name, seq, allowedExtdiv) == false) { return false; }
				if(checkUploadedEachFileSize(files[i], seq, allowedEachFileSize) == false) { return false; }
	
				totalFileSize += files[i].size;
				
				filesArray.push(files[i]);
			}
	
			if(checkUploadedTotalFileSize(seq, totalFileSize, allowedTotalFileSize) == false) { return false; }
			
			if (uiType == 1) {
				for (var i=0; i<filesArray.length; i++) {
					var file = filesArray[i];
	
					var picReader = new FileReader();
				    picReader.addEventListener("load", addEventListenerCustom (objName, seq, i, file, filePreview, maxNumber));
				    picReader.readAsDataURL(file);
				}			
			} else if(uiType == 2) {
				for (var i = 0 ; i < filesCount ; i++) {
					addUploadLi(objName, seq, i, $("#" + objName +"")[0].files[i].name, filePreview, maxNumber);
				}
			} else if (uiType == 3) {
				var fileReader = new FileReader();
				fileReader.onload = function () {
					$("#uploadImgProfilePreview").attr("src", fileReader.result);		/* #-> */
				}	
				fileReader.readAsDataURL($("#" + objName +"")[0].files[0]);
			} else {
				return false;
			}
			return false;
		}
	
	
		addEventListenerCustom = function (objName, type, i, file, filePreview, maxNumber) { 
			return function(event) {
				var imageFile = event.target;
				var sort = parseInt(maxNumber) + i;
	
				var divImage = "";
				divImage += '<div id="imgDiv_'+type+'_'+ sort +'" style="display: inline-block; height: 95px;">';
				divImage += '	<img src="'+ imageFile.result +'" class="rounded" width= "85px" height="85px">';
				divImage += '	<div style="position: relative; top:-85px; left:5px"><span style="color: red; cursor:pointer;" onClick="delImgDiv(0,' + type +','+ sort +')">X</span></div>';
				divImage += '</div> ';
				
				filePreview.append(divImage);
		    };
		}
	
	
		delImgDiv = function(objName, type, sort, deleteSeq, pathFile) {
			
			$("#imgDiv_"+type+"_"+sort).remove();
			
			var objDeleteSeq = $('input[name='+ objName +'DeleteSeq]');
			var objDeletePathFile = $('input[name='+ objName +'DeletePathFile]');
	
			if(objDeleteSeq.val() == "") {
				objDeleteSeq.val(deleteSeq);
			} else {
				objDeleteSeq.val(objDeleteSeq.val() + "," + deleteSeq);
			}
			
			if(objDeletePathFile.val() == "") {
				objDeletePathFile.val(pathFile);
			} else {
				objDeletePathFile.val(objDeletePathFile.val() + "," + pathFile);
			}
		}
	
	
		addUploadLi = function (objName, type, i, name, filePreview, maxNumber){
	
			var sort = parseInt(maxNumber) + i;
			
			var li ="";
			li += '<input type="hidden" id="'+ objName +'Process_'+type+'_'+ sort +'" name="'+ objName +'Process" value="1">';
			li += '<input type="hidden" id="'+ objName +'Sort_'+type+'_'+ sort +'" name="'+ objName +'Sort" value="'+ sort +'">';
			li += '<li id="li_'+type+'_'+sort+'" class="list-group-item d-flex justify-content-between align-items-center">';
			li += name;
			li +='<span class="badge bg-danger rounded-pill" onClick="delLi(0,'+ type +','+ sort +')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>';
			li +='</li>';
			
			filePreview.append(li);
		}
	
	
		delLi = function(objName, type, sort, deleteSeq, pathFile) {
			
			$("#li_"+type+"_"+sort).remove();
	
			var objDeleteSeq = $('input[name='+ objName +'DeleteSeq]');
			var objDeletePathFile = $('input[name='+ objName +'DeletePathFile]');
	
			if(objDeleteSeq.val() == "") {
				objDeleteSeq.val(deleteSeq);
			} else {
				objDeleteSeq.val(objDeleteSeq.val() + "," + deleteSeq);
			}
			
			if(objDeletePathFile.val() == "") {
				objDeletePathFile.val(pathFile);
			} else {
				objDeletePathFile.val(objDeletePathFile.val() + "," + pathFile);
			}
		}
	
		openViewer = function (type, sort) {
			var str = '<c:set var="tmp" value="'+ type +'"/>';
			$("#modalImgViewer").append(str);
			$("#modalImgViewer").modal("show");
		}
		
	</script>

</body>

</html>