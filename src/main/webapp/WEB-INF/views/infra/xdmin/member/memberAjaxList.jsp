<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<jsp:useBean id="CodeServiceImpl" class="com.lifemanlab.shop.modules.code.CodeServiceImpl"/>

<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>member</title>
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
		
		.tableHead1 {
			width: 40px;
			text-align: center;
		}

		.listCheck {
			text-align: center;
			justify-content: center;
		}
	</style>
	
	<link href="/resources/xdmin/css/list.css" rel="stylesheet">
</head>
<body>
	<form method="post" name="formList" id="formList" >
		<input type="hidden" name="mmSeq" value="${dto.mmSeq }">
		<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage }" default="1"/>">
		<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow }"/>">
		<input type="hidden" name="checkboxSeqArray">
		
		<!-- *header.jsp s -->
		<%@include file="../common/header.jsp"%>		<!-- #-> -->
		<!-- *header.jsp e -->
		
		<div class="container-fluid mt-5 ps-0">
			<div class="row mt-4">
			
				<!-- *sidebar.jsp s -->
				<%@include file="../common/sidebar.jsp"%>		<!-- #-> -->
				<!-- *sidebar.jsp e -->
				
				<div class="col-10">
					<div class="row">
						<h4>회원 목록</h4>
						<div class="col border me-4">
							<div class="row mt-2 mb-2">
								<div class="col-2 p-1">
									<select id="shDelNy" name="shDelNy" class="form-select">
										<option value="" <c:if test="${empty vo.shDelNy }">selected</c:if>selected>삭제여부</option>
										<option value="0" <c:if test="${vo.shDelNy eq 0 }">selected</c:if>>N</option>
										<option value="1" <c:if test="${vo.shDelNy eq 1 }">selected</c:if>>Y</option>
									</select>
								</div>
								<div class="col-2 p-1">
									<select class="form-select" name="shOptionDate">
										<option value="" <c:if test="${empty vo.shOptionDate }">selected</c:if>>날짜선택</option>
										<option value="1" <c:if test="${vo.shOptionDate eq 1 }">selected</c:if>>등록일</option>
										<option value="2" <c:if test="${vo.shOptionDate eq 2 }">selected</c:if>>수정일</option>
									</select>
								</div>
								<div class="col-2 p-1">
									<fmt:parseDate var="shDateStart" value="${vo.shDateStart }" pattern="yyyy-MM-dd HH:mm:ss"/>
            						<input type="text" id="shDateStart" name="shDateStart" value="<fmt:formatDate value="${shDateStart }" pattern="yyyy-MM-dd" />" placeholder="시작일" class="form-control form-control-sm" autocomplete="off">
								</div>
								<div class="col-2 p-1">
									<fmt:parseDate var="shDateEnd" value="${vo.shDateEnd }" pattern="yyyy-MM-dd HH:mm:ss" />
      							  	<input type="text" id="shDateEnd" name="shDateEnd" value="<fmt:formatDate value="${shDateEnd }" pattern="yyyy-MM-dd"/>" placeholder="종료일" class="form-control form-control-sm" autocomplete="off">
								</div>
							</div>
							<div class="row mb-2">
								<div class="col-2 p-1">
									<select id="shOption" name="shOption" class="form-select">
										<option value="" <c:if test="${empty vo.shOption }">selected</c:if>>검색구분</option>
										<option value="1" <c:if test="${vo.shOption eq 1 }">selected</c:if>>이름</option>
										<option value="2" <c:if test="${vo.shOption eq 2 }">selected</c:if>>등급</option>
										<option value="3" <c:if test="${vo.shOption eq 3 }">selected</c:if>>이메일</option>
										<option value="4" <c:if test="${vo.shOption eq 4 }">selected</c:if>>닉네임</option>
										<option value="5" <c:if test="${vo.shOption eq 5 }">selected</c:if>>비밀번호</option>
										<option value="6" <c:if test="${vo.shOption eq 6 }">selected</c:if>>직업</option>
										<option value="7" <c:if test="${vo.shOption eq 7 }">selected</c:if>>성별</option>
										<option value="8" <c:if test="${vo.shOption eq 8 }">selected</c:if>>관심분야</option>
										<option value="9" <c:if test="${vo.shOption eq 9 }">selected</c:if>>생일</option>
										<option value="10" <c:if test="${vo.shOption eq 10 }">selected</c:if>>주소</option>
									</select>
								</div>
								<div class="col-2 p-1">
									<input id="shValue" name="shValue" value="<c:out value="${vo.shValue }"/>" class="form-control" type="text" placeholder="검색어">
								</div>
								<div class="col-1 p-1">
									<button class="btn btn-warning" id="btnSearch"><i class="fa-solid fa-magnifying-glass"></i></button>
									<button class="btn btn-danger" id="btnReset" type="button"><i class="fa-solid fa-arrow-rotate-right"></i></button>
								</div>
							</div>
						</div>
					</div>
					<div id="Lisa"></div>						
						<div class="row p-0">
							<div class="col">
								<button class="btn btn-danger" type="button" id="btnUele">
									<i class="fa-duotone fa-x"></i>
								</button>
								<button class="btn btn-danger" type="button" id="btnDel">
									<i class="fa-regular fa-trash-can"></i>
								</button>
							</div>
							<div class="col" style="text-align: right;">
								<button class="btn btn-success" type="button" id="btnExcel">
									<i class="fa-regular fa-file-excel"></i>
								</button>
								<button class="btn btn-primary" type="button" id="btnPlus">
									<i class="fa-regular fa-plus"></i>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Footer Start -->
		<footer>
		    <div class="container-fluid bg-dark text-light footer py-5 mt-5">
		    	<div class="container">
		            <div class="copyright">
		                <div class="row">
		                    <div class="col text-center">
		                        Copyright &copy; 2022&nbsp;<a class="border-bottom" style="text-decoration: none;">ISML</a>&nbsp;lnc, All Right Reserved.
		                    </div>
		                </div>
		                <div class="row">
		                    <div class="col text-center">
		                        Designed By <a class="border-bottom" style="text-decoration: none;">HTML Codex</a>
		                    </div>
		                </div>
		            </div>
		        </div>
		    </div>
	    </footer>
	    <!-- Footer End -->
	</form>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script src="/resources/xdmin/js/sidebar.js"></script>
	<script>
		$(document).ready(function(){
			divSearchControl();
			$("#shDateStart, #shDateEnd").datepicker();
			
			setLita();
		}); 
		
		var goUrlAjaxList = "/member/memberAjaxList";
		var goUrlAjaxLita = "/member/memberAjaxLita";
		var goUrlList = "/member/memberList";
		var goUrlForm = "/member/memberForm";
		var goUrlView = "/member/memberView";
		var goUrlInst = "/member/memberInst";
		var goUrlUpdt = "/member/memberUpdt";
		var goUrlUele = "/member/memberUele";
		var goUrlDele = "/member/memberDele";
		var excelUri = "/member/excelDownload";

		var form = $("form[name=formList]");

		var seq = $("input:hidden[name=mmSeq]");
		
		var checkboxSeqArray = [];
		
		$("#btnSearch").on("click", function() {
			form.attr("action", goUrlList).submit();
		});

		$("#btnReset").on("click", function() {
			$(location).attr("href", goUrlList);
		});
		
		$("#btnMmList").on("click", function(){
			form.attr("action", goUrlList).submit();
		});
		
		$("#btnPlus").on("click", function(){
			$(location).attr("href", goUrlForm);
		});

		goList = function(thisPage) {
			$("input:hidden[name=thisPage]").val(thisPage);
			form.attr("action", goUrlList).submit();
		}
		
		goForm = function(keyValue) {
			seq.val(keyValue);
			form.attr("action", goUrlForm).submit();
		}
		
		goView = function(keyValue) {
	    	/* if(keyValue != 0) seq.val(btoa(keyValue)); */
	    	seq.val(keyValue);
			form.attr("action", goUrlView).submit();
		}
		
		$("#btnExcel").click(function() {
			form.attr("action", excelUri).submit();
		});
		
		var page = 0;
		
		function setLita() {
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: goUrlLita
				,data : $("#formList").serialize()
				/* ,data : {  } */
				,success: function(response) {
					$("#lita").empty();
					$("#lita").append(response);
					window.location.hash = '#page' + page;
					page++;

				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
		}
		
		$(window).bind('hashchange', function() { 
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: goUrlLita
				,data : $("#formList").serialize()
				/* ,data : {  } */
				,success: function(response) {
					$("#lita").empty();
					$("#lita").append(response);
					window.location.hash = '#page' + page;
		

				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
		});
		
		
		function setHash() {
			if(location.hash == "" || location.hash == null){
				alert("hash is empty");
			}
		}
	</script>
</body>
</html>