<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!doctype html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>itemForm</title>
	<link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/sidebars/">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	
	<!-- Fontawesome Stylesheet -->
    <script src="https://kit.fontawesome.com/059fbc3cf8.js" crossorigin="anonymous"></script>
	<style type="text/css">
		label {
			font-size: large;
		}
		
		table {
			margin-left: auto;
			margin-right: auto;
		}
		
		th, td {
			border: 1px solid lightgray;
			height: 35px;
		}

		.listCheck {
			text-align: center;
			justify-content: center;
		}
	</style>
	
	<link href="/resources/xdmin/css/list.css" rel="stylesheet">
</head>
<body>
	<form method="get" id="form" name="form" autocomplete="off" enctype="multipart/form-data">
		
		<!-- *header.jsp s -->
		<%@include file="../common/header.jsp"%>		<!-- #-> -->
		<!-- *header.jsp e -->
		
		<div class="container-fluid">
			<div class="row mt-4">
			
				<!-- *sidebar.jsp s -->
				<%@include file="../common/sidebar.jsp"%>		<!-- #-> -->
				<!-- *sidebar.jsp e -->
				
				<div class="col-10">
					<div class="row">
						<h4>상품 등록</h4>
						<div class="container-fluid">
							<div class="row m-4">
								<div class="col mx-auto">
									<label class="form-label" for="itemSeq">상품번호</label>
									<input type="text" class="form-control" id="itemSeq" name="itemSeq" placeholder="자동생성" readonly>
								</div>
								<div class="col">
									<label class="form-label" for="itTitle">제목</label>
									<input type="text" class="form-control" id="itTitle" name="itTitle" value="<c:out value="${dto.itTitle }" />">
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<label class="form-label" for="category1">상위 카테고리</label>
									<select class="form-select" id="category1" name="category1">
										<option>선택해주세요</option>
										<c:forEach begin="96" end="105" items="${ccNameList }" var="ccNameList" varStatus="status">
										<option value="${ccNameList.ccSeq }"><c:out value="${ccNameList.ccName }"/></option>
										</c:forEach>
									</select>
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="category2">하위 카테고리</label>
									<select class="form-select" id="category2" name="category2">
										<option>선택해주세요</option>
										<c:forEach begin="106" end="117" items="${ccNameList }" var="ccNameList" varStatus="status">
										<option value="${ccNameList.ccSeq }"><c:out value="${ccNameList.ccName }"/></option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<label class="form-label" for="skillLevel">기술 수준</label>
									<select class="form-select" id="skillLevel" name="skillLevel">
										<option>선택해주세요</option>
										<c:forEach begin="118" end="121" items="${ccNameList }" var="ccNameList" varStatus="status">
										<option value="${ccNameList.ccSeq }"><c:out value="${ccNameList.ccName }"/></option>
										</c:forEach>
									</select>
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="teamSize">팀 규모</label>
									<select class="form-select" id="teamSize" name="teamSize">
										<option>선택해주세요</option>
										<c:forEach begin="122" end="126" items="${ccNameList }" var="ccNameList" varStatus="status">
										<option value="${ccNameList.ccSeq }"><c:out value="${ccNameList.ccName }"/></option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<label class="form-label" for="residency">상주 여부</label>
									<select class="form-select" id="residency" name="residency">
										<option>선택해주세요</option>
										<c:forEach begin="127" end="129" items="${ccNameList }" var="ccNameList" varStatus="status">
										<option value="${ccNameList.ccSeq }"><c:out value="${ccNameList.ccName }"/></option>
										</c:forEach>
									</select>
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="serviceCategory">서비스 카테고리</label>
									<select class="form-select" id="serviceCategory" name="serviceCategory">
										<option>선택해주세요</option>
										<c:forEach begin="130" end="135" items="${ccNameList }" var="ccNameList" varStatus="status">
										<option value="${ccNameList.ccSeq }"><c:out value="${ccNameList.ccName }"/></option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="row m-4">
								<div class="col-6 mx-auto">
									<label class="form-label" for="developLanguage">개발 언어</label>
									<select class="form-select" id="developLanguage" name="developLanguage">
										<option>선택해주세요</option>
										<c:forEach begin="136" end="146" items="${ccNameList }" var="ccNameList" varStatus="status">
										<option value="${ccNameList.ccSeq }"><c:out value="${ccNameList.ccName }"/></option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<label class="form-label" for="itemPriceTitle">가격 제목</label>
									<input class="form-control" type="text" style="width: 840px;" placeholder="ex. 00 웹사이트" name="itemPriceTitle" value="<c:out value="${dto.itemPriceTitle }"/>">
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="itemPriceDetail">설명</label>
									<textarea class="form-control" placeholder="-메인페이지 시안 1개 제공, 공지사항, FAQ 페이지, SNS로그인 연동" id="itemPriceDetail" name="itemPriceDetail" resize="none;"><c:out value="${dto.itemPriceDetail }"/></textarea>
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<label class="form-label" for="workPeriod">작업 기간</label>
									<input class="form-control" type="text" style="width: 840px;" placeholder="ex. 00일" name="workPeriod" value="<c:out value="${dto.workPeriod }"/>">
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="numberOfMod">수정 횟수</label>
									<input class="form-control" type="text" style="width: 840px;" placeholder="ex. 00회" name="numberOfMod" value="<c:out value="${dto.numberOfMod }"/>">
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<label class="form-label" for="responsiveWeb">반응형 웹</label>
									<input type="checkbox" class="form-check-input" name="responsiveWeb" value="1">
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="contentUpload">콘텐츠 업로드</label>
									<input type="checkbox" class="form-check-input" name="contentUpload" value="1">
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="sourceCode">소스 코드 제공</label>
									<input type="checkbox" class="form-check-input" name="sourceCode" value="1">
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="design">맞춤 디자인 제공</label>
									<input type="checkbox" class="form-check-input" name="design" value="1">
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="functionPlus">기능 추가</label>
									<input type="checkbox" class="form-check-input" name="functionPlus" value="1">
								</div>
							</div>
							<div class="row m-4">
								<div class="col-6 mx-auto">
									<label class="form-label" for="design">페이지 수</label>
									<input class="form-control" type="text" placeholder="입력해주세요" name="numberOfPage" value="<c:out value="${dto.numberOfPage }" />">
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<label class="form-label" for="quickWork">빠른 작업</label>
									<input type="checkbox" class="form-check-input" name="quickWork" value="1">
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="plusMod">추가 수정</label>
									<input type="checkbox" class="form-check-input" name="plusMod" value="1">
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="pagePlus">추가 페이지</label>
									<input type="checkbox" class="form-check-input" name="pagePlus" value="1">
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<label class="form-label" for="itServiceDetail">서비스 설명</label>
									<textarea class="form-control" style="width: 840px;" name="itServiceDetail" rows="15" placeholder=""><c:out value="${dto.itServiceDetail }"/></textarea>
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="provisionProcedure">서비스 제공 절차</label>
									<textarea class="form-control" rows="15" name="provisionProcedure" placeholder=""><c:out value="${dto.provisionProcedure }"/></textarea>
								</div>
							</div>
							<div class="row m-4">
								<div class="col-6 mx-auto">
									<label class="form-label" for="clientPrepare">의뢰인 준비사항</label>
									<textarea class="form-control" rows="15" name="clientPrepare" placeholder=""><c:out value="${dto.clientPrepare }"/></textarea>
								</div>	
							</div>
							<div class="row m-4">
								<div class="col-6 mx-auto">
									<label class="form-label" for="clientPrepare">대표 이미지</label>
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
								<div class="col-6 mx-auto">
									<label class="form-label" for="clientPrepare">추가 이미지</label>
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
						<div class="row">
							<div class="col px-5">
								<button class="btn btn-secondary" type="button" id="btnList">
									<i class="fa-solid fa-bars"></i>
								</button>
							</div>
							<div class="col px-4" style="text-align: right;">
								<button class="btn btn-danger" type="button" id="btnUelete">
									<i class="fa-duotone fa-x"></i>
								</button>
								<button class="btn btn-danger" type="button" id="btnDelete">
									<i class="fa-regular fa-trash-can"></i>
								</button>
								<button class="btn btn-success" type="button" id="btnSave">
									<i class="fa-regular fa-file-excel"></i>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Footer Start -->
	    <div class="container-fluid bg-dark text-light footer mt-5 pt-5">
	    	<div class="container">
	            <div class="copyright">
	                <div class="row">
	                    <div class="col text-center">
	                        Copyright &copy; 2022&nbsp;<a class="border-bottom" href="#">ISML</a>&nbsp;lnc, All Right Reserved.
	                    </div>
	                </div>
	                <div class="row">
	                    <div class="col text-center">
	                        Designed By <a class="border-bottom" href="#">HTML Codex</a>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	    <!-- Footer End -->
	</form>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	
	<script src="/resources/xdmin/js/list.js"></script>
	<script src="/resources/xdmin/js/sidebar.js"></script>
	
	<script type="text/javascript">
	
	</script>

</body>
</html>