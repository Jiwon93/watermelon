var goUrlSaleList = "/item/itemList";
var goUrlPurchaseList = "/item/purchaseList";
//var goUrlMemberList = "/member/memberList";
var goUrlMemberAjaxList = "/member/memberAjaxList";
var goUrlReviewList = "/review/reviewList";
var goUrlCodeGroupList = "/codeGroup/codeGroupList";
var goUrlCodeList = "/code/codeList";

$("#btnSaleList").on("click", function(){
	$(location).attr("href", goUrlSaleList);
});

$("#btnPurchaseList").on("click", function(){
	$(location).attr("href", goUrlPurchaseList);
});

$("#btnMemberList").on("click", function(){
	$(location).attr("href", goUrlMemberAjaxList);
});

$("#btnReviewList").on("click", function(){
	$(location).attr("href", goUrlReviewList);
});

$("#btnCodeGroupList").on("click", function(){
	$(location).attr("href", goUrlCodeGroupList);
});

$("#btnCodeList").on("click", function(){
	$(location).attr("href", goUrlCodeList);
});

