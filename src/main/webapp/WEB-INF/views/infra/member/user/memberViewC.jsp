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
    	
    	.addScroll{
			overflow-y:auto;
			height: 200px;
			background-color:#E9ECEF;
			padding-top:5px; 
			padding-left:5px;
		}
	 	
		.input-file-button{
			padding: 4px 25px;
			background-color:#FF6600;
			border-radius: 4px;
			color: white;
			cursor: pointer;
		}
		
		/* 파일첨부 */
		.file-label {
		  margin-top: 30px;
		  margin-left: auto;
		  margin-right: auto;
		  background-color: #5b975b;
		  color: #fff;
		  text-align: center;
		  padding: 10px 0;
		  width: 65%;
		  border-radius: 6px;
		  cursor: pointer;
		}
		.file {
		  display: none;
		}
		.upload-box {
		  width: 100%;
		  box-sizing: border-box;
		  margin-right: 30px;
		  display: flex;
		  flex-direction: column;
		  justify-content: center;
		  align-items: center;
		}
		.upload-box .drag-file {
		  position: relative;
		  width: 100%;
		  height: 360px;
		  display: flex;
		  flex-direction: column;
		  justify-content: center;
		  align-items: center;
		  border: 3px dashed #dbdbdb;
		}
		.upload-box .drag-file.highlight {
		  border: 3px dashed red;
		}
		.upload-box .drag-file .image {
		  width: 40px;
		}
		.upload-box .drag-file .message {
		  margin-bottom: 0;
		}
		.upload-box .drag-file .preview {
		  display: none;
		  position: absolute;
		  left: 0;
		  height: 0;
		  width: 100%;
		  height: 100%;
		}
    </style>
</head>

<body>
<form method="get" name="form" autocomplete="off" enctype="multipart/form-data">
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
								<a class="btn btn-primary w-25" href="javascript:goMod(<c:out value="${item.mmSeq }" />)">수정하기</a>	
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
    
    <script src="/resources/js/common/mmUpload.js"></script>
    
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    
    
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
			 upload = function(objName, seq, allowedMaxTotalFileNumber, allowedExtdiv, allowedEachFileSize, allowedTotalFileSize, uiType) {
//					objName 과 seq 는 jsp 내에서 유일 하여야 함.
//					memberProfileImage: 1
//					memberImage: 2
//					memberFile : 3
					
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