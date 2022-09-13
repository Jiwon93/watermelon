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
    
    
    <!-- Fontawesome Stylesheet -->
    <script src="https://kit.fontawesome.com/059fbc3cf8.js" crossorigin="anonymous"></script>
    <style type="text/css">
    	.image {
    		float: left;
    	}
    	
    	.explain {
    		clear: both;
    	}
    	
    	th {
    		text-align: center;
    		border-bottom: 2px solid lightgray;
    		color: darkgray;
    	}
    	
    	td {
    		height: 40px;
    		width: 200px;
    	}
    	
    	.btn {
    		border-radius: 5px;
    		height: 45px;
    	}
    </style>
</head>

<body>
    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top p-0">
        <a href="#" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
            <img src="/resources/images/logo.PNG" alt="" style="width: 60px; height: 60px;">
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
    </nav>
    <!-- Navbar End -->


    <!-- Carousel Start -->
    <!-- Carousel End -->
    
    <!-- Service Start -->
    <div class="container-fluid py-4">
		<div class="container-fluid py-5">
			<div class="container">
				<h4 class="pb-4">결제하기</h4>
				<div class="row">
					<div class="col-8 pe-0">
		       			<div class="p-4 border border-2 border-light mb-3">
		           			<h5 class="mb-3">주문내역</h5>
		           			<div class="col-sm-12 pb-5">
		           				<table>
		           					<tr>
		           						<td rowspan="4">
		           							<img alt="" src="/resources/images/main.jpg" style="width: 250px; height: 170px;">
		       							</td>
		           						<td class="px-5">
			           						<h5 style="font-size: 1.1em;">00홈페이지</h5>
		           						</td>
		           					</tr>
		           					<tr>
		           						<!-- <td></td> -->
		           						<td class="px-5" style="width: 500px;">
		           							<p>최신 테마 반응형 홈페이지를 제작해 드립니다.</p>
		           						</td>
		           					</tr>
		           					<tr>
		           						<!-- <td></td> -->
		           						<td></td>
		           					</tr>
		           					<tr>
		           						<!-- <td></td> -->
		           						<td></td>
		           					</tr>
		           				</table>
		           			</div>
		           			<div class="col-sm-12 pb-5">
		           				<table>
		           					<tr>
		           						<th style="text-align: left; width: 500px;">기본항목</th>
		           						<th>수량</th>
		           						<th>작업일</th>
		           						<th style="text-align: right;">가격</th>
		           					</tr>
		           					<tr>
		           						<td>[00홈페이지] 프로페셔널형</td>
		           						<td style="text-align: center;">
		           							<a href="#"><i class="fa-solid fa-square-minus"></i></a>
											<span>1</span>
		           							<a href="#"><i class="fa-solid fa-square-plus"></i></a>
		       							</td>
		           						<td style="text-align: center;">10일</td>
		           						<td style="text-align: right;">10,000,000원</td>
		           					</tr>
		           				</table>
		           			</div>
		           			<div class="col-sm-12">
		           				<table>
		           					<tr>
		           						<td>
		           							<i class="fa-solid fa-check"></i>
		           							<span>반응형 웹</span>
		           						</td>
		           						<td>
		           							<i class="fa-solid fa-check"></i>
		           							<span>소스 코드 제공</span>
		           						</td>
		           					</tr>
		           					<tr>
		           						<td>
		           							<i class="fa-solid fa-check"></i>
		           							<span>맞춤 디자인 제공</span>
		           						</td>
		           						<td>
		           							<i class="fa-solid fa-check"></i>
		           							<span>기능 추가 1개</span>
		           						</td>
		           					</tr>
		           					<tr>
		           						<td>
		           							<i class="fa-solid fa-check"></i>
		           							<span>10페이지</span>
		           						</td>
		           						<td>
		           							<i class="fa-solid fa-check"></i>
		           							<span>수정 2회</span>
		           						</td>
		           					</tr>
		           				</table>
		           			</div>
		       			</div>
	       			</div>
	       			<div class="col-4">
		       			<div class="p-4 border border-2 border-light">
		       				<h5 class="mb-5">최종확인</h5>
		       				<div class="row mb-4">
			       				<div class="col-6 ">
			       					총 상품 금액
			       				</div>
			       				<div class="col-6 text-end" style="font-weight: bold;">
			       					10,000,000 원
			       				</div>
		       				</div>
		       				<div class="row mb-4">
			       				<div class="col-6">
			       					쿠폰 할인
			       				</div>
			       				<div class="col-6 text-end" style="font-weight: bold;">
			       					0 원
			       				</div>
		       				</div>
		       				<div class="row mb-4">
			       				<div class="col-6">
			       					캐시 사용
			       				</div>
			       				<div class="col-6 text-end" style="font-weight: bold;">
			       					0 원
			       				</div>
		       				</div>
		       				<hr>
		       				<div class="row mt-4 mb-5 pt-2">
			       				<div class="col-6">
					       			총 결제 금액		
			       				</div>
			       				<div class="col-6 text-end" style="font-size: 20px; font-weight: bold;">
					       			10,000,000 원		
			       				</div>
		       				</div>
		       				<div style="vertical-align: bottom;">
		       				<div class="col-12 pt-5">
			           			<input type="checkbox" class="form-check-input" name="" id="paymentAgree">
			           			<label class="form-chech-label" for="paymentAgree">
			           				<span style="font-size: small;">주문 내용을 확인하였으며, 결제에 동의합니다.(필수)</span>
			           			</label>
		           			</div>
		           			<div class="col-12 mt-3 mb-3">
		           				<button class="btn btn-primary w-100" data-bs-toggle="modal" data-bs-target="#paymentBtn">결제하기</button>
		           			</div>
		           			<div class="modal fade" id="paymentBtn" aria-labelledby="exampleModalLabel" aria-hidden="true">
							   	   <div class="modal-dialog modal-dialog-centered">
								       <div class="modal-content ">
								       	   <div class="modal-head text-end me-3 mt-3">
								       	   	   <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
								       	   </div>
									       <div class="modal-body text-center">
									       	   <i class="fa-solid fa-circle-check fa-4x"></i>
									           <h5 class="modal-title mt-2" id="exampleModalLabel">주문이 완료되었습니다.</h5><br>
									           <p>이용해주셔서 감사합니다.</p>
									           <div class="row mt-5">
										           <div class="col-6 text-center">
										           	   <button class="btn btn-secondary" data-bs-dismiss="modal" aria-label="Close">취소</button>
										           </div>
										           <div class="col-6 text-center">
										           	   <button class="btn btn-primary" onclick="location.href='#'">확인</button>
										           </div>
									           </div>
									       </div>
								       </div>
							   	   </div>
							   </div>
		           			<div class="col-12">
		           				<p style="font-size: x-small;">상품 제공 완료 후 만렙에게 결제 대금이 전달됩니다.</p>
		           			</div>
		           			</div>
		       			</div>
	       			</div>
       			</div>
       			<div class="p-4 border border-2 border-light mb-3">
           			<h5 class="mb-3">할인 / 캐시사용</h5>
           			<div class="input-group row mb-3">
            			<label for="selectCoupon" class="col-sm-2 col-form-label" >사용 가능한 쿠폰</label>
            			<div class="col-sm-5">
             				<select class="form-select" id="selectCoupon">
             					<option selected>쿠폰선택</option>
             				</select>
            			</div>
           			</div>
       				<div class="input-group row mb-3">
           				<label for="useCash" class="col-sm-2 col-form-label">캐시 사용</label>
            			<div class="col-sm-3">
             				<input type="text" class="form-control" id="useCash" placeholder="0원">
            			</div>
            			<button class="col-sm-1 btn btn-primary" type="button" style="background-color: white; color: #AB7442; height: 38px; border-radius: 5px;">전액사용</button>
           			</div>
       			</div>
       			<div class="p-4 border border-2 border-light mb-3">
           			<h5 class="mb-3">결제방법</h5>
           			<div class="form-check form-check-inline">
                        <input type="radio" class="form-check-input" name="creditCard" id="creditCardP">
                        <label class="form-check-label" for="creditCardP">신용카드</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input type="radio" class="form-check-input" name="" id="">
                        <label class="form-check-label" for="">실시간 계좌이체</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input type="radio" class="form-check-input" name="" id="">
                        <label class="form-check-label" for="">무통장입금</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input type="radio" class="form-check-input" name="" id="">
                        <label class="form-check-label" for="">휴대폰</label>
                    </div>
       			</div>
       			<div class="p-4 border border-2 border-light mb-3">
           			<h5 class="mb-3" style="display: inline;">세금계산서 발행신청</h5>
           			<input type="checkbox" class="form-check-input" name="" id="">
       			</div>
	        </div>
        </div>
    </div>
    <!-- Service End -->
    <!-- Projects Start -->
    <!-- Projects End -->

    <!-- Testimonial Start -->
    <!-- Testimonial End -->

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
</body>

</html>