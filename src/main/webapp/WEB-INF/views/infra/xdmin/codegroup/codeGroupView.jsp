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
	<title>codeGroupView</title>

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
</head>
<body>
	<form id="form" name="form" method="get" autocomplete="off" enctype="multipart/form-data">
	<!-- *Vo.jsp s -->
	<%@include file="../common/codeGroupVo.jsp"%>		
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
						<h4>코드그룹 관리</h4>
						<div class="container-fluid">
							<div class="row m-4">
								<div class="col-6">
									<label class="form-label" for="ccgSeq">코드그룹 코드</label>
									<input type="text" class="form-control" id="ccgSeq" value="<c:out value="${item.ccgSeq }"/>" readonly>
								</div>
								<div class="col-6">
									<label class="form-label" for="cgfCodeGroupCodeAnother">코드그룹 코드 (Another)</label>
									<input type="text" class="form-control" id="cgfCodeGroupCodeAnother" placeholder="영문(대소문자),숫자">
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<label class="form-label" for="ccgName">코드그룹 이름 (한글)</label>
									<input type="text" class="form-control" id="ccgName" name="ccgName" value="<c:out value="${item.ccgName }"/>">
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="ccgNameEng">코드그룹 이름 (영문)</label>
									<input type="text" class="form-control" id="ccgNameEng" name="ccgNameEng" value="<c:out value="${item.ccgNameEng }"/>">
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<label class="form-label" for="ccgUseNy">사용여부</label>
									<select class="form-select" id="ccgUseNy" name="ccgUseNy">
										<option value="" <c:if test="${empty item.ccgUseNy }">selected</c:if>>사용여부 선택</option>
										<option value="1" <c:if test="${item.ccgUseNy eq 1 }">selected</c:if>>Y</option>
										<option value="0" <c:if test="${item.ccgUseNy eq 0 }">selected</c:if>>N</option>
									</select>
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="ccgOrder">순서</label>
									<input type="text" class="form-control" id="ccgOrder" name="ccgOrder" value="<c:out value="${item.ccgOrder }"/>">
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<label class="form-label" for="cgfExplain">설명</label>
									<textarea  class="form-control" id="cgfExplain"></textarea>
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="ccgDelNy">삭제여부</label>
									<select class="form-select" id="ccgDelNy" name="ccgDelNy">
										<option value="" <c:if test="${empty item.ccgDelNy }">selected</c:if>>삭제여부 선택</option>
										<option value="1" <c:if test="${item.ccgDelNy eq 1 }">selected</c:if>>Y</option>
										<option value="0" <c:if test="${item.ccgDelNy eq 0 }">selected</c:if>>N</option>
									</select> 
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<label class="form-label" for="ccgRegDatetime">코드 등록 날짜</label>
									<input type="text" class="form-control" id="ccgRegDatetime" name="ccgRegDatetime" value="<c:out value="${item.ccgRegDatetime }"/>">
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="ccgModDatetime">코드 수정 날짜</label>
									<input type="text" class="form-control" id="ccgModDatetime" name="ccgModDatetime" value="<c:out value="${item.ccgModDatetime }"/>" placeholder="숫자">
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
	<%@include file="../common/codeGroupVo.jsp"%>		<!-- #-> -->
	<!-- *Vo.jsp e -->
	</form>
	<script src="/resources/xdmin/js/list.js"></script>
	<script src="/resources/xdmin/js/sidebar.js"></script>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script>
		var goUrlList = "/codeGroup/codeGroupList";
		var goUrlUpdt = "/codeGroup/codeGroupUpdt";
		var goUrlUele = "/codeGroup/codeGroupUele";
		var goUrlDele = "/codeGroup/codeGroupDele";
		
		var seq = $("input:hidden[name=ccgSeq]");
		
		var form = $("form[name=form]");
		var formVo = $("form[name=formVo]");
	
		$("#btnSave").on("click",function(){
			form.attr("action", goUrlUpdt).submit();
		});
		
		$("#btnList").on("click", function(){
			formVo.attr("action", goUrlList).submit();
		});
		
		$("#btnUelete").on("click", function(){
			$("input:hidden[name=ccgDelNy]").val(1);
			$(".modal-title").text("확 인");
			$(".modal-body").text("해당 데이터를 삭제하시겠습니까 ?");
			$("#btnModalUelete").show();
			$("#btnModalDelete").hide();
			$("#modalConfirm").modal("show");
		});
		

		$("#btnDelete").on("click", function(){
			$("input:hidden[name=ccgDelNy]").val(0);
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
		
		$( function() {
			  $( "#datepicker" ).datepicker();
			} );
	</script>
</body>
</html>