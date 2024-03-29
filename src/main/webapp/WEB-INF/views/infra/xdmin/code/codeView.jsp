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
	<title>codeView</title>
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
	<link href="/resources/xdmin/css/styles.css" rel="stylesheet">
	<link href="/resources/xdmin/css/list.css" rel="stylesheet">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
</head>
<body>
	<form id="form" name="form" autocomplete="off" enctype="multipart/form-data">
	<!-- *Vo.jsp s -->
	<%@include file="../common/codeVo.jsp"%>	
	<!-- *Vo.jsp e -->
		
		<!-- *header.jsp s -->
		<%@include file="../common/header.jsp"%>		
		<!-- *header.jsp e -->
		
		<div class="container-fluid">
			<div class="row mt-4">
				<!-- *sidebar.jsp s -->
				<%@include file="../common/sidebar.jsp"%>	
				<!-- *sidebar.jsp e -->
				<div class="col-10">
					<div class="row">
						<h4>코드 관리</h4>
						<div class="container-fluid">
							<div class="row m-4">
								<div class="col-6">
									<label class="form-label" for="codeGroup_ccgSeq">코드그룹</label>
									<select class="form-select" id="codeGroup_ccgSeq" name="codeGroup_ccgSeq">
										<option>선택</option>
										<c:forEach items="${ccgNameList}" var="ccgNameList" varStatus="status">
										<option value="${ccgNameList.ccgSeq }" <c:if test="${item.codeGroup_ccgSeq eq ccgNameList.ccgSeq }">selected</c:if>>
											<c:out value="${ccgNameList.ccgName }"/>
										</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<label class="form-label" for="ccName">코드</label>
									<input type="text" class="form-control" id="ccSeq" value="<c:out value="${item.ccSeq }"/>">
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="ccgNameEng">대체코드</label>
									<input type="text" class="form-control">
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<label class="form-label" for="ccName">코드 이름 (한글)</label>
									<input type="text" class="form-control" id="ccName" name="ccName" value="<c:out value="${item.ccName }"/>">
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="ccName">코드 이름 (영문)</label>
									<input type="text" class="form-control" id="ccNameEng" name="ccNameEng" value="<c:out value="${item.ccNameEng }"/>">
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<label class="form-label" for="ccUseNy">사용여부</label>
									<select class="form-select" id="ccUseNy" name="ccUseNy">
										<option value="" <c:if test="${empty item.ccUseNy }">selected</c:if>>사용여부 선택</option>
										<option value="1" <c:if test="${item.ccUseNy eq 1 }">selected</c:if>>Y</option>
										<option value="0" <c:if test="${item.ccUseNy eq 0 }">selected</c:if>>N</option>
									</select>
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="ccgOrder">순서</label>
									<input type="text" class="form-control" id="ccOrder" name="ccOrder" value="<c:out value="${item.ccOrder }"/>">
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<label class="form-label" for="cgfExplain">설명</label>
									<textarea  class="form-control" id="cgfExplain"></textarea>
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="ccDelNy">삭제여부</label>
									<select class="form-select" id="ccDelNy" name="ccDelNy">
										<option value="" <c:if test="${empty item.ccDelNy }">selected</c:if>>삭제여부 선택</option>
										<option value="1" <c:if test="${item.ccDelNy eq 1 }">selected</c:if>>Y</option>
										<option value="0" <c:if test="${item.ccDelNy eq 0 }">selected</c:if>>N</option>
									</select> 
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<label class="form-label" for="ccRegDatetime">코드 등록일</label>
									<input type="text" class="form-control" id="ccRegDatetime" name="ccRegDatetime" value="<c:out value="${item.ccRegDatetime }"/>">
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="ccModDatetime">코드 수정일</label>
									<input type="text" class="form-control" id="ccModDatetime" name="ccModDatetime" value="<c:out value="${item.ccModDatetime }"/>">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col px-5">
								<button class="btn btn-secondary" id="btnList" type="button">
									<i class="fa-solid fa-bars"></i>
								</button>
							</div>
							<div class="col px-4" style="text-align: right;">
								<button class="btn btn-danger" id="btnUelete" type="button">
									<i class="fa-duotone fa-x"></i>
								</button>
								<button class="btn btn-danger" id="btnDelete" type="button">
									<i class="fa-regular fa-trash-can"></i>
								</button>
								<button class="btn btn-success" id="btnSave" type="button">
									<i class="fa-regular fa-file-excel"></i>
								</button>
								<div class="modal fade" id="memberDropCBtn" aria-labelledby="exampleModalLabel" aria-hidden="true">
									<div class="modal-dialog modal-dialog-centered">
										<div class="modal-content ">
											<div class="modal-title text-end me-3 mt-3">
												<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
											</div>
											<div class="modal-body text-center">
												<h5 class="modal-title mt-2" id="exampleModalLabel">정말 삭제하시겠습니까?</h5>
												<div class="row mt-5">
													<div class="col-6 text-center">
														<button class="btn btn-secondary" data-bs-dismiss="modal" aria-label="Close">취소</button>
													</div>
													<div class="col-6 text-center">
														<button class="btn btn-danger" id="btnModalUelete" type="button">확인</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="modal fade" aria-labelledby="exampleModalLabel" aria-hidden="true">
									<div class="modal-dialog modal-dialog-centered">
										<div class="modal-content ">
											<div class="modal-title text-end me-3 mt-3">
												<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
											</div>
											<div class="modal-body text-center">
												<h5 class="modal-title mt-2" id="exampleModalLabel">정말 삭제하시겠습니까?</h5>
												<div class="row mt-5">
													<div class="col-6 text-center">
														<button class="btn btn-secondary" data-bs-dismiss="modal" aria-label="Close">취소</button>
													</div>
													<div class="col-6 text-center">
														<button class="btn btn-danger" id="btnModalDelete" type="button">확인</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
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
	<form name="formVo" id="formVo" method="post">
	<!-- *Vo.jsp s -->
	<%@include file="../common/codeVo.jsp"%>		<!-- #-> -->
	<!-- *Vo.jsp e -->
	</form>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script src="/resources/xdmin/js/sidebar.js"></script>
	<script src="/resources/xdmin/js/list.js"></script>
	<script>
		var goUrlList = "/code/codeList";
		var goUrlInst = "/code/codeInst";
		var goUrlUpdt = "/code/codeUpdt";
		var goUrlUele = "/code/codeUele";
		var goUrlDele = "/code/codeDele";
		
		var seq = $("input:hidden[name=ccSeq]");
		
		var form = $("form[name=form]");
		var formVo = $("form[name=formVo]");
	
		$("#btnSave").on("click",function(){
			form.attr("action", goUrlUpdt).submit();
		});
		
		$("#btnList").on("click", function(){
			formVo.attr("action", goUrlList).submit();
		});
		
		$("#btnUelete").on("click", function(){
			formVo.attr("action", goUrlUele).submit();
		});
		
		
		$("#btnDelete").on("click", function(){
			formVo.attr("action", goUrlDele).submit();
		});
		
		/* 
		$("#btnUelete").on("click", function(){
			$("input:hidden[name=ccDelNy]").val(1);
			$(".modal-title").text("확 인");
			$(".modal-body").text("해당 데이터를 삭제하시겠습니까 ?");
			$("#btnModalUelete").show();
			$("#btnModalDelete").hide();
			$("#modalConfirm").modal("show");
		});
		

		$("#btnDelete").on("click", function(){
			$("input:hidden[name=ccDelNy]").val(0);
			$(".modal-title").text("확 인");
			$(".modal-body").text("해당 데이터를 삭제하시겠습니까 ?");
			$("#btnModalUelete").hide();
			$("#btnModalDelete").show();
			$("#modalConfirm").modal("show");
		});
		
		
		$("#btnModalUelete").on("click", function(){
			$("#modalConfirm").modal("hide");
			formVo.attr("action", goUrlUele).submit();
		});
		
		
		$("#btnModalDelete").on("click", function(){
			$("#modalConfirm").modal("hide");
			formVo.attr("action", goUrlDele).submit();
		});
		 */
		 
		$( function() {
			  $( "#datepicker" ).datepicker();
			} );
	</script>
</body>
</html>