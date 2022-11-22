<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>혼자서 할 수 없던 것 | 인생만렙에서 만렙들과 해보세요.</title>
    <%@ include file="../../common/basicSetting.jsp" %>
    
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
    	
    </style>
</head>

<body>
<form method="get" id="form" name="form" autocomplete="off" enctype="multipart/form-data">
    <input type="hidden" id="sessSeq" name="sessSeq" value="${sessSeq }">
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

    <!-- Service Start -->
    <div class="container-fluid py-4">
		<div class="container-fluid py-5">
			<div class="container">
				<h4 class="pb-4">결제하기</h4>
				<div class="row">
					<div class="col-8 pe-0">
		       			<div class="p-4 border border-2 border-light mb-3" style="height: 580px;">
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
		           							<a type='button' onclick='count("minus")'><i class="fa-solid fa-square-minus"></i></a>
											<span id="result">1</span>
		           							<a type='button' onclick='count("plus")'><i class="fa-solid fa-square-plus"></i></a>
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
		       			<div class="p-4 border border-2 border-light" style="height: 580px;">
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
			           			<input type="checkbox" class="form-check-input" name="paymentAgree" id="paymentAgree">
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
       			<!-- 
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
       			 -->
       			<div class="p-4 border border-2 border-light mb-3">
           			<h5 class="mb-3">결제방법</h5>
           			<div class="form-check form-check-inline mb-3">
                        <input type="radio" class="form-check-input" name="paymentMethod" id="paymentBasic" value="일반결제">
                        <label class="form-check-label" for="creditCardP">일반결제</label>
                    </div>
           			<div class="border border-2 border-light p-3 rounded-3 mb-3" id="payment" style="display: none;">
	           			<div class="form-check form-check-inline">
	                        <input type="radio" class="form-check-input" name="creditCard" id="">
	                        <label class="form-check-label" for="creditCardP">신용카드</label>
	                    </div>
	                    <div class="form-check form-check-inline">
	                        <input type="radio" class="form-check-input" name="creditCard" id="">
	                        <label class="form-check-label" for="">실시간 계좌이체</label>
	                    </div>
	                    <div class="form-check form-check-inline">
	                        <input type="radio" class="form-check-input" name="creditCard" id="">
	                        <label class="form-check-label" for="">무통장입금</label>
	                    </div>
	                    <div class="form-check form-check-inline">
	                        <input type="radio" class="form-check-input" name="creditCard" id="">
	                        <label class="form-check-label" for="">휴대폰</label>
	                    </div>
                    </div>
                    <div class="form-check form-check-inline">
                        <input type="radio" class="form-check-input" name="paymentMethod" id="paymentKakao" value="카카오페이">
                        <label class="form-check-label" for="creditCardP">카카오페이</label>
                    </div>
       			</div>
       			<!-- 
       			<div class="p-4 border border-2 border-light mb-3">
           			<h5 class="mb-3" style="display: inline;">세금계산서 발행신청</h5>
           			<input type="checkbox" class="form-check-input" name="" id="">
       			</div>
       			 -->
	        </div>
        </div>
    </div>
    <!-- Service End -->
    <!-- Projects Start -->
    <!-- Projects End -->

    <!-- Testimonial Start -->
    <!-- Testimonial End -->

    <!-- Footer Start -->
    <%@include file="../common/footer.jsp"%>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-0 back-to-top"><i class="bi bi-arrow-up"></i></a>
</form>

    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    
    <!-- iamport.payment.js -->
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-{SDK-최신버전}.js"></script>
    
    <script type="text/javascript">
    	var goUrlHome = "/member/memberHome";
    	var goUrlMypage = "/member/memberViewC";
    	var goUrlMemberMod = "/member/memberModFormC";
    	var goUrlSaleManage = "/member/saleManage";
    	var goUrlPurchaseHistory = "/member/purchaseHistory";
    	var goUrlItemMenu = "/item/itemMenu";
    	
    	$("#btnHome").on("click", function(){
	   		$(location).attr("href", goUrlHome);
		});
    	
    	$("#btnMypage").on("click", function(){
	   		$(location).attr("href", goUrlMypage);
		});
    	
    	$("#btnMemberMod").on("click", function(){
	   		$(location).attr("href", goUrlMemberMod);
		});
    	
    	$("#btnSaleManage").on("click", function(){
	   		$(location).attr("href", goUrlSaleManage);
		});
    	
    	$("#btnPurchaseHistory").on("click", function(){
	   		$(location).attr("href", goUrlPurchaseHistory);
		});
    	
    	$("#btnItemMenu").on("click", function(){
	   		$(location).attr("href", goUrlItemMenu);
		});
    	
    	function count(type)  {
   		  // 결과를 표시할 element
   		  const resultElement = document.getElementById('result');
   		  
   		  // 현재 화면에 표시된 값
   		  let number = resultElement.innerText;
   		  
   		  // 더하기/빼기
   		  if(type === 'plus') {
   		    number = parseInt(number) + 1;
   		  }else if(type === 'minus' && number >= 2)  {
   		    number = parseInt(number) - 1;
   		  }
   		  
   		  // 결과 출력
   		  resultElement.innerText = number;
   		}
    	
    	/*
    	$("#paymentBtn").on("click", function(){
    		if($('input:checkbox[name="paymentAgree"]').is(":checked") == true) {
    			$('#paymentBtn').modal();
    		} else {
    			alert("결제 동의에 체크해주세요.");
    			return false;
    		}
    	});
    	*/
    	$(document).ready(function(){
    		$("input[name='paymentMethod']").change(function(){
    			// 일반 결제 선택 시
    			if($("input:radio[name=paymentMethod]:checked").val() == '일반결제'){
   					$('#payment').show();
   				// 카카오 페이 결제 선택 시
    			} else if($("input:radio[name=paymentMethod]:checked").val() == '카카오페이'){
    				$('#payment').hide();
    			}
    		});
    	});
    	
    </script>
    <script type="text/javascript">
    	
    </script>
</body>

</html>