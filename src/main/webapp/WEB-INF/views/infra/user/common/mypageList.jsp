	<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
	<%-- <input type="hidden" id="sessSeq" name="sessSeq" value="${sessSeq }"> --%>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>	
	<c:choose>
		<c:when test="${sessRank eq 21}">
		<div class="col-sm-3 p-lg-5">
			<div class="text-center pb-4">
			<c:set var="type" value="1"/>		<!-- #-> -->
        	<c:set var="name" value="uploadImgProfile"/>		<!-- #-> -->
			<c:choose>
				<c:when test="${ifmmSeq eq 0 }">
					<img id="<c:out value="${name }"/>Preview" src="/resources/xdmin/image/default_100_100.png" class="rounded-circle mx-auto d-block" width="100" height="100">
				</c:when>
				<c:otherwise>
					<c:choose>
						<c:when test="${fn:length(listUploaded) eq 0 }">
							<img id="<c:out value="${name }"/>Preview" src="/resources/xdmin/image/default_100_100.png" class="rounded-circle mx-auto d-block" width="100" height="100">
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
								<img id="<c:out value="${name }"/>Preview" src="/resources/xdmin/image/default_100_100.png" class="rounded-circle mx-auto d-block" width="100" height="100">
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
			<c:set var="type" value="1"/>	
        	<c:set var="name" value="mmUploadedProfileImage"/>
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
	<!-- <script srt="/resources/js/user/upload.js"></script> -->
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
		
		upload = function(objName, seq, allowedMaxTotalFileNumber, allowedExtdiv, allowedEachFileSize, allowedTotalFileSize, uiType) {
			
//			objName 과 seq 는 jsp 내에서 유일 하여야 함.
//			memberProfileImage: 1
//			memberImage: 2
//			memberFile : 3
	 
//			uiType: 1 => 이미지형
//			uiType: 2 => 파일형
//			uiType: 3 => 프로필형

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
					 $("#mmUploadedProfileImagePreview").attr("src", fileReader.result);		/* #-> */
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