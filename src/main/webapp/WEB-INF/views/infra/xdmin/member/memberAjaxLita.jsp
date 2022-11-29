<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<jsp:useBean id="CodeServiceImpl" class="com.lifemanlab.shop.modules.code.CodeServiceImpl"/>

<!-- totalAndRowNum s -->
<%@include file="../common//totalAndRowNum.jsp"%>
<!-- totalAndRowNumu e -->

<div class="row mt-1">
	<table class="table table-striped table-hover border">
		<tr class="table-dark">
			<th class="tableHead1"><input class="listCheck" type="checkbox"></th>
			<th class="tableHead1">#</th>
			<th>이름</th>
			<th>등급</th>
			<th>이메일</th>
			<th>닉네임</th>
			<th>직업</th>
			<th>성별</th>
			<th>생일</th>
			<th>주소</th>
			<th>관심사</th>
		</tr>
		<c:set var="listCodeGender" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
		<c:set var="listCodeJob" value="${CodeServiceImpl.selectListCachedCode('4')}"/>
		<c:set var="listCodeRank" value="${CodeServiceImpl.selectListCachedCode('6')}"/>
		<c:set var="listCodeInterest" value="${CodeServiceImpl.selectListCachedCode('8')}"/>
		<c:choose>
			<c:when test="${fn:length(list) eq 0 }">
				<tr>
					<td class="text-center" colspan="12">There is no data!</td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach items="${list }" var="list" varStatus="status">
					<tr>
						<td class="tableHead1"><input class="listCheck" type="checkbox"></td>
						<td class="tableHead1"><c:out value="${list.mmSeq }"/></td>
						<td><c:out value="${list.mmName }"/></td>
						<td>
							<c:forEach items="${listCodeRank}" var="listRank" varStatus="statusRank">
								<c:if test="${list.mmRank eq listRank.ccSeq}"><c:out value="${listRank.ccName }"/></c:if>
							</c:forEach>
						</td>
						<td><c:out value="${list.mmEmail }"/></td>
						<td><c:out value="${list.mmNickname }"/></td>
						<td>
							<c:forEach items="${listCodeJob}" var="listJob" varStatus="statusJob">
								<c:if test="${list.mmJob eq listJob.ccSeq}"><c:out value="${listJob.ccName }"/></c:if>
							</c:forEach>
						</td>
						<td>
							<c:forEach items="${listCodeGender}" var="listGender" varStatus="statusGender">
								<c:if test="${list.mmGender eq listGender.ccSeq}"><c:out value="${listGender.ccName }"/></c:if>
							</c:forEach>
						</td>
						<td><c:out value="${list.mmBod }"/></td>
						<td><c:out value="${list.mmAddress1 }"/></td>
						<td>
							<c:forEach items="${listCodeInterest}" var="listInterest" varStatus="statusInterest">
								<c:if test="${list.mmInterest eq listInterest.ccSeq}"><c:out value="${listInterest.ccName }"/></c:if>
							</c:forEach>
						</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</table>
</div>

<!-- pagination s -->
<%@include file="../common/pagination.jsp"%>
<!-- pagination e -->

<script type="text/javascript">

	goForm = function(keyValue) {
		/* if(key != 0) seq.val(btoa(key)); */
		seq.val(keyValue);
		form.attr("action", goUrlForm).submit();
	}
	
	
	goList = function(thisPage) {
		$("input:hidden[name=thisPage]").val(thisPage);
		setLita();
	}
	
	
	$("#changeRowNum").on("change", function(){
		$("input:hidden[name=rowNumToShow]").val($("#changeRowNum option:selected").val());
		setLita();
	}); 
		
	
	$("#checkboxAll").click(function() {
		if($("#checkboxAll").is(":checked")) $("input[name=checkboxSeq]").prop("checked", true);
		else $("input[name=checkboxSeq]").prop("checked", false);
	});
	
	
	$("input[name=checkboxSeq]").click(function() {
		var total = $("input[name=checkboxSeq]").length;
		var checked = $("input[name=checkboxSeq]:checked").length;
		
		if(total != checked) $("#checkboxAll").prop("checked", false);
		else $("#checkboxAll").prop("checked", true); 
	});

</script>