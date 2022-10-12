<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<jsp:useBean id="CodeServiceImpl" class="com.lifemanlab.shop.modules.code.CodeServiceImpl"/>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>혼자서 할 수 없던 것 | 인생만렙에서 만렙들과 해보세요.</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="/resources/images/logo.PNG" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Roboto:wght@500;700;900&display=swap" rel="stylesheet"> 

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="/resources/template/woody/lib/animate/animate.min.css" rel="stylesheet">
    <link href="/resources/template/woody/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="/resources/template/woody/lib/lightbox/css/lightbox.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/resources/template/woody/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="/resources/template/woody/css/style.css" rel="stylesheet">
    
    <link href="/resources/css/user/nav.css" rel="stylesheet">
    <link href="/resources/css/user/upload.css" rel="stylesheet">
    
    <!-- Fontawesome Stylesheet -->
    <script src="https://kit.fontawesome.com/059fbc3cf8.js" crossorigin="anonymous"></script>
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
<form method="get" id="form" name="form" autocomplete="off" enctype="multipart/form-data">
    <input type="hidden" id="sessSeq" name="sessSeq" value="${sessSeq }">
    <input type="hidden" id="mmSeq" name="mmSeq" value="${vo.mmSeq }">
    <!-- Navbar Start -->
    <%@include file="../../common/xdmin/includeV1/nav.jsp"%>
    <!-- Navbar End -->
    
    <!-- Contact Start -->
	<div class="container-fluid overflow-hidden" style="margin: 1rem 0;">
		<div class="row">

		<!-- mypageList Start -->
		<%@include file="../../common/xdmin/includeV1/mypageList.jsp"%>
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
									<input type="text" class="form-control" id="mmNickname" name="mmNickname" value="<c:out value="${item.mmNickname }"/>" placeholder="닉네임을 입력해 주세요.">
								</div>
							</div>
							<div class="col-8 offset-2">
								<label class="form-label" for="mmName">이름</label>	
								<div class="input-group">
									<input type="text" class="form-control" id="mmName" name="mmName" value="<c:out value="${item.mmName }"/>" placeholder="닉네임을 입력해 주세요.">
								</div>
							</div>
							<div class="col-8 offset-2">
								<label class="form-label" for="mmEmail">이메일</label>
								<button class="confirm btn btn-primary" style="height: 30px; color: #AB7442;">인증</button>	
								<div class="input-group">
									<input type="email" class="form-control"  id="mmEmail" name="mmEmail" value="<c:out value="${item.mmEmail }"/>">
								</div>
							</div>
							<div class="col-8 offset-2">
								<label class="form-label" for="mmBod">생년월일</label>	
								<div class="input-group">
									<input type="text" class="form-control" id="mmBod" name="mmBod" value="<c:out value="${item.mmBod }"/>">
								</div>
							</div>
							<div class="col-8 offset-2">
								<label class="form-label" for="mmpPhoneNumber">핸드폰</label>	
								<button class="confirm btn btn-primary" style="height: 30px; color: #AB7442;">인증</button>
								<div class="input-group">
									<input type="text" class="form-control" id="mmpPhoneNumber" name="mmpPhoneNumber" value="<c:out value="${item.mmpPhoneNumber }"/>">
								</div>
							</div>
							<div class="col-8 offset-2">
								<label class="form-label" for="mmGender">성별</label>	
								<br>
								<div class="form-check form-check-inline">
								<c:choose>
									<c:when test="${item.mmGender eq 5 }">
									<input type="radio" class="form-check-input" name="mmGender" id="mmGender1" value="5" disable <c:if test="${item.mmGender eq 5 }">checked</c:if>>
									<label class="form-check-label" for="genderRegM">남자</label>
									</c:when>
									<c:when test="${item.mmGender eq 6 }">
									<input type="radio" class="form-check-input" name="mmGender" id="mmGender2" value="6" disable <c:if test="${item.mmGender eq 6 }">checked</c:if>>
									<label class="form-check-label" for="genderRegM">여자</label>
									</c:when>
									<c:otherwise>
									<input type="radio" class="form-check-input" name="mmGender" id="mmGender3" value="7" disable <c:if test="${item.mmGender eq 7 }">checked</c:if>>
									<label class="form-check-label" for="genderRegM">기타</label>
									</c:otherwise>
								</c:choose>
								</div>
							</div>
							<div class="col-3 offset-2">
								<label class="form-label" for="addressReg">주소</label>
								<div class="input-group">
									<button class="btn btn-primary" type="submit" onclick="mmrfPostcodeBtn()">주소검색</button>
									<input type="text" class="form-control w-25" id="mmrfPostcode" name="mmZip" value="<c:out value="${item.mmZip }"/>">
								</div>
							</div>
							<div class="col-8 offset-2 mt-2">
								<div class="input-group mb-2">
									<input type="text" class="form-control" id="mmrfRoadAddress" name="mmAddress1" value="<c:out value="${item.mmAddress1 }"/>">
								</div>
								<span id="guide" style="color:#999;display:none"></span>
								<div class="input-group">
									<input type="text" class="form-control" id="mmrfDetailAddress" name="mmAddress2" value="<c:out value="${item.mmAddress2 }"/>">
								</div>
							</div>
							<div class="col-8 offset-2">
								<label class="form-label" for="mmJob">직업</label>
								<div class="input-group">
									<select class="form-select" id="mmJob" name="mmJob">
										<option value="" <c:if test="${empty item.mmJob }">selected</c:if>>직업선택</option>
										<option value="13" <c:if test="${item.mmJob eq 13 }">selected</c:if>>직장인</option>
										<option value="14" <c:if test="${item.mmJob eq 14 }">selected</c:if>>프리랜서</option>
										<option value="15" <c:if test="${item.mmJob eq 15 }">selected</c:if>>소상공인</option>
										<option value="16" <c:if test="${item.mmJob eq 16 }">selected</c:if>>스타트업 창업자</option>
										<option value="17" <c:if test="${item.mmJob eq 17 }">selected</c:if>>대학(원)생</option>
										<option value="18" <c:if test="${item.mmJob eq 18 }">selected</c:if>>취업준비생</option>
										<option value="19" <c:if test="${item.mmJob eq 19 }">selected</c:if>>무직</option>
									</select>
								</div>
							</div>
							<div class="col-8 offset-2">
								<label class="form-label" for="mmInterest">관심선택(중복 선택 가능)</label>
								<div class="input-group">
									<select class="form-select" id="mmInterest" name="mmInterest" multiple>
										<option value="" <c:if test="${empty item.mmInterest }">selected</c:if>>관심분야선택</option>
										<option value="35" <c:if test="${item.mmInterest eq 35 }">selected</c:if>>개발/디자인</option>
										<option value="36" <c:if test="${item.mmInterest eq 36 }">selected</c:if>>홈/리빙</option>
										<option value="37" <c:if test="${item.mmInterest eq 37 }">selected</c:if>>레슨</option>
										<option value="38" <c:if test="${item.mmInterest eq 38 }">selected</c:if>>통역/번역</option>
										<option value="39" <c:if test="${item.mmInterest eq 39 }">selected</c:if>>사진/영상</option>
										<option value="40" <c:if test="${item.mmInterest eq 40 }">selected</c:if>>세무/법무/노무</option>
										<option value="41" <c:if test="${item.mmInterest eq 41 }">selected</c:if>>미용/건강</option>
										<option value="42" <c:if test="${item.mmInterest eq 42 }">selected</c:if>>취업/입시</option>
										<option value="43" <c:if test="${item.mmInterest eq 43 }">selected</c:if>>마케팅</option>
										<option value="44" <c:if test="${item.mmInterest eq 44 }">selected</c:if>>이벤트</option>
									</select>
								</div>
							</div>
							<div class="col-8 offset-2">
								<div class="row mt-sm-4">
									<div class="col-sm-6 mt-3 mt-sm-0">
										<label for="mmUploadedImage" class="form-label input-file-button">이미지첨부</label>
										<input class="form-control form-control-sm" id="mmUploadedImage" name="mmUploadedImage" type="file" multiple="multiple" style="display: none;" onChange="upload('mmUploadedImage', 1, 0, 1, 0, 0, 1);">
										<div class="addScroll">
											<ul id="ulFile1" class="list-group">
											</ul>
										</div>
									</div>
									<div class="col-sm-6 mt-3 mt-sm-0">
										<label for="mmUploadedFile" class="form-label input-file-button">파일첨부</label>
										<input class="form-control form-control-sm" id="mmUploadedFile" name="mmUploadedFile" type="file" multiple="multiple" style="display: none;" onChange="upload('mmUploadedFile', 2, 0, 2, 0, 0, 2);" >
										<div class="addScroll">
											<ul id="ulFile2" class="list-group">
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="col-8 offset-2">
								<div class="upload-box">
									<div id="drop-file" class="drag-file">
										<img src="https://img.icons8.com/pastel-glyph/2x/image-file.png" alt="파일 아이콘" class="image">
										<p class="message">Drag files to upload</p>
										<img src="" alt="미리보기 이미지" class="preview">
									</div>
								</div>
								<label class="file-label" for="chooseFile">Choose File</label>
								<input class="file" id="chooseFile" type="file" onchange="dropFile.handleFiles(this.files)" accept="image/png, image/jpeg, image/gif">
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
	<%@include file="../../common/xdmin/includeV1/footer.jsp"%>
	<!-- Footer End -->

	<!-- Back to Top -->
	<a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-0 back-to-top"><i class="bi bi-arrow-up"></i></a>
</form>

<%-- 
<form name="formVo" id="formVo" method="post">
	<!-- *Vo.jsp s -->
	<input type="hidden" name="mmSeq" value="<c:out value="${vo.mmSeq }" />">
	<!-- *Vo.jsp e -->
</form>

 --%>
    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/resources/template/woody/lib/wow/wow.min.js"></script>
    <script src="/resources/template/woody/lib/easing/easing.min.js"></script>
    <script src="/resources/template/woody/lib/waypoints/waypoints.min.js"></script>
    <script src="/resources/template/woody/lib/counterup/counterup.min.js"></script>
    <script src="/resources/template/woody/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="/resources/template/woody/lib/isotope/isotope.pkgd.min.js"></script>
    <script src="/resources/template/woody/lib/lightbox/js/lightbox.min.js"></script>

    <!-- Template Javascript -->
    <script src="/resources/template/woody/js/main.js"></script>
    
    <!-- kakaoMap API -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=17e90af3c57fa367793d1f57799dd4c9&libraries=services,clusterer,drawing"></script>
    
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    
    <script>
    
    	var goUrlMemberMod = "/member/memberMod";
    	
    	var form = $("form[name=form]");
    	
    	$("#btnSave").on("click", function(){
    		form.attr("action", goUrlMemberMod).submit();
    	});
    
	  //카카오 지도 API
		//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	    function mmrfPostcodeBtn() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var roadAddr = data.roadAddress; // 도로명 주소 변수
	                var extraRoadAddr = ''; // 참고 항목 변수
	
	                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraRoadAddr += data.bname;
	                }
	                // 건물명이 있고, 공동주택일 경우 추가한다.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                if(extraRoadAddr !== ''){
	                    extraRoadAddr = ' (' + extraRoadAddr + ')';
	                }
	
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('mmrfPostcode').value = data.zonecode;
	                document.getElementById("mmrfRoadAddress").value = roadAddr;
	                
	                var guideTextBox = document.getElementById("guide");
	                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
	                if(data.autoRoadAddress) {
	                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
	                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
	                    guideTextBox.style.display = 'block';
	
	                } else {
	                    guideTextBox.innerHTML = '';
	                    guideTextBox.style.display = 'none';
	                }
	            }
	        }).open();
	
	    }
	    
		$("#btnAddressClear").on("click", function(){
			$("#mmrfPostcode").val('');
			$("#mmrfRoadAddress").val('');
			/* $("#mmJibunAddress").val(''); */
			$("#mmrfDetailAddress").val('');
			/* $("#mmExtraAddress").val(''); */
		});
		
		upload = function(objName, seq, allowedMaxTotalFileNumber, allowedExtdiv, allowedEachFileSize, allowedTotalFileSize, uiType) {
//			objName 과 seq 는 jsp 내에서 유일 하여야 함.
//			memberProfileImage: 1
//			memberImage: 2
//			memberFile : 3
			
			var totalFileSize = 0;
			var obj = $("#" + objName +"")[0].files;	
			var fileCount = obj.length;
			
			allowedMaxTotalFileNumber = allowedMaxTotalFileNumber == 0 ? MAX_TOTAL_FILE_NUMBER : allowedMaxTotalFileNumber;
			allowedEachFileSize = allowedEachFileSize == 0 ? MAX_EACH_FILE_SIZE : allowedEachFileSize;
			allowedTotalFileSize = allowedTotalFileSize == 0 ? MAX_TOTAL_FILE_SIZE : allowedTotalFileSize;
			
			if(checkUploadedTotalFileNumber(obj, allowedMaxTotalFileNumber, fileCount) == false) { return false; }
			
			for (var i = 0 ; i < fileCount ; i++) {
				if(checkUploadedExt($("#" + objName +"")[0].files[i].name, seq, allowedExtdiv) == false) { return false; }
				if(checkUploadedEachFileSize($("#" + objName +"")[0].files[i], seq, allowedEachFileSize) == false) { return false; }
				totalFileSize += $("#" + objName +"")[0].files[i].size;
			}
			if(checkUploadedTotalFileSize(seq, totalFileSize, allowedTotalFileSize) == false) { return false; }
			
			if (uiType == 1) {
				$("#ulFile" + seq).children().remove();
				
				for (var i = 0 ; i < fileCount ; i++) {
					addUploadLi(seq, i, $("#" + objName +"")[0].files[i].name);
				}
			} else if(uiType == 2) {
				$("#ulFile" + seq).children().remove();
				
				for (var i = 0 ; i < fileCount ; i++) {
					addUploadLi(seq, i, $("#" + objName +"")[0].files[i].name);
				}
			} else if (uiType == 3) {
				var fileReader = new FileReader();
				 fileReader.readAsDataURL($("#" + objName +"")[0].files[0]);
				
				 fileReader.onload = function () {
					 $("#imgProfile").attr("src", fileReader.result);		/* #-> */
				 }		
			} else {
				return false;
			}
			return false;
		}
	 
	 	addUploadLi = function (seq, index, name){
			
			var ul_list = $("#ulFile0");
			
			li = '<li id="li_'+seq+'_'+index+'" class="list-group-item d-flex justify-content-between align-items-center">';
			li = li + name;
			li = li + '<span class="badge bg-danger rounded-pill" onClick="delLi('+ seq +','+ index +')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>';
			li = li + '</li>';
			
			$("#ulFile"+seq).append(li);
		}
		
		
		delLi = function(seq, index) {
			$("#li_"+seq+"_"+index).remove();
		}
	 
		//파일첨부
		function DropFile(dropAreaId, fileListId) {
		  let dropArea = document.getElementById(dropAreaId);
		  let fileList = document.getElementById(fileListId);

		  function preventDefaults(e) {
		    e.preventDefault();
		    e.stopPropagation();
		  }

		  function highlight(e) {
		    preventDefaults(e);
		    dropArea.classList.add("highlight");
		  }

		  function unhighlight(e) {
		    preventDefaults(e);
		    dropArea.classList.remove("highlight");
		  }

		  function handleDrop(e) {
		    unhighlight(e);
		    let dt = e.dataTransfer;
		    let files = dt.files;

		    handleFiles(files);

		    const fileList = document.getElementById(fileListId);
		    if (fileList) {
		      fileList.scrollTo({ top: fileList.scrollHeight });
		    }
		  }

		  function handleFiles(files) {
		    files = [...files];
		    // files.forEach(uploadFile);
		    files.forEach(previewFile);
		  }

		  function previewFile(file) {
		    console.log(file);
		    renderFile(file);
		  }

		  function renderFile(file) {
		    let reader = new FileReader();
		    reader.readAsDataURL(file);
		    reader.onloadend = function () {
		      let img = dropArea.getElementsByClassName("preview")[0];
		      img.src = reader.result;
		      img.style.display = "block";
		    };
		  }

		  dropArea.addEventListener("dragenter", highlight, false);
		  dropArea.addEventListener("dragover", highlight, false);
		  dropArea.addEventListener("dragleave", unhighlight, false);
		  dropArea.addEventListener("drop", handleDrop, false);

		  return {
		    handleFiles
		  };
		}

		const dropFile = new DropFile("drop-file", "files");
    
    </script>
    
</body>

</html>