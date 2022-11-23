<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>혼자서 할 수 없던 것 | 인생만렙에서 만렙들과 해보세요.</title>
    
    <%@ include file="../../common/basicCss.jsp" %>
    
    <!-- page css -->
    <link href="/resources/user/css/upload.css" rel="stylesheet">
    <link href="/resources/user/css/saleRegForm.css" rel="stylesheet">
    
    <style type="text/css">
    	input[type=text]{
    		border-radius: 5px;
    	}
    	.form-select{
    		border-radius: 5px;
    	}
    	.form-control{
    		border-radius: 5px;
    	}
    	
    	#itemPriceDetail{
    		height: 150px;
    	}
    </style>
    
</head>
<body>
<form method="post" id="form" name="form" autocomplete="off" enctype="multipart/form-data">
    <input type="hidden" id="sessSeq" name="sessSeq" value="${sessSeq }">
    <input type="hidden" id="mmSeq" name="mmSeq" value="<c:out value="${dto.mmSeq }" />">
    <input type="hidden" id="ccSeq" name="ccSeq" value="${ccSeq }">
    <input type="hidden" id="itemSeq" name="itemSeq" value="${itemSeq }">
    <input type="hidden" id="itopSeq" name="itopSeq" value="${itopSeq }">
    <!-- Navbar Start -->
    <nav class="container sticky-top p-0">
    	<div class="row">
	    	<div class="col-6 p-4">
		        <a type="button" id="btnHome">
		            <img src="/resources/images/logo.PNG" alt="" style="width: 60px; height: 60px;">
		        </a>
	        </div>
	        <div class="col-6 text-end p-4">
	            <div>
	            	<button class="btn btn-primary" type="button" id="btnReg">제출하기</button>
	            </div>
	        </div>
        </div>
    </nav>
    <!-- Navbar End -->
    
    <!-- Contact Start -->
	<div class="container">
		<div class="saleRegF">
			<div class="row m-2 mt-4">
				<h5>1. 기본정보</h5>
			</div>
			<div class="saleRegMenu">
				<div class="row">
					<div class="col-2 pe-0">
						<p>제목</p>
					</div>
					<div class="col">
						<table class="m-2">
							<tr>
								<td>
									<input class="form-control" type="text" style="width: 1000px;" id="itTitle" name="itTitle" value="<c:out value="${dto.itTitle }" />" placeholder="서비스를 잘 드러낼 수 있는 제목을 입력해주세요">
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<div class="saleRegMenu">
				<div class="row">
					<div class="col-2 pe-0">
						<p>카테고리</p>
					</div>
					<div class="col">
						<table class="m-2">
							<tr>
								<th>상위 카테고리</th>
								<td>
									<select class="form-select" id="category1" name="category1">
										<option>선택해주세요</option>
										<c:forEach begin="96" end="105" items="${ccNameList }" var="ccNameList" varStatus="status">
										<option value="${ccNameList.ccSeq }"><c:out value="${ccNameList.ccName }"/></option>
										</c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<th>하위 카테고리</th>
								<td>
									<select class="form-select" id="category2" name="category2">
										<option>선택해주세요</option>
										<c:forEach begin="106" end="117" items="${ccNameList }" var="ccNameList" varStatus="status">
										<option value="${ccNameList.ccSeq }"><c:out value="${ccNameList.ccName }"/></option>
										</c:forEach>
									</select>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<div class="saleRegMenu">
				<div class="row">
					<div class="col-2 pe-0">
						<p>서비스 타입</p>
					</div>
					<div class="col">
						<table class="m-2">
							<tr>
								<th>기술 수준</th>
								<td>
									<select class="form-select" id="skillLevel" name="skillLevel">
										<option>선택해주세요</option>
										<c:forEach begin="118" end="121" items="${ccNameList }" var="ccNameList" varStatus="status">
										<option value="${ccNameList.ccSeq }"><c:out value="${ccNameList.ccName }"/></option>
										</c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<th>팀 규모</th>
								<td>
									<select class="form-select" id="teamSize" name="teamSize">
										<option>선택해주세요</option>
										<c:forEach begin="122" end="126" items="${ccNameList }" var="ccNameList" varStatus="status">
										<option value="${ccNameList.ccSeq }"><c:out value="${ccNameList.ccName }"/></option>
										</c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<th>상주 여부</th>
								<td>
									<select class="form-select" id="residency" name="residency">
										<option>선택해주세요</option>
										<c:forEach begin="127" end="129" items="${ccNameList }" var="ccNameList" varStatus="status">
										<option value="${ccNameList.ccSeq }"><c:out value="${ccNameList.ccName }"/></option>
										</c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<th>서비스 카테고리</th>
								<td>
									<select class="form-select" id="serviceCategory" name="serviceCategory">
										<option>선택해주세요</option>
										<c:forEach begin="130" end="135" items="${ccNameList }" var="ccNameList" varStatus="status">
										<option value="${ccNameList.ccSeq }"><c:out value="${ccNameList.ccName }"/></option>
										</c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<th>개발 언어</th>
								<td>
									<select class="form-select" id="developLanguage" name="developLanguage">
										<option>선택해주세요</option>
										<c:forEach begin="136" end="146" items="${ccNameList }" var="ccNameList" varStatus="status">
										<option value="${ccNameList.ccSeq }"><c:out value="${ccNameList.ccName }"/></option>
										</c:forEach>
									</select>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<div class="row m-2 mt-5 mb-3">
				<h5>2. 가격설정</h5>
			</div>
			<div class="saleRegMenu">
				<div class="row">
					<div class="col-2 pe-0">
						<p>가격정보</p>
					</div>
					<div class="col">
						<table class="m-2">
							<tr>
								<th>제목</th>
								<td>
									<input class="form-control" type="text" style="width: 840px;" placeholder="ex. 00 웹사이트" name="itemPriceTitle" value="<c:out value="${dto.itemPriceTitle }"/>">
								</td>
							</tr>
							<tr>
								<th>설명</th>
								<td>
									<textarea class="form-control" placeholder="-메인페이지 시안 1개 제공, 공지사항, FAQ 페이지, SNS로그인 연동" id="itemPriceDetail" name="itemPriceDetail" resize="none;"><c:out value="${dto.itemPriceDetail }"/></textarea>
								</td>
							</tr>
							<tr>
								<th>금액(VAT 포함)</th>
								<td>
									<input class="form-control" type="text" placeholder="단위: 원" name="itemPrice" value="<c:out value="${dto.itemPrice }"/>">
								</td>
							</tr>
							<tr>
								<th>작업 기간</th>
								<td>
									<input class="form-control" type="text" style="width: 840px;" placeholder="ex. 00일" name="workPeriod" value="<c:out value="${dto.workPeriod }"/>">
								</td>
							</tr>
							<tr>
								<th>수정 횟수</th>
								<td>
									<input class="form-control" type="text" style="width: 840px;" placeholder="ex. 00회" name="numberOfMod" value="<c:out value="${dto.numberOfMod }"/>">
								</td>
							</tr>
							<tr>
								<th>반응형 웹</th>
								<td class="checkOption">
									<input type="checkbox" class="form-check-input" name="responsiveWeb" value="1">
								</td>
							</tr>
							<tr>
								<th>콘텐츠 업로드</th>
								<td class="checkOption">
									<input type="checkbox" class="form-check-input" name="contentUpload" value="1">
								</td>
							</tr>
							<tr>
								<th>소스 코드 제공</th>
								<td class="checkOption">
									<input type="checkbox" class="form-check-input" name="sourceCode" value="1">
								</td>
							</tr>
							<tr>
								<th>맞춤 디자인 제공</th>
								<td class="checkOption">
									<input type="checkbox" class="form-check-input" name="design" value="1">
								</td>
							</tr>
							<tr>
								<th>기능 추가</th>
								<td class="checkOption">
									<input type="checkbox" class="form-check-input" name="functionPlus" value="1">
								</td>
							</tr>
							<tr>
								<th>페이지 수</th>
								<td>
									<input class="form-control" type="text" placeholder="입력해주세요" name="numberOfPage" value="<c:out value="${dto.numberOfPage }" />">
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<div class="saleRegMenu">
				<div class="row">
					<div class="col-2 pe-0">
						<p>추가옵션</p>
					</div>
					<div class="col">
						<table class="m-2">
							<tr>
								<th>빠른 작업</th>
								<td class="checkOption" style="width: 840px;">
									<input type="checkbox" class="form-check-input" name="quickWork" value="1">
								</td>
							</tr>
							<tr>
								<th>추가 수정</th>
								<td class="checkOption">
									<input type="checkbox" class="form-check-input" name="plusMod" value="1">
								</td>
							</tr>
							<tr>
								<th>추가 페이지</th>
								<td class="checkOption">
									<input type="checkbox" class="form-check-input" name="pagePlus" value="1">
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<div class="row m-2 mt-5 mb-3">
				<h5>3. 서비스 설명</h5>
			</div>
			<div class="saleRegMenu">
				<div class="row">
					<div class="col-2 pe-0">
						<p>상품 설명</p>
					</div>
					<div class="col">
						<table class="m-2">
							<tr>
								<th>서비스 설명</th>
								<td>
									<textarea class="form-control" style="width: 840px;" name="itServiceDetail" rows="15" placeholder=""><c:out value="${dto.itServiceDetail }"/></textarea>
								</td>
							</tr>
							<tr>
								<th>서비스 제공 절차</th>
								<td>
									<textarea class="form-control" rows="15" name="provisionProcedure" placeholder=""><c:out value="${dto.provisionProcedure }"/></textarea>
								</td>
							</tr>
							<tr>
								<th>의뢰인 준비사항</th>
								<td>
									<textarea class="form-control" rows="15" name="clientPrepare" placeholder=""><c:out value="${dto.clientPrepare }"/></textarea>
								</td>
							</tr>
							<tr>
								<th>취소 및 환불 규정</th> <!-- 모달로 띄우기 -->
								<td>
									<button class="btn btn-outline-primary w-100" type="button" data-bs-toggle="modal" data-bs-target="#exampleModal">[IT 프로그래밍>웹] 취소 및 환불 규정 보기</button>
									<!-- Modal -->
									<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<h1 class="modal-title fs-5" id="exampleModalLabel">취소 및 환불 규정보기</h1>
												</div>
												<div class="modal-body">
													가. 기본 환불 규정
													<br>1. 전문가와 의뢰인의 상호 협의하에 청약 철회 및 환불이 가능합니다.
													<br>2. 작업이 완료된 이후 또는 자료, 프로그램 등 서비스가 제공된 이후에는 환불이 불가합니다.
													<br>( 소비자보호법 17조 2항의 5조. 용역 또는 「문화산업진흥 기본법」 제2조 제5호의 디지털콘텐츠의 제공이 개시된 경우에 해당)
													<br>
													<br>나. 전문가 책임 사유
													<br>1. 전문가의 귀책사유로 당초 약정했던 서비스 미이행 혹은 보편적인 관점에서 심각하게 잘못 이행한 경우 결제 금액 전체 환불이 가능합니다.
													<br>
													<br>다. 의뢰인 책임 사유
													<br>1. 서비스 진행 도중 의뢰인의 귀책사유로 인해 환불을 요청할 경우, 사용 금액을 아래와 같이 계산 후 총 금액의 10%를 공제하여 환불합니다.
													<br>총 작업량의 1/3 경과 전 : 이미 납부한 요금의 2/3해당액
													<br>총 작업량의 1/2 경과 전 : 이미 납부한 요금의 1/2해당액
													<br>총 작업량의 1/2 경과 후 : 반환하지 않음
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-secondary w-100" data-bs-dismiss="modal">확인</button>
												</div>
											</div>
										</div>
									</div>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<div class="row m-2 mt-5 mb-3">
				<h5>4. 이미지</h5>
			</div>
			<div class="saleRegMenu">
				<div class="row">
					<div class="col-2 pe-0">
						<p>이미지 설정</p>
					</div>
					<div class="col">
						<div class="row mt-sm-4">
					        <div class="col-sm-6 mt-3 mb-3">
					        	<c:set var="type" value="2"/>		<!-- #-> -->
					        	<c:set var="name" value="uploadImg"/>		<!-- #-> -->
					        	<input type="hidden" id="<c:out value="${name }"/>Type" name="<c:out value="${name }"/>Type" value="<c:out value="${type }"/>"/>
					        	<input type="hidden" id="<c:out value="${name }"/>MaxNumber" name="<c:out value="${name }"/>MaxNumber" value="0"/>
					        	<input type="hidden" id="<c:out value="${name }"/>DeleteSeq" name="<c:out value="${name }"/>DeleteSeq"/>
					        	<input type="hidden" id="<c:out value="${name }"/>DeletePathFile" name="<c:out value="${name }"/>DeletePathFile"/>
					            <label for="uploadImg" class="form-label input-file-button">이미지첨부</label>
					 			<input class="form-control form-control-sm" id="<c:out value="${name }"/>" name="<c:out value="${name }"/>" type="file" multiple="multiple" style="display: none;" onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 0, 1, 0, 0, 1);">
								<div id="<c:out value="${name }"/>Preview" class="addScroll">
									<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
										<c:if test="${listUploaded.type eq type }">
											<div id="imgDiv_<c:out value="${type }"/>_<c:out value="${listUploaded.sort }"/>" style="display: inline-block; height: 95px;">
												<img src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" class="rounded" width= "85px" height="85px" style="cursor:pointer;" onClick="openViewer(<c:out value="${listUploaded.type }"/>, <c:out value="${listUploaded. sort }"/>);">
												<div style="position: relative; top:-85px; left:5px"><span style="color: red; cursor:pointer;" onClick="delImgDiv('<c:out value="${name }"/>', <c:out value="${type }"/>,<c:out value="${listUploaded.sort }"/>, <c:out value="${listUploaded.seq }"/>, '<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>')">X</span></div>
											</div>
										</c:if>
									</c:forEach>
								</div>
					        </div>
					        <div class="col-sm-6 mt-3 mb-3">
					        	<c:set var="type" value="3"/>		<!-- #-> -->
					        	<c:set var="name" value="uploadFile"/>		<!-- #-> -->
					        	<input type="hidden" id="<c:out value="${name }"/>Type" name="<c:out value="${name }"/>Type" value="<c:out value="${type }"/>"/>
					        	<input type="hidden" id="<c:out value="${name }"/>MaxNumber" name="<c:out value="${name }"/>MaxNumber" value="0"/>
					        	<input type="hidden" id="<c:out value="${name }"/>DeleteSeq" name="<c:out value="${name }"/>DeleteSeq"/>
					        	<input type="hidden" id="<c:out value="${name }"/>DeletePathFile" name="<c:out value="${name }"/>DeletePathFile"/>   	
								<label for="uploadFile" class="form-label input-file-button">파일첨부</label>
								<input class="form-control form-control-sm" id="<c:out value="${name }"/>" name="<c:out value="${name }"/>" type="file" multiple="multiple" style="display: none;" onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 0, 2, 0, 0, 2);" >
								<div class="addScroll">
									<ul id="<c:out value="${name }"/>Preview" class="list-group">
										<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
											<c:if test="${listUploaded.type eq type }">
												<li id="li_<c:out value="${type }"/>_<c:out value="${listUploaded.sort }"/>" class="list-group-item d-flex justify-content-between align-items-center">
												<a href="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" download="<c:out value="${listUploaded.originalName }"/>" class="text-decoration-none"><c:out value="${listUploaded.originalName }"/></a>
												<span class="badge bg-danger rounded-pill" onClick="delLi('<c:out value="${name }"/>', <c:out value="${type }"/>,<c:out value="${listUploaded.sort }"/>, <c:out value="${listUploaded.seq }"/>, '<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>
												</li>
											</c:if>
										</c:forEach>				
									</ul>
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
	
	<!-- page JavaScript & jQuery -->
    <script src="/resources/user/js/commonUser.js"></script>
    
    <script type="text/javascript">
    	var goUrlHome = "/member/memberHome";
    	var goUrlsaleRegInst = "/item/saleRegInst";
    	
    	var form = $("form[name=form]");
    	
    	$("#btnHome").on("click", function(){
	   		$(location).attr("href", goUrlHome);
		});
    	
    	$("#btnReg").on("click", function(){
			/* if (validationInst() == false) return false; */
			form.attr("action", goUrlsaleRegInst).submit();
		}); 
    	
    	upload = function(objName, seq, allowedMaxTotalFileNumber, allowedExtdiv, allowedEachFileSize, allowedTotalFileSize, uiType) {
    		
//    		objName 과 seq 는 jsp 내에서 유일 하여야 함.
//    		memberProfileImage: 1
//    		memberImage: 2
//    		memberFile : 3

//    		uiType: 1 => 이미지형
//    		uiType: 2 => 파일형
//    		uiType: 3 => 프로필형

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
    		/*
    		} else if (uiType == 3) {
    			var fileReader = new FileReader();
    			 fileReader.onload = function () {
    				 $("#uploadImgProfilePreview").attr("src", fileReader.result);		
    			 }
  			 */
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