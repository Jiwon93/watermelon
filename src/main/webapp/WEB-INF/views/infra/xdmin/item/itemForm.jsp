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
								<div class="col-6">
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
								<div class="col mx-auto">
									<label class="form-label" for="developLanguage">개발 언어</label>
									<select class="form-select" id="developLanguage" name="developLanguage">
										<option>선택해주세요</option>
										<c:forEach begin="136" end="146" items="${ccNameList }" var="ccNameList" varStatus="status">
										<option value="${ccNameList.ccSeq }"><c:out value="${ccNameList.ccName }"/></option>
										</c:forEach>
									</select>
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="ccDelNy">삭제여부</label>
									<select class="form-select" id="ccDelNy" name="ccDelNy">
										<option value="" <c:if test="${empty dto.ccDelNy }">selected</c:if>>삭제여부 선택</option>
										<option value="1" <c:if test="${dto.ccDelNy eq 1 }">selected</c:if>>Y</option>
										<option value="0" <c:if test="${dto.ccDelNy eq 0 }">selected</c:if>>N</option>
									</select>
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<label class="form-label" for="ccRegDatetime">코드 등록 날짜</label>
									<input type="text" class="form-control" id="ccRegDatetime" name="ccRegDatetime" value="<c:out value="${dto.ccRegDatetime }"/>">
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="ccModDatetime">코드 수정 날짜</label>
									<input type="text" class="form-control" id="ccModDatetime" name="ccModDatetime" value="<c:out value="${dto.ccModDatetime }"/>">
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