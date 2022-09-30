var goUrlListPwChange = "/member/pwChangeFormC"
var goUrlListMemberDrop = "/member/memberDropFormC"
var goUrlListPurchaseHistory = "/member/purchaseHistory"
var goUrlListMemberView = "/member/memberViewC"
var goUrlListSaleManage = "/member/saleManage"
var goUrlListSaleReg = "/member/saleReg"


$("#btnListPwChange").on("click", function(){
	$(location).attr("href", goUrlListPwChange);
});

$("#btnListMemberDrop").on("click", function(){
	$(location).attr("href", goUrlListMemberDrop);
});

$("#btnListPurchaseHistory").on("click", function(){
	$(location).attr("href", goUrlListPurchaseHistory);
});

$("#btnListMemberView").on("click", function(){
	$(location).attr("href", goUrlListMemberView);
});

$("#btnListSaleManage").on("click", function(){
	$(location).attr("href", goUrlListSaleManage);
});

$("#btnListSaleReg").on("click", function(){
	$(location).attr("href", goUrlListSaleReg);
});