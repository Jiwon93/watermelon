// id 체크 정규식 : 숫자, 영문만 입력 가능    
var regExpId = /^[0-9a-z]+$/; 

// 비밀번호 규칙 정규식 : 숫자, 특문 각 1회 이상, 영문은 2개 이상 사용하여 8자리 이상 입력    
var regExpPw = /(?=.*\d{1,50})(?=.*[~`!@#$%\^&*()-+=]{1,50})(?=.*[a-zA-Z]{2,50}).{8,50}$/;   
 
// 이메일주소 형식 체크 정규식    
var regExpEm = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;


	// ENTER 엔터 방지    
	function captureReturnKey(e) {             
		if(e.keyCode == 13 && e.srcElement.type != 'textarea')                 
			return false;     
	} 



//////////////////////////////////////////////////////////////////////////////////////////////
	// 이메일 확인
	$("#mmEmail").on("keyup", function(key){
		if(key.keyCode==13) {
			/* if(!checkId('mmEmail', 2, 0, "영대소문자,숫자,특수문자(-_.),4~20자리만 입력 가능합니다")) {
				return false;
			} else { */
				$.ajax({
					async: true 
					,cache: false
					,type: "post"
					/* ,dataType:"json" */
					,url: "/member/checkId"
					/* ,data : $("#formLogin").serialize() */
					,data : { "mmEmail" : $("#mmEmail").val() }
					,success: function(response) {
						if(response.rt == "success") {
							document.getElementById("mmEmail").classList.remove('is-invalid');
							document.getElementById("mmEmail").classList.add('is-valid');
		
							document.getElementById("mmEmailFeedback").classList.remove('invalid-feedback');
							document.getElementById("mmEmailFeedback").classList.add('valid-feedback');
							document.getElementById("mmEmailFeedback").innerText = "사용 가능 합니다.";
							
							document.getElementById("mmEmailAllowedNy").value = 1;
							
						} else {
							document.getElementById("mmEmail").classList.add('is-invalid');
							document.getElementById("mmEmail").classList.remove('is-valid');
							
							document.getElementById("mmEmailFeedback").classList.remove('valid-feedback');
							document.getElementById("mmEmailFeedback").classList.add('invalid-feedback');
							document.getElementById("mmEmailFeedback").innerText = "사용 불가능 합니다";
							
							document.getElementById("mmEmailAllowedNy").value = 0;
						}
					}
					,error : function(jqXHR, textStatus, errorThrown){
						alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
					}
				});
			/* } */
			}
		});
		
		// 비밀번호 확인
		$("#mmPwChk").on("keyup", function(key){
		      var p1 = document.getElementById('mmPw').value;
		      var p2 = document.getElementById('mmPwChk').value;
		      
		          if( p1 == p2 ) {
		            document.getElementById("mmPwChk").classList.remove('is-invalid');
					document.getElementById("mmPwChk").classList.add('is-valid');

					document.getElementById("mmPwChkFeedback").classList.remove('invalid-feedback');
					document.getElementById("mmPwChkFeedback").classList.add('valid-feedback');
					document.getElementById("mmPwChkFeedback").innerText = "비밀번호가 일치합니다.";
		            return false;
		          } else{
		            document.getElementById("mmPwChk").classList.add('is-invalid');
					document.getElementById("mmPwChk").classList.remove('is-valid');
					
					document.getElementById("mmPwChkFeedback").classList.remove('valid-feedback');
					document.getElementById("mmPwChkFeedback").classList.add('invalid-feedback');
					document.getElementById("mmPwChkFeedback").innerText = "비밀번호가 일치하지 않습니다.";
		            return true;
		          }
	    });
		
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// 암호화
		$("#btnLogin").on("click", function(){
		if(validation() == false) return false;
		
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/member/loginProc"
			/* ,data : $("#formLogin").serialize() */
			,data : { "ifmmId" : $("#ifmmId").val(), "ifmmPassword" : $("#ifmmPassword").val(), "autoLogin" : $("#autoLogin").is(":checked")}
			,success: function(response) {
				if(response.rt == "success") {
					if(response.changePwd == "true") {
						location.href = URL_CHANGE_PWD_FORM;
					} else {
						location.href = URL_INDEX_ADMIN;
					}
				} else {
					alert("회원없음");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});
