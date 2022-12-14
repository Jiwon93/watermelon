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

	<!-- Favicon -->
    <link href="/resources/images/logo.PNG" rel="icon">
	<title>memberView</title>

	<link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/sidebars/">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	
	<!-- Fontawesome Stylesheet -->
    <script src="https://kit.fontawesome.com/059fbc3cf8.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
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
	<form id="form" name="form" method="post" onkeydown="returnÂ captureReturnKey(event)" autocomplete="off" enctype="multipart/form-data">
	
	<!-- *Vo.jsp s -->
	<%@include file="../common/memberVo.jsp"%>		<!-- #-> -->
	<!-- *Vo.jsp e -->	
	
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
						<h4>íšŚě›? ę´€ë¦¬</h4>
						<div class="container-fluid">
							<div class="row m-4">
								<div class="col-6">
									<label class="form-label" for="mmSeq">íšŚě›?ë˛?í?¸</label>
									<input type="text" class="form-control" id="mmSeq" value="<c:out value="${item.mmSeq }" />">
								</div>
								<div class="col-6">
									<label class="form-label" for="mmRank">íšŚě›?ë“±ę¸‰</label>
									<input type="text" class="form-control" id="mmRank" name="mmRank" value="<c:out value="${item.mmRank }" />">
								</div>
							</div>
							<div class="row m-4">
								<div class="col-6">
									<label class="form-label" for="mmEmail">ěť´ë©”ěťĽ</label>
									<input type="text" class="form-control" id="mmEmail" name="mmEmail" value="<c:out value="${item.mmEmail }" />">
								</div>
								<div class="col-6">
									<label class="form-label" for="mmPw">ëą„ë°€ë˛?í?¸</label>
									<input type="text" class="form-control" id="mmPw" name="mmPw" value="<c:out value="${item.mmPw }" />">
								</div>
							</div>
							<div class="row m-4">
								<div class="col-6">
									<label class="form-label" for="mmName">ěť´ë¦„</label>
									<input type="text" class="form-control" id="mmName" name="mmName" value="<c:out value="${item.mmName }" />">
								</div>
								<div class="col-6">
									<label class="form-label" for="mmNickname">ë‹‰ë„¤ěž„</label>
									<input type="text" class="form-control" id="mmNickname" name="mmNickname" value="<c:out value="${item.mmNickname }" />">
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<label class="form-label" for="mmGender">ě„±ëł„</label>
									<input type="text" class="form-control" id="mmGender" name="mmGender" value="<c:out value="${item.mmGender }" />">
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="mmBod">ě?ťěťĽ</label>
									<input type="text" class="form-control" id="mmBod" name="mmBod" value="<c:out value="${item.mmBod }" />">
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<label class="form-label" for="mmEmail">Email</label>
									<input type="hidden" id="mmEmailAllowedNy" name="mmEmailAllowedNy" value="0">
									<input type="text" class="form-control" id="mmEmail" name="mmEmail" <c:out value="${dto.mmEmail }"/> placeholder="ěť´ë©”ěťĽěť„ ěž…ë Ąí•´ ěŁĽě„¸ěš”.">
									<div class="invalid-feedback" id="mmEmailFeedback"></div>
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="ccgNameEng" style="display: block;">ěť´ë©”ěťĽ ě •ëł´ ë§?ěĽ€íŚ… ě‚¬ěš© ëŹ™ěť?</label>
									<input type="checkbox" class="form-check-input">
									<label class="form-check-label" for="">ëŹ™ěť?í•©ë‹?ë‹¤.</label>
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<div class="row">
										<div class="col mx-auto">
											<label class="form-label" for="ccgUseNy">í†µě‹ ě‚¬</label>
											<input type="text" class="form-control">
										</div>
										<div class="col mx-auto">
											<label class="form-label" for="ccgUseNy">ëŞ¨ë°”ěťĽ</label>
											<input type="text" class="form-control">
										</div>
									</div>
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="ccgOrder" style="display: block;">í•¸ë“śíŹ° ě •ëł´ ë§?ěĽ€íŚ… ě‚¬ěš© ëŹ™ěť?</label>
									<input type="checkbox" class="form-check-input">
									<label class="form-check-label" for="">ëŹ™ěť?í•©ë‹?ë‹¤.</label>
								</div>
							</div>
							<div class="row m-4">
								<div class="col mx-auto">
									<label class="form-label" for="ccgOrder">ě „í™”ë˛?í?¸</label>
									<input type="text" class="form-control">
								</div>
							</div>
							<div class="row m-4">
								<div class="col-6">
									<label class="form-label" for="mmPostcode">ěŁĽě†Ś</label>
									<div class="row mb-2">
										<div class="col-sm-5">
											<div class="input-group">
												<input class="form-control" type="text" id="mmPostcode" name="mmPostcode" placeholder="ěš°íŽ¸ë˛?í?¸" readonly>	
												<button class="btn btn-light btn-outline-secondary" type="button" onclick="mmExecDaumPostcode()"><i class="fa-solid fa-magnifying-glass"></i></button>
												<button class="btn btn-light btn-outline-secondary" type="button" id="btnAddressClear"><i class="fa-solid fa-x"></i></button>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col mx-auto">
											<input class="form-control" type="text" id="mmRoadAddress" placeholder="ëŹ„ëˇśëŞ…ěŁĽě†Ś" readonly>
										</div>
									</div>
									<div class="row mt-2">
										<div class="col mx-auto">
											<input class="form-control" type="text" id="mmJibunAddress" placeholder="ě§€ë˛?ěŁĽě†Ś" readonly>
										</div>
									</div>
									<span id="guide" style="color:#999;display:none"></span>
									<div class="row mt-2">
										<div class="col mx-auto">
											<input class="form-control" type="text" id="mmDetailAddress" placeholder="ě??ě„¸ěŁĽě†Ś">
										</div>
									</div>
									<div class="row mt-2">
										<div class="col mx-auto">
											<input class="form-control" type="text" id="mmExtraAddress" placeholder="ě°¸ęł í•­ëŞ©" readonly>
										</div>
									</div>
									<div class="row mt-2">
										<div class="col mx-auto">
											<input type="hidden" name="place">
											<input class="form-control" type="text" id="mmLat" name="lat" placeholder="ěś„ëŹ„" readonly>
										</div>
										<div class="col mx-auto">
											<input class="form-control" type="text" id="mmLng" name="lng" placeholder="ę˛˝ëŹ„" readonly>
										</div>
									</div>
								</div>
								<div class="col mx-auto">
									<label class="form-label" for="cgfExplain">ě„¤ëŞ…</label>
									<textarea  class="form-control" id="cgfExplain"></textarea>
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
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=17e90af3c57fa367793d1f57799dd4c9&libraries=services,clusterer,drawing"></script>
	<script src="/resources/xdmin/js/list.js"></script>
	<script src="/resources/xdmin/js/sidebar.js"></script>
	<script src="/resources/xdmin/js/reg.js"></script>
	
	<script type="text/javascript">
	
		var goUrlList = "/member/memberList";
		var goUrlInst = "/member/memberInst";
		var goUrlUpdt = "/member/memberUpdt";
		var goUrlUele = "/member/memberUele";
		var goUrlDele = "/member/memberDele";
	
		var form = $("form[name=form]");
		
		$("#btnSave").on("click", function(){
	   		form.attr("action", goUrlInst).submit();
		}); 
	
		$("#btnList").on("click", function(){
			form.attr("action", goUrlList).submit();
		});
		
		$("#btnUelete").on("click", function(){
			$("input:hidden[name=mmDelNy]").val(1);
			$(".modal-title").text("í™• ěť¸");
			$(".modal-body").text("í•´ë‹ą ëŤ°ěť´í„°ëĄĽ ě‚­ě śí•?ě‹śę˛ ěŠµë‹?ęąŚ ?");
			$("#btnModalUelete").show();
			$("#btnModalDelete").hide();
			$("#modalConfirm").modal("show");
		});
		
	
		$("#btnDelete").on("click", function(){
			$("input:hidden[name=mmDelNy]").val(0);
			$(".modal-title").text("í™• ěť¸");
			$(".modal-body").text("í•´ë‹ą ëŤ°ěť´í„°ëĄĽ ě‚­ě śí•?ě‹śę˛ ěŠµë‹?ęąŚ ?");
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
		//ěą´ěą´ě?¤ ě§€ëŹ„ API
		//ëł¸ ě??ě śě—?ě„śëŠ” ëŹ„ëˇśëŞ… ěŁĽě†Ś í‘śę¸° ë°©ě‹ťě—? ëŚ€í•ś ë˛•ë ąě—? ë”°ëťĽ, ë‚´ë ¤ě?¤ëŠ” ëŤ°ěť´í„°ëĄĽ ěˇ°í•©í•?ě—¬ ě?¬ë°”ëĄ¸ ěŁĽě†ŚëĄĽ ęµ¬ě„±í•?ëŠ” ë°©ë˛•ěť„ ě„¤ëŞ…í•©ë‹?ë‹¤.
	    function mmExecDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // íŚťě—…ě—?ě„ś ę˛€ě?‰ę˛°ęłĽ í•­ëŞ©ěť„ í?´ë¦­í–?ěť„ë•Ś ě‹¤í–‰í•  ě˝”ë“śëĄĽ ěž‘ě„±í•?ëŠ” ë¶€ë¶„.
	
	                // ëŹ„ëˇśëŞ… ěŁĽě†Śěť? ë…¸ě¶ś ę·śěą™ě—? ë”°ëťĽ ěŁĽě†ŚëĄĽ í‘śě‹śí•śë‹¤.
	                // ë‚´ë ¤ě?¤ëŠ” ëł€ě??ę°€ ę°’ěť´ ě—†ëŠ” ę˛˝ěš°ě—” ęłµë°±('')ę°’ěť„ ę°€ě§€ëŻ€ëˇś, ěť´ëĄĽ ě°¸ęł í•?ě—¬ ë¶„ę¸° í•śë‹¤.
	                var roadAddr = data.roadAddress; // ëŹ„ëˇśëŞ… ěŁĽě†Ś ëł€ě??
	                var extraRoadAddr = ''; // ě°¸ęł  í•­ëŞ© ëł€ě??
	                // ë˛•ě •ëŹ™ëŞ…ěť´ ěž?ěť„ ę˛˝ěš° ě¶”ę°€í•śë‹¤. (ë˛•ě •ë¦¬ëŠ” ě śě™¸)
	                // ë˛•ě •ëŹ™ěť? ę˛˝ěš° ë§?ě§€ë§‰ ë¬¸ěž?ę°€ "ëŹ™/ëˇś/ę°€"ëˇś ë?ťë‚śë‹¤.
	                if(data.bname !== '' && /[ëŹ™|ëˇś|ę°€]$/g.test(data.bname)){
	                    extraRoadAddr += data.bname;
	                }
	                // ę±´ë¬ĽëŞ…ěť´ ěž?ęł , ęłµëŹ™ěŁĽí?ťěťĽ ę˛˝ěš° ě¶”ę°€í•śë‹¤.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // í‘śě‹śí•  ě°¸ęł í•­ëŞ©ěť´ ěž?ěť„ ę˛˝ěš°, ę´„í?¸ęąŚě§€ ě¶”ę°€í•ś ěµśě˘… ë¬¸ěž?ě—´ěť„ ë§Śë“ ë‹¤.
	                if(extraRoadAddr !== ''){
	                    extraRoadAddr = ' (' + extraRoadAddr + ')';
	                }
	
	                // ěš°íŽ¸ë˛?í?¸ě™€ ěŁĽě†Ś ě •ëł´ëĄĽ í•´ë‹ą í•„ë“śě—? ë„ŁëŠ”ë‹¤.
	                document.getElementById('mmPostcode').value = data.zonecode;
	                document.getElementById("mmRoadAddress").value = roadAddr;
	                document.getElementById("mmJibunAddress").value = data.jibunAddress;
	                
	                // ě°¸ęł í•­ëŞ© ë¬¸ěž?ě—´ěť´ ěž?ěť„ ę˛˝ěš° í•´ë‹ą í•„ë“śě—? ë„ŁëŠ”ë‹¤.
	                if(roadAddr !== ''){
	                    document.getElementById("mmExtraAddress").value = extraRoadAddr;
	                } else {
	                    document.getElementById("mmExtraAddress").value = '';
	                }
	
	                var guideTextBox = document.getElementById("guide");
	                // ě‚¬ěš©ěž?ę°€ 'ě„ í?ť ě•?í•¨'ěť„ í?´ë¦­í•ś ę˛˝ěš°, ě??ě?? ěŁĽě†ŚëťĽëŠ” í‘śě‹śëĄĽ í•´ě¤€ë‹¤.
	                if(data.autoRoadAddress) {
	                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
	                    guideTextBox.innerHTML = '(ě??ě?? ëŹ„ëˇśëŞ… ěŁĽě†Ś : ' + expRoadAddr + ')';
	                    guideTextBox.style.display = 'block';
	
	                } else if(data.autoJibunAddress) {
	                    var expJibunAddr = data.autoJibunAddress;
	                    guideTextBox.innerHTML = '(ě??ě?? ě§€ë˛? ěŁĽě†Ś : ' + expJibunAddr + ')';
	                    guideTextBox.style.display = 'block';
	                } else {
	                    guideTextBox.innerHTML = '';
	                    guideTextBox.style.display = 'none';
	                }
	                
	                /* lat and lng from address s */
	 				
	                var geocoder = new daum.maps.services.Geocoder();
	    			
	    			// ěŁĽě†Śëˇś ě˘Śí‘śëĄĽ ę˛€ě?‰
	    			geocoder.addressSearch(roadAddr, function(result, status) {
	    			 
	    				// ě •ě??ě ?ěśĽëˇś ę˛€ě?‰ěť´ ě™„ëŁŚë??ěśĽë©´,
	    				if (status == daum.maps.services.Status.OK) {
	    					
	    					document.getElementById("mmLat").value=result[0].y;
	    					document.getElementById("mmLng").value=result[0].x;
	    				}
	    			});
	    			/* lat and lng from address e */
	                
	            }
	        }).open();
 
	    }
		
	    
		$("#btnAddressClear").on("click", function(){
			$("#mmPostcode").val('');
			$("#mmRoadAddress").val('');
			$("#mmJibunAddress").val('');
			$("#mmDetailAddress").val('');
			$("#mmExtraAddress").val('');
			$("#mmLat").val('');
			$("#mmLng").val('');
		});
		
	</script>
	
	<!-- <script type="text/javascript">
		
		
		function mmExecDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
			// ěŁĽě†Ś-ě˘Śí‘ś ëł€í™? ę°ťě˛´ëĄĽ ě?ťě„±
			var geocoder = new daum.maps.services.Geocoder();
			
			// ěŁĽě†Śëˇś ě˘Śí‘śëĄĽ ę˛€ě?‰
			geocoder.addressSearch(roadAddr, function(result, status) {
			 
				// ě •ě??ě ?ěśĽëˇś ę˛€ě?‰ěť´ ě™„ëŁŚë??ěśĽë©´,
				if (status == daum.maps.services.Status.OK) {
					
					document.getElementById("mmLat").value=result[0].y;
					document.getElementById("mmLng").value=result[0].x;
				}
			});
			/* lat and lng from address e */
	            }
	</script> -->
</body>
</html>


