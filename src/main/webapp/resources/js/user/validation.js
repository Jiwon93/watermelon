	
	//validation 정규식
	var phonNumberCheck = RegExp(/^01[0179][0-9]{7,8}$/);
	
	 function EmailCheck (objName, pattern, nullAllowedNy, message) {
		var regExp = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
		return EmailCheck (objName, pattern, nullAllowedNy, message, regExp);
	}
	
	function PwCheck (objName, pattern, nullAllowedNy, message) {
		var regExp = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^*()\-_=+\\\|\[\]{};:\'",.<>\/?]).{8,16}$/;
		return PwCheck (objName, pattern, nullAllowedNy, message, regExp);
	}
	
	function NameCheck (objName, pattern, nullAllowedNy, message) {
		var regExp = /^[가-힣]{2,6}$/;
		return NameCheck (objName, pattern, nullAllowedNy, message, regExp);
	}
	
	function NicknameCheck (objName, pattern, nullAllowedNy, message) {
		var regExp = /^[가-힣a-zA-Z0-9]{2,10}$/;
		return NicknameCheck (objName, pattern, nullAllowedNy, message, regExp);
	}
	
	function BodCheck (objName, pattern, nullAllowedNy, message) {
		var regExp = /^(19|20)[0-9]{2}(0[1-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;
		return BodCheck (objName, pattern, nullAllowedNy, message, regExp);
	}
	
	function PhoneNumberCheck (objName, pattern, nullAllowedNy, message) {
		var regExp = /^01[0179][0-9]{7,8}$/;
		return PhoneNumberCheck (objName, pattern, nullAllowedNy, message, regExp);
	}