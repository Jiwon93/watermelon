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
    
    <link href="/resources/css/user/nav.css" rel="stylesheet">
    
    <!-- Fontawesome Stylesheet -->
    <script src="https://kit.fontawesome.com/059fbc3cf8.js" crossorigin="anonymous"></script>
    
    <style type="text/css">
    
    	table {
    		border-collapse: separate;
    		border-spacing: 3px;
    	}
    
    	label {
    		font-weight: bold;
    	}
    	
    	.input-group {
    		border-radius: 5px;
    	}
    	
    	.saleRegF {
    		border: 1px solid gray;
    		border-radius: 5px;
    		height: 100%;
    	}
    	
    	.saleRegMenu {
    		border: 1px solid lightgray;
    		border-radius: 5px;
    		margin: 10px;
    	}
    	
    	th {
    		width: 160px;
    		height: 40px;
    		text-indent: 10px;
    		border-radius: 5px;
    	}
    	
    	th, td {
    		background-color: #FAFAFC;
    	}
    	
    	.checkOption {
    		text-align: right;
    	}
    	
    	.form-check-input {
    		margin-right: 10px;
    	}
    	
    	.form-select {
    		width: 840px;
    	}
    	
    	p {
    		font-weight: bold;
    		margin: 15px;
    	}
    </style>
</head>

<body>
<form method="get" id="form" name="form" autocomplete="off" enctype="multipart/form-data">
    <input type="hidden" id="sessSeq" name="sessSeq" value="${sessSeq }">
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
	            	<button class="btn btn-primary" type="button">만렙등록</button>
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
									<input class="form-control" type="text" style="width: 1000px;" placeholder="서비스를 잘 드러낼 수 있는 제목을 입력해주세요">
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
									<select class="form-select">
										<option selected>선택해주세요</option>
										<option></option>
										<option></option>
									</select>
								</td>
							</tr>
							<tr>
								<th>하위 카테고리</th>
								<td>
									<select class="form-select">
										<option selected>선택해주세요</option>
										<option></option>
										<option></option>
									</select>
								</td>
							</tr>
							<tr>
								<th>3차 카테고리</th>
								<td>
									<select class="form-select">
										<option selected>선택해주세요</option>
										<option></option>
										<option></option>
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
									<select class="form-select">
										<option selected>선택해주세요</option>
										<option></option>
										<option></option>
									</select>
								</td>
							</tr>
							<tr>
								<th>팀 규모</th>
								<td>
									<select class="form-select">
										<option selected>선택해주세요</option>
										<option></option>
										<option></option>
									</select>
								</td>
							</tr>
							<tr>
								<th>상주 여부</th>
								<td>
									<select class="form-select">
										<option selected>선택해주세요</option>
										<option></option>
										<option></option>
									</select>
								</td>
							</tr>
							<tr>
								<th>카테고리</th>
								<td>
									<select class="form-select">
										<option selected>선택해주세요</option>
										<option></option>
										<option></option>
									</select>
								</td>
							</tr>
							<tr>
								<th>개발 언어</th>
								<td>
									<select class="form-select">
										<option selected>선택해주세요</option>
										<option></option>
										<option></option>
									</select>
								</td>
							</tr>
							<tr>
								<th>프레임워크</th>
								<td>
									<select class="form-select">
										<option selected>선택해주세요</option>
										<option></option>
										<option></option>
									</select>
								</td>
							</tr>
							<tr>
								<th>라이브러리</th>
								<td>
									<select class="form-select">
										<option selected>선택해주세요</option>
										<option></option>
										<option></option>
									</select>
								</td>
							</tr>
							<tr>
								<th>DBMS</th>
								<td>
									<select class="form-select">
										<option selected>선택해주세요</option>
										<option></option>
										<option></option>
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
									<input class="form-control" type="text" style="width: 840px;" placeholder="ex. 00 웹사이트">
								</td>
							</tr>
							<tr>
								<th>설명</th>
								<td>
									<textarea class="form-control" placeholder="-메인페이지 시안 1개 제공, 공지사항, FAQ 페이지, SNS로그인 연동"></textarea>
								</td>
							</tr>
							<tr>
								<th>금액(VAT 포함)</th>
								<td>
									<input class="form-control" type="text" placeholder="서비스를 잘 드러낼 수 있는 제목을 입력해주세요">
								</td>
							</tr>
							<tr>
								<th>작업 기간</th>
								<td>
									<select class="form-select">
										<option selected>선택해주세요</option>
										<option></option>
										<option></option>
									</select>
								</td>
							</tr>
							<tr>
								<th>수정 횟수</th>
								<td>
									<select class="form-select">
										<option selected>선택해주세요</option>
										<option></option>
										<option></option>
									</select>
								</td>
							</tr>
							<tr>
								<th>반응형 웹</th>
								<td class="checkOption"><input type="checkbox" class="form-check-input"></td>
							</tr>
							<tr>
								<th>콘텐츠 업로드</th>
								<td class="checkOption"><input type="checkbox" class="form-check-input"></td>
							</tr>
							<tr>
								<th>소스 코드 제공</th>
								<td class="checkOption"><input type="checkbox" class="form-check-input"></td>
							</tr>
							<tr>
								<th>맞춤 디자인 제공</th>
								<td class="checkOption"><input type="checkbox" class="form-check-input"></td>
							</tr>
							<tr>
								<th>기능 추가</th>
								<td>
									<select class="form-select">
										<option selected>선택해주세요</option>
										<option></option>
										<option></option>
									</select>
								</td>
							</tr>
							<tr>
								<th>페이지 수</th>
								<td>
									<input class="form-control" type="text" placeholder="입력해주세요">
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
								<td class="checkOption" style="width: 840px;"><input type="checkbox" class="form-check-input"></td>
							</tr>
							<tr>
								<th>추가 수정</th>
								<td class="checkOption"><input type="checkbox" class="form-check-input"></td>
							</tr>
							<tr>
								<th>반응형 웹</th>
								<td class="checkOption"><input type="checkbox" class="form-check-input"></td>
							</tr>
							<tr>
								<th>콘텐츠 업로드</th>
								<td class="checkOption"><input type="checkbox" class="form-check-input"></td>
							</tr>
							<tr>
								<th>소스 코드 제공</th>
								<td class="checkOption"><input type="checkbox" class="form-check-input"></td>
							</tr>
							<tr>
								<th>맞춤 디자인 제공</th>
								<td class="checkOption"><input type="checkbox" class="form-check-input"></td>
							</tr>
							<tr>
								<th>기능 추가</th>
								<td class="checkOption"><input type="checkbox" class="form-check-input"></td>
							</tr>
							<tr>
								<th>페이지 추가</th>
								<td class="checkOption"><input type="checkbox" class="form-check-input"></td>
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
						<p>가격정보</p>
					</div>
					<div class="col">
						<table class="m-2">
							<tr>
								<th>서비스 설명</th>
								<td>
									<textarea class="form-control" style="width: 840px;" rows="15" placeholder=""></textarea>
								</td>
							</tr>
							<tr>
								<th>서비스 제공 절차</th>
								<td>
									<textarea class="form-control" rows="15" placeholder=""></textarea>
								</td>
							</tr>
							<tr>
								<th>의뢰인 준비사항</th>
								<td>
									<textarea class="form-control" rows="15" placeholder=""></textarea>
								</td>
							</tr>
							<tr>
								<th>취소 및 환불 규정</th>
								<td>
									<a class="btn btn-outline-primary w-100" href="#">[IT 프로그래밍>웹] 취소 및 환불 규정 보기</a>
								</td>
							</tr>
							<tr>
								<th>자주묻는질문</th>
								<td>
									<a class="btn btn-outline-primary w-100" href="#">+질문 추가</a>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<div class="row m-2 mt-5 mb-3">
				<h5>4. 이미지</h5>
			</div>
			<div class="row m-2 mt-5 mb-3">
				<h5>5. 요청사항</h5>
			</div>
			<div class="saleRegMenu">
				<div class="row">
					<div class="col-2 pe-0">
						<p>가격정보</p>
					</div>
					<div class="col">
						<table class="m-2">
							<tr>
								<th>작업전 요청사항(선택)</th>
								<td>
									<a class="btn btn-outline-primary w-100" href="#">+요청사항 추가</a>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
    <!-- Footer Start -->
    <div class="container-fluid bg-dark text-light footer mt-5 pt-5">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-lg-4 col-md-6">
                    <h5 class="text-light mb-4">문의</h5>
                    <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>1599-9999</p>
                    <p class="mb-2">10:00 ~ 18:00(점심시간 13:00 ~ 14:00)</p>
                    <p class="mb-2">주말, 공휴일 휴무</p>
                    <div class="d-flex pt-2">
                        <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-youtube"></i></a>
                        <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-linkedin-in"></i></a>
                    </div>
                    <div class="pt-2">
                    	<button href="" class="btn btn-primary w-75" type="button">1:1문의</button>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6">
                    <h5 class="text-light mb-4">인생만렙</h5>
                    <a class="btn btn-link" href="">회사소개</a>
                    <a class="btn btn-link" href="">채용안내</a>
                    <a class="btn btn-link" href="">서비스소개</a>
                </div>
                <div class="col-lg-2 col-md-6">
                    <h5 class="text-light mb-4">만렙안내</h5>
                    <a class="btn btn-link" href="">이용안내</a>
                    <a class="btn btn-link" href="">만렙가이드</a>
                    <a class="btn btn-link" href="">만렙등록</a>
                    <a class="btn btn-link" href="">만렙센터</a>
                </div>
                <div class="col-lg-2 col-md-6">
                    <h5 class="text-light mb-4">고객안내</h5>
                    <a class="btn btn-link" href="">이용안내</a>
                    <a class="btn btn-link" href="">안전정책</a>
                    <a class="btn btn-link" href="">예상금액</a>
                    <a class="btn btn-link" href="">인생만렙보증</a>
                    <a class="btn btn-link" href="">인생만렙찾기</a>
                </div>
                <div class="col-lg-2 col-md-6">
                    <h5 class="text-light mb-4">고객센터</h5>
                    <a class="btn btn-link" href="">공지사항</a>
                    <a class="btn btn-link" href="">자주묻는질문</a>
                </div>
            </div>
        </div>
        <div class="container">
        	<div class="row py-1">
        		<div class="col text-center">
        			이용약관
        		</div>
        		<div class="col text-center">
        			개인정보처리방침
        		</div>
        		<div class="col text-center">
        			사업자 정보확인
        		</div>
        	</div>
        	<div class="row">
        		<div class="col text-center">
        			<p class="m-0">
        				(주)인생만렙은 통신판매중개자로서 통신판매의 당사자가 아니면 개별 판매자가 제공하는 서비스에 대한 이행, 
        				계약사항 등과 관련한 의무와 책임은 거래당사자에게 있습니다.
        			</p>
        		</div>
        	</div>
        </div>
        <div class="container">
        	<div class="row">
        		<div class="col text-center">
        			<p class="m-0">
        				상호명: (주)인생만렙 대표이사: 신지원 개인정보책임관리자: 신지원 주소: 서울특별시 서초구 서초대로77길 55,에이프로스퀘어 3층
        			</p>
        		</div>
        	</div>
        	<div class="row">
        		<div class="col text-center">
        			<p class="m-0">
        				사업자등록번호: 000-00-00000 통신판매업신고증: 제 2022-서울강남-00000호 직업정보제공사업 신고번호: 서울청 제 2022-00호
        			</p>
        		</div>
        	</div>
        	<div class="row">
        		<div class="col text-center">
        			<p class="m-0 mb-2">
        				고객센터: 1599-9999 이메일: support@insaengmanlab.com
        			</p>
        		</div>
        	</div>
        </div>
        <div class="container">
            <div class="copyright">
                <div class="row">
                    <div class="col text-center">
                        Copyright &copy; 2022&nbsp;<a class="border-bottom" href="#">ISML</a>&nbsp;lnc, All Right Reserved.
                    </div>
                </div>
                <div class="row">
                    <div class="col text-center">
                        <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                        Designed By <a class="border-bottom" href="https://htmlcodex.com">HTML Codex</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
    
    <script type="text/javascript">
    	var goUrlHome = "/member/memberHome";
    	
    	$("#btnHome").on("click", function(){
	   		$(location).attr("href", goUrlHome);
		});
    </script>
</body>

</html>