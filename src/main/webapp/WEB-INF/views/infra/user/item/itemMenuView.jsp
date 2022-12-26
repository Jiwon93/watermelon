<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>혼자서 할 수 없던 것 | 인생만렙에서 만렙들과 해보세요.</title>
    <%@ include file="../common/basicCss.jsp" %>
    
	<!-- CSS -->
    <link href="/resources/user/css/itemMenuView.css" rel="stylesheet">
</head>

<body>
<form method="post" id="form" name="form" autocomplete="off">
	<input type="hidden" id="sessSeq" name="sessSeq" value="${sessSeq }">
	<input type="hidden" name="itemSeq" value="${vo.itemSeq }">
	<div class="container-fluid">
    <!-- Navbar Start -->
    <%@include file="../common/nav.jsp"%>
    <!-- Navbar End -->
	    <!-- Service Start -->
	    <div class="container py-5">
        	<div class="row">
	        	<div class="col-8 pe-5">
	        		<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
						<ol class="breadcrumb">
					    	<li class="breadcrumb-item"><a href="#">홈</a></li>
					    	<li class="breadcrumb-item"><a href="#">개발/디자인</a></li>
					    	<li class="breadcrumb-item active" aria-current="page">웹</li>
						</ol>
					</nav>
	        		<div class="row text-center">
	        			<div class="col-12">
	        				<img class="mainImage col-12" src="<c:out value="${item.path }"/><c:out value="${item.uuidName }"/>">
	       				</div>
	       				<div class="col-12 mt-4">
		        			<i class="fa-solid fa-star" style="color: #FFD400;"></i>
		       				<i class="fa-solid fa-star" style="color: #FFD400;"></i>
		       				<i class="fa-solid fa-star" style="color: #FFD400;"></i>
		       				<i class="fa-solid fa-star" style="color: #FFD400;"></i>
		       				<i class="fa-solid fa-star" style="color: #FFD400;"></i>
		       				<span style="font-size: 1.2em; font-weight: bold;">5.0</span>
		       				<span style="color: #9A9BA7;">(28개의 평가)</span>
	       				</div>	
	       				<div class="col-12 mt-5">
	       					<nav id="productMenu">
		       					<ul class="nav nav-tabs">
								    <li class="nav-item col-3">
								    	<a class="nav-link active" aria-current="page" href="#productMenu1"><h5>상품 설명</h5></a>
								    </li>
								    <li class="nav-item col-3">
								    	<a class="nav-link" href="#productMenu2"><h5>가격 정보</h5></a>
								    </li>
								    <li class="nav-item col-3">
								    	<a class="nav-link" href="#productMenu3"><h5>취소 환불</h5></a>
								    </li>
								  	<li class="nav-item col-3">
								    	<a class="nav-link" href="#productMenu4"><h5>후기</h5></a>
								  	</li>
								</ul>
							</nav>
	       				</div>
	       				<div class="col-12 text-start mt-4">
	       					<br>
	       					<h5 id="productMenu1">상품 설명</h5>
	       					<article>
	       						
	       						<!-- 
	       						안녕하세요. 00홈페이지 입니다.<br>
	       						00홈페이지는 지난 00년간 3,000개 이상의 홈페이지를 제작해 왔습니다.<br>
	       						00홈페이지는 퀄리티가 높은 테마를 제공합니다.<br>
	       						게시판 프로그램 스킨도 직접 개발 보유하고 있습니다.<br>
	       						00홈페이지는 각종 폰트 및 디자인 저작권을 보유하고 있습니다.<br>
	       						00홈페이지는 소통이 쉬운 고객상담을 최우선으로 합니다.<br>
	       						한번 인연을 맺으면 반드시 다른 기업의 홈페이지 제작추천을 소개 받는 곳입니다.<br>
	       						감사합니다.<br><br><br>
	       						▶00홈페이지 기본 서비스<br>
	       						-도메인 1년, 호스팅 1년(하드 3기가, 트래픽 3기가 제공) 무료<br>
	       						→ 1년 후에는 도메인 2만원, 호스팅 10만원 입니다.<br>
	       						-팝업관리(반응형, 일반)<br>
	       						-자사 개발 다양한 게시판 스킨 제공<br>
	       						-검색엔진 최적화<br>
	       						-퀄리티가 좋은 수 십개의 테마 제공<br>
	       						-글자수정, 단순오류 등은 끝까지 관리<br><br><br>
	       						▶절차<br>
	       						1. 충분한 상담(미리 참조하신 사이트가 있으면 상담이 수월합니다.)<br>
	       						2. 자료 준비 및 작업 방향 협의<br>
	       						3. 디자인 진행(기본테마 선택 후 진행, 새로운 디자인 제작시 견적 상향될 수 있습니다.)<br>
	       						4. 수정(1차 완료 후 2~3회 이내 수정 가능)<br>
	       						5. 완료(유지보수 필요시 별도 계약 진행)<br>
	       						→ 기획안이 정확하지 않을 시 일정이 추가될 수 있습니다.<br><br>
	       						 -->
	       						 <label for="ifmmDesc" class="form-label">설명</label>
					        	<%-- <textarea id="ifmmDesc" name="ifmmDesc" class="form-control" rows="4"><c:out value="${item.ifmmDesc }"/></textarea> --%>
					        	<p><c:out value="${fn:replace(item.itServiceDetail, br, '<br/>')}" escapeXml = "false"/></p> 
								<%-- <p><c:out value="${item.ifmmDesc}" /></p> --%>
	       						<hr>
	       					</article>
	       				</div>
	       				<div class="col-12 text-start mt-4">
	       					<h5 id="productMenu2">가격 정보</h5>
	       					<table class="priceInfo">
	       						<tr>
		       						<th class="priceHead"></th>
		       						<th class="priceHead">basic<br>550,000원</th>
		       						<th class="priceHead">best<br>750,000원</th>
		       						<th class="priceHead">professional<br>1,320,000원</th>
	       						</tr>
	       						<tr>
	       							<td class="priceBody">패키지 설명</td>
	       							<td class="priceBody">
	       								<b>기본형 메인페이지</b><br><br>
	       								스크롤 반응형 7화면<br>
	       								+ 기획자 참여(카피 작성)<br>
	       								+ 웹디자이너 참여
	      							</td>
	       							<td class="priceBody">
	       								<b>고급형 메인페이지(event)</b><br><br>
	       								기본형 패키지(7화면)<br>
	       								+ 서브 3페이지(15화면)<br>
	       								+ 추가 혜택(서비스 설명 참조)
	       							</td>
	       							<td class="priceBody">
	       								<b>특수기능(웹, 플렛폼 등)</b><br><br>
	       								웹, 플랫폼 등 특수한 기능이<br>
	       								맞춤 개발되어야 하는 경우로,<br>
	       								별도 문의 필수
	    							</td>
	       						</tr>
	       						<tr>
	       							<td class="priceBody">반응형 웹</td>
	       							<td class="priceBody"><i class="fa-solid fa-check"></i></td>
	       							<td class="priceBody"><i class="fa-solid fa-check"></i></td>
	       							<td class="priceBody"><i class="fa-solid fa-check"></i></td>
	       						</tr>
	       						<tr>
	       							<td class="priceBody">콘텐츠 업로드</td>
	       							<td class="priceBody"><i class="fa-solid fa-check"></i></td>
	       							<td class="priceBody"><i class="fa-solid fa-check"></i></td>
	       							<td class="priceBody"><i class="fa-solid fa-check"></i></td>
	       						</tr>
	       						<tr>
	       							<td class="priceBody">소스 코드 제공</td>
	       							<td class="priceBody"><i class="fa-solid fa-check"></i></td>
	       							<td class="priceBody"><i class="fa-solid fa-check"></i></td>
	       							<td class="priceBody"><i class="fa-solid fa-check"></i></td>
	       						</tr>
	       						<tr>
	       							<td class="priceBody">맞춤 디자인 제공</td>
	       							<td class="priceBody"></td>
	       							<td class="priceBody"></td>
	       							<td class="priceBody"><i class="fa-solid fa-check"></i></td>
	       						</tr>
	       						<tr>
	       							<td class="priceBody">페이지 수</td>
	       							<td class="priceBody">1페이지</td>
	       							<td class="priceBody">4페이지</td>
	       							<td class="priceBody">10페이지</td>
	       						</tr>
	       						<tr>
	       							<td class="priceBody">수정 횟수</td>
	       							<td class="priceBody">1회</td>
	       							<td class="priceBody">2회</td>
	       							<td class="priceBody">2회</td>
	       						</tr>
	       						<tr>
	       							<td class="priceBody">작업일</td>
	       							<td class="priceBody">10일</td>
	       							<td class="priceBody">20일</td>
	       							<td class="priceBody">30일</td>
	       						</tr>
	       						<tr>
	       							<td class="priceBtn"></td>
	       							<td class="priceBtn"><button class="btn btn-primary" style="width: 180px;" type="button" id="btnPurchase1">구매</button></td>
	       							<td class="priceBtn"><button class="btn btn-primary" style="width: 180px;" type="button" id="btnPurchase2">구매</button></td>
	       							<td class="priceBtn"><button class="btn btn-primary" style="width: 180px;" type="button" id="btnPurchase3">구매</button></td>
	       						</tr>
	       						
	       					</table>
	       					<br><br>
	       					<hr>
	      				</div>
	       				<div class="col-12 text-start mt-4">
	       					<h5 id="productMenu3">취소 환불</h5>
	       					<article>
	       						<!-- 
	       						가. 기본 환불 규정<br>
	       						1. 전문가와 의뢰인의 상호 협의하에 청약 철회 및 환불이 가능합니다.<br>
	       						2. 작업이 완료된 이후 또는 자료, 프로그램 등 서비스가 제공된 이후에는 환불이 불가합니다.<br>
	       						(소비자보호법 17조 2항의 5조. 용역 또는 「문화산업진흥 기본법」 제2조 제5호의 디지털콘텐츠의 제공이 개시된 경우에 해당)<br>
	       						<br><br>
	       						나. 전문가 책임 사유<br>
	       						1. 전문가의 귀책사유로 당초 약정했던 서비스 미이행 혹은 보편적인 관점에서 심각하게 잘못 이행한 경우 결제 금액 전체 환불이 가능합니다.<br>
	       						<br><br>
	       						다. 의뢰인 책임 사유<br>
	       						1. 서비스 진행 도중 의뢰인의 귀책사유로 인해 환불을 요청할 경우, 사용 금액을 아래와 같이 계산 후 총 금액의 10%를 공제하여 환불합니다.<br>
	       						총 작업량의 1/3 경과 전 : 이미 납부한 요금의 2/3해당액<br>
	       						총 작업량의 1/2 경과 전 : 이미 납부한 요금의 1/2해당액<br>
	       						총 작업량의 1/2 경과 후 : 반환하지 않음<br><br>
	       						 -->
	       						 <c:out value="${item.itCancelRefund}" />
	       						<hr>
	       					</article>
	       				</div>
	       				<div class="col-12 text-start mt-4">
	       					<h5 id="productMenu4">상품 평가</h5>
	       					<i class="fa-solid fa-star" style="color: #FFD400;"></i>
		       				<i class="fa-solid fa-star" style="color: #FFD400;"></i>
		       				<i class="fa-solid fa-star" style="color: #FFD400;"></i>
		       				<i class="fa-solid fa-star" style="color: #FFD400;"></i>
		       				<i class="fa-solid fa-star" style="color: #FFD400;"></i>
		       				<span style="font-size: 1.2em; font-weight: bold;">5.0</span>
		       				<span style="color: #9A9BA7;">(28개의 평가)</span>
	       					<hr style="border: 1px solid black;">
	       				</div>
	       				<div class="row">
		       				<div class="col-6 text-start mt-4">
		       					<span style="font-weight: bold;">상품 후기 28개</span>
		       				</div> 
		       				<div class="col-6 text-end mt-4">
		       					<a class="text-end" href="#">최신순</a>
						    	<a class="text-end" href="#">별점 높은 순</a>
						    	<a class="text-end" href="#">별점 낮은 순</a>
		       				</div>
	       				</div>
	       				<div class="row mt-3">
	       					<div class="col">
		       					<table>
		       						<tr>
		       							<td rowspan="2" style="font-size: 0.7em;"><i class="fa-solid fa-circle-user fa-3x"></i></td>
		       							<td style="text-align: left; text-indent: 10px;"><span style="font-size: 0.7em; color: gray;">******p</span></td>
		       						</tr>
		       						<tr>
		       							<!-- <td></td> -->
		       							<td>
		       								&nbsp;
		       								<i class="fa-solid fa-star" style="font-size: 0.7em; color: #FFD400;"></i>
						       				<i class="fa-solid fa-star" style="font-size: 0.7em; color: #FFD400;"></i>
						       				<i class="fa-solid fa-star" style="font-size: 0.7em; color: #FFD400;"></i>
						       				<i class="fa-solid fa-star" style="font-size: 0.7em; color: #FFD400;"></i>
						       				<i class="fa-solid fa-star" style="font-size: 0.7em; color: #FFD400;"></i>
						       				<span style="font-size: 0.7em; font-weight: bold;">5.0 ㅣ</span>
						       				<span style="font-size: 0.7em; color: gray;">22.07.19 15:50</span>
		       							</td>
		       						</tr>
		       					</table>
	       					</div>
	       					<c:choose>
								<c:when test="${mmSeq eq null }">
								</c:when>
								<c:otherwise>
								<div class="commentBox">
									<div class="commentHead">
										<div class="">
											<span><c:out value="${mmName }" />(<c:out value="${mmEmail }" />)</span>
										</div>
										<div>
											<button class="writeBtn1" id="btnComment">등록</button>
										</div>
									</div>
									<div class="writeBox">
										<div id="writeDiv" class="writeDiv">
											<textarea class="textBox" style="width: 680px; height: 90px; resize: none;" name="content" maxlength="200" placeholder="댓글을 입력하세요."><c:out value="${dto.content }" /></textarea>
											<div class="textLengthWrap">
											    <span class="textCount">0</span>
											    <span class="textTotal">/200</span>
											</div>
										</div>	
									</div>
								</div>
								</c:otherwise>
							</c:choose>
	       					<div class="col-12 text-start mt-3">
	       						<p>
	       							자료가 많이 부족했는데 대체 자료로 홈페이지 제작해주셔서 감사합니다.<br>
	       							빠른 작업물과 퀄리티 높은 작업이였던거 같습니다.
	       						</p>
	       					</div>
	       					<div class="col-12 text-start border border-top-0 border-start-0 border-end-0 pb-3">
	       						<p>작업일:30일ㅣ주문금액:500만원</p>
	       					</div>
	       				</div>
						<div id="lita"></div>	       				
	       			</div>
	        	</div>
	        	<div class="col-4">
	        		<div class="row mt-5">
	        			<div class="text-start">
	       					<a href="#" style="color: #9A9BA7;"><i class="fa-solid fa-share-nodes"></i></a>
		       				<a href="#" style="color: #9A9BA7;"><i class="fa-solid fa-heart"></i></a>
	    					<a href="#" style="color: #9A9BA7;"><i class="fa-solid fa-thumbs-up"></i></a>
	       				</div>
	        		</div>
	        		<div class="row mt-3">
	        			<h5 name="itTitle"><c:out value="${item.itTitle }"/></h5>
	        		</div>
		        	<div class="row">
		        		<div class="container-fluid">
			        		<ul class="nav nav-tabs text-center">
								<li class="nav-item col-4">
							    	<a class="nav-link active" data-toggle="tab" href="#basicDetail"><h5>BASIC</h5></a>
								</li>
								<li class="nav-item col-4">
							    	<a class="nav-link" data-toggle="tab" href="#bestDetail"><h5>BEST</h5></a>
								</li>
								<li class="nav-item col-4">
							    	<a class="nav-link" data-toggle="tab" href="#proDetail"><h5>PRO</h5></a>
								</li>
							</ul>
							<div class="tab-content">
							     <div class="tab-pane fade show active ms-3 me-3" id="basicDetail">
							     	<div class="mt-4 mb-4">
							     		<span class="payView">550,000원</span>
							     		<Span class="vatView">(VAT 포함가)</Span>	
							     	</div>
							     	<div class="mb-4">
							     		<span class="titleView">[케이홈페이지] 홈페이지제작베이직형</span>
							     		<p>
							     			최신 반응형홈페이지 제작<br>
							     			고퀄리티 홈페이지 테마제공<br>
							     			반응형팝업, 회원관리, 관리자페이지 등
							     		</p>
							     	</div>
							     	<div>
							     		<div class="row">
								     		<div class="col-6 mb-3">
							     				<span>반응형 웹</span>
						     				</div>
						     				<div class="listCheck col-6 mb-3">
						     					<span><i class="fa-solid fa-check"></i></span>
						     				</div>
					     				</div>
					     				<div class="row">
						     				<div class=" col-6 mb-3">
							     				<span>소스 코드 제공</span>
						     				</div>
						     				<div class="listCheck col-6 mb-3">
						     					<span class="listCheck"><i class="fa-solid fa-check"></i></span>
						     				</div>
					     				</div>
					     				<div class="row">
						     				<div class="col-6 mb-3">
							     				<span>맞춤 디자인 제공</span>
						     				</div>
						     				<div class="listCheck col-6 mb-3">
						     					<span class="listCheck"><i class="fa-solid fa-minus"></i></span>
						     				</div>
					     				</div>
					     				<div class="row">
						     				<div class="col-6 mb-3">
							     				<span>기능 추가</span>
						     				</div>
						     				<div class="listCheck col-6 mb-3">
						     					<span class="listCheck">1개</span>
						     				</div>
					     				</div>
					     				<div class="row">
						     				<div class="col-6 mb-3">
							     				<span>페이지 수</span>
						     				</div>
						     				<div class="listCheck col-6 mb-3">
						     					<span class="listCheck">5페이지</span>
						     				</div>
					     				</div>
					     				<div class="row">
						     				<div class="col-6 mb-3">
							     				<span>작업일</span>
						     				</div>
						     				<div class="listCheck col-6 mb-3">
						     					<span class="listCheck">10일</span>
						     				</div>
					     				</div>
					     				<div class="row">
						     				<div class="col-6 mb-3">
							     				<span>수정 횟수</span>
						     				</div>
						     				<div class="listCheck col-6 mb-3">
						     					<span class="listCheck">2회</span>
						     				</div>
					     				</div>
							     	</div>
							     	<div>
							     		<button class="btn btn-primary w-100" type="button" id="btnPurchase4">구매하기</button>
							     	</div>
							     </div>
							     <div class="tab-pane fade ms-3 me-3" id="bestDetail">
							     	<div class="mt-4 mb-4">
							     		<span class="payView">770,000원</span>
							     		<Span class="vatView">(VAT 포함가)</Span>	
							     	</div>
							     	<div class="mb-4">
							     		<span class="titleView">[케이홈페이지] 홈페이지제작베스트형</span>
							     		<p>
							     			최신 반응형홈페이지 제작<br>
							     			고퀄리티 홈페이지 테마제공<br>
							     			다양한게시판스킨폼 제공<br>
							     			반응형팝업, 회원관리자제공
							     		</p>
							     	</div>
							     	<div>
							     		<div class="row">
								     		<div class="col-6 mb-3">
							     				<span>반응형 웹</span>
						     				</div>
						     				<div class="listCheck col-6 mb-3">
						     					<span><i class="fa-solid fa-check"></i></span>
						     				</div>
					     				</div>
					     				<div class="row">
						     				<div class=" col-6 mb-3">
							     				<span>소스 코드 제공</span>
						     				</div>
						     				<div class="listCheck col-6 mb-3">
						     					<span class="listCheck"><i class="fa-solid fa-check"></i></span>
						     				</div>
					     				</div>
					     				<div class="row">
						     				<div class="col-6 mb-3">
							     				<span>맞춤 디자인 제공</span>
						     				</div>
						     				<div class="listCheck col-6 mb-3">
						     					<span class="listCheck"><i class="fa-solid fa-minus"></i></span>
						     				</div>
					     				</div>
					     				<div class="row">
						     				<div class="col-6 mb-3">
							     				<span>기능 추가</span>
						     				</div>
						     				<div class="listCheck col-6 mb-3">
						     					<span class="listCheck">1개</span>
						     				</div>
					     				</div>
					     				<div class="row">
						     				<div class="col-6 mb-3">
							     				<span>페이지 수</span>
						     				</div>
						     				<div class="listCheck col-6 mb-3">
						     					<span class="listCheck">10페이지</span>
						     				</div>
					     				</div>
					     				<div class="row">
						     				<div class="col-6 mb-3">
							     				<span>작업일</span>
						     				</div>
						     				<div class="listCheck col-6 mb-3">
						     					<span class="listCheck">15일</span>
						     				</div>
					     				</div>
					     				<div class="row">
						     				<div class="col-6 mb-3">
							     				<span>수정 횟수</span>
						     				</div>
						     				<div class="listCheck col-6 mb-3">
						     					<span class="listCheck">2회</span>
						     				</div>
					     				</div>
							     	</div>
							     	<div>
							     		<button class="btn btn-primary w-100" type="button" id="btnPurchase5">구매하기</button>
							     	</div>
							     </div>
							     <div class="tab-pane fade ms-3 me-3" id="proDetail">
							     	<div class="mt-4 mb-4">
							     		<span class="payView">1,320,000원</span>
							     		<Span class="vatView">(VAT 포함가)</Span>	
							     	</div>
							     	<div class="mb-4">
							     		<span class="titleView">[케이홈페이지] 홈페이지제작프로형</span>
							     		<p>
							     			최신 반응형홈페이지 제작<br>
							     			고퀄리티 홈페이지 테마제공<br>
							     			다양한게시판스킨폼제공<br>
							     			반응형팝업, 회원관리자제공
							     		</p>
							     	</div>
							     	<div>
							     		<div class="row">
								     		<div class="col-6 mb-3">
							     				<span>반응형 웹</span>
						     				</div>
						     				<div class="listCheck col-6 mb-3">
						     					<span><i class="fa-solid fa-check"></i></span>
						     				</div>
					     				</div>
					     				<div class="row">
						     				<div class=" col-6 mb-3">
							     				<span>소스 코드 제공</span>
						     				</div>
						     				<div class="listCheck col-6 mb-3">
						     					<span class="listCheck"><i class="fa-solid fa-check"></i></span>
						     				</div>
					     				</div>
					     				<div class="row">
						     				<div class="col-6 mb-3">
							     				<span>맞춤 디자인 제공</span>
						     				</div>
						     				<div class="listCheck col-6 mb-3">
						     					<span class="listCheck"><i class="fa-solid fa-check"></i></span>
						     				</div>
					     				</div>
					     				<div class="row">
						     				<div class="col-6 mb-3">
							     				<span>기능 추가</span>
						     				</div>
						     				<div class="listCheck col-6 mb-3">
						     					<span class="listCheck">1개</span>
						     				</div>
					     				</div>
					     				<div class="row">
						     				<div class="col-6 mb-3">
							     				<span>페이지 수</span>
						     				</div>
						     				<div class="listCheck col-6 mb-3">
						     					<span class="listCheck">15페이지</span>
						     				</div>
					     				</div>
					     				<div class="row">
						     				<div class="col-6 mb-3">
							     				<span>작업일</span>
						     				</div>
						     				<div class="listCheck col-6 mb-3">
						     					<span class="listCheck">20일</span>
						     				</div>
					     				</div>
					     				<div class="row">
						     				<div class="col-6 mb-3">
							     				<span>수정 횟수</span>
						     				</div>
						     				<div class="listCheck col-6 mb-3">
						     					<span class="listCheck">3회</span>
						     				</div>
					     				</div>
							     	</div>
							     	<div>
							     		<button class="btn btn-primary w-100" type="button" id="btnPurchase6">구매하기</button>
							     	</div>
							     </div>
							</div>
						</div>
	       			</div>
	       			<div class="row mt-5">
		       			<div class="contatiner-fluid">
			       			<table class="inquiryTable col-12">
			       				<tr>
			       					<th class="inquiryHead" style="text-align: left;">상품문의(00홈페이지)</th>
			       				</tr>
			       				<tr>
			       					<td class="inquiryBody1"> 
			       						<i class="fa-solid fa-square-phone fa-lg"></i>&nbsp;&nbsp;결제 전, 전화상담 제공
			       					</td>
			       				</tr>
			       				<tr>
			       					<td class="inquiryBody1">
			       						<i class="fa-regular fa-clock fa-lg"></i>&nbsp;&nbsp;연락 가능 시간: 09 ~ 18시
			       					</td>
			       				</tr>
			       				<tr>
			       					<td class="inquiryBody1">
			       						<i class="fa-solid fa-square-envelope fa-lg"></i>&nbsp;&nbsp;평균 응답 시간: 3시간 이내
			       					</td>
			       				</tr>
			       				<tr>
			       					<td class="inquiryBody2" style="justify-content: center;">
			       						<table class="inquiryBodyTable">
				       						<tr class="inquiryBodyTableHead">
				       							<th>5000건</th>
				       							<th>99%</th>
				       							<th>개인회원</th>
				       						</tr>
				       						<tr class="inquiryBodyTableBody">
				       							<td>총 작업개수</td>
				       							<td>만족도</td>
				       							<td>회원구분</td>
				       						</tr>
			       						</table>
			       					</td>
			       				</tr>
			       				<tr>
			       					<td class="inquiryBody3">
			       						<a class="btn btn-outline-primary w-100" href="#">문의하기</a>
		       						</td>
			       				</tr>
			       				<tr>
			       					<td class="inquiryTail">
			       						<span>소개</span>
			       						<div style="text-align: center;">
			       							<div style="text-align: left; font-size: 13px;">
			       								케이홈페이지는 지난 13년간 3,000개 이상의 홈페이지를 제작해 왔습니다.
			       							</div>
			       							<div>
				       							<div id="plus" style="text-align: left; display: none; font-size: 13px;">
					       							기본적으로 모든 테마는 반응형[PC+모바일+노트북+태블릿 모두지원]으로 
					       							이루어져 있고 멋지고 세련된 테마를 통해 보다 빠른 제작이 가능하십니다.
					       							케이홈페이지는 퀄리티가 높은 테마를 제공합니다. 게시판 프로그램 스킨도 
					       							직접개발 보유하고 있습니다.
					       							한번 인연을 맺으면 반드시 다른 기업의 홈페이지 추천을 소개받는 기업입니다.
				       							</div>
				       							<input class="btn" value="소개 더 보기" style="height: 35px;" onclick="if(this.parentNode.getElementsByTagName('div')[0].style.display != ''){this.parentNode.getElementsByTagName('div')[0].style.display = '';this.value = '접기';}else{this.parentNode.getElementsByTagName('div')[0].style.display = 'none'; this.value = '소개 더 보기';}" type="button">
			       							</div>	 
			       						</div>
			       					</td>
			       				</tr>
			       			</table>
		       			</div>
	     			</div>
     			</div>
        	</div>
	    </div>
	    <!-- Service End -->
	
    <!-- Footer Start -->
    <%@include file="../common/footer.jsp"%>
    <!-- Footer End -->

    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-0 back-to-top"><i class="bi bi-arrow-up"></i></a>
</form>
	<%@ include file="../common/basicJs.jsp" %>
	
    <!-- Template Javascript -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    
    <script type="text/javascript">
    	var goUrlItemMenu = "/item/itemMenu";
    	var goUrlPurchase = "/item/itemPayment";
    	
    	$("#btnPurchase1").on("click", function(){
	   		$(location).attr("href", goUrlPurchase);
		});
    	
    	$("#btnPurchase2").on("click", function(){
	   		$(location).attr("href", goUrlPurchase);
		});
    	
    	$("#btnPurchase3").on("click", function(){
	   		$(location).attr("href", goUrlPurchase);
		});
    	
    	$("#btnPurchase4").on("click", function(){
	   		$(location).attr("href", goUrlPurchase);
		});
    	
    	$("#btnPurchase5").on("click", function(){
	   		$(location).attr("href", goUrlPurchase);
		});
    	
    	$("#btnPurchase6").on("click", function(){
	   		$(location).attr("href", goUrlPurchase);
		});
    	
    	//댓글 글자수 제한 체크
		$('.textBox').keyup(function (e) {
			let content = $(this).val();
		    
		    // 글자수 세기
		    if (content.length == 0 || content == '') {
		    	$('.textCount').text('0');
		    } else {
		    	$('.textCount').text(content.length + '');
		    }
		    
		    // 글자수 제한
		    if (content.length > 200) {
		    	// 200자 부터는 타이핑 되지 않도록
		        $(this).val($(this).val().substring(0, 200));
		        // 200자 넘으면 알림창 뜨도록
		        alert('글자수는 200자까지 입력 가능합니다.');
		    };
		});
    	
		//commentLita jsp
		var page = 0;
		
		function setLita() {
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: goUrlAjaxLita
				,data : $("#form").serialize()
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
				,url: goUrlAjaxLita
				,data : $("#form").serialize()
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