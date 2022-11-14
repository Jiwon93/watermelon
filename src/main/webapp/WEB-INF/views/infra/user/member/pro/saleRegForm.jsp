<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

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
    
    <link href="/resources/user/css/nav.css" rel="stylesheet">
    <link href="/resources/user/css/upload.css" rel="stylesheet">
    
    <link href="/resources/user/css/saleRegForm.css" rel="stylesheet">
    
    <!-- Fontawesome Stylesheet -->
    <script src="https://kit.fontawesome.com/059fbc3cf8.js" crossorigin="anonymous"></script>
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
									<textarea class="form-control" placeholder="-메인페이지 시안 1개 제공, 공지사항, FAQ 페이지, SNS로그인 연동" id="itemPriceDetail" name="itemPriceDetail" resize="none;">
										<c:out value="${dto.itemPriceDetail }"/>
									</textarea>
								</td>
							</tr>
							<tr>
								<th>금액(VAT 포함)</th>
								<td>
									<input class="form-control" type="text" placeholder="서비스를 잘 드러낼 수 있는 제목을 입력해주세요" name="itemPrice" value="<c:out value="${dto.itemPrice }"/>">
								</td>
							</tr>
							<tr>
								<th>작업 기간</th>
								<td>
									<input class="form-control" type="text" style="width: 840px;" placeholder="ex. 00 웹사이트" name="workPeriod" value="<c:out value="${dto.workPeriod }"/>">
								</td>
							</tr>
							<tr>
								<th>수정 횟수</th>
								<td>
									<input class="form-control" type="text" style="width: 840px;" placeholder="ex. 00 웹사이트" name="numberOfMod" value="<c:out value="${dto.numberOfMod }"/>">
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
								<td>
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
									<textarea class="form-control" style="width: 840px;" name="itServiceDetail" rows="15" placeholder="">
										<c:out value="${dto.itServiceDetail }"/>
									</textarea>
								</td>
							</tr>
							<tr>
								<th>서비스 제공 절차</th>
								<td>
									<textarea class="form-control" rows="15" name="provisionProcedure" placeholder="">
										<c:out value="${dto.provisionProcedure }"/>
									</textarea>
								</td>
							</tr>
							<tr>
								<th>의뢰인 준비사항</th>
								<td>
									<textarea class="form-control" rows="15" name="clientPrepare" placeholder="">
										<c:out value="${dto.clientPrepare }"/>
									</textarea>
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
    
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="/resources/user/js/upload.js"></script>
    <script src="/resources/common/js/mmUpload.js"></script>
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
    </script>
</body>

</html>