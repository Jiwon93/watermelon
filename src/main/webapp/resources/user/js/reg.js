//////////////////////////////////////////////////////////////////////////////////////////////

		
		
		
		// 이메일 확인
		$("#mmEmail").on("focusout", function(){
			//if(key.keyCode==13) {
				/* if(!checkId('mmEmail', 2, 0, "영대소문자,숫자,특수문자(-_.),4~20자리만 입력 가능합니다")) {
					return false;
				} else { */
				//if(emailCheck.test($('#mmEmail').val())){
				//	alert("이메일 양식에 맞춰서 입력해 주세요.");
				//}
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
								document.getElementById("mmEmailFeedback").innerText = "사용 불가능 합니다.";
								
								document.getElementById("mmEmailAllowedNy").value = 0;
							}
						}
						,error : function(jqXHR, textStatus, errorThrown){
							alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
						}
					});
				/* } */
				//}
			});
		
		
		// 비밀번호 확인
		$("#mmPwChk").on("keyup", function(){
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
	    
	    //validation
		validationUpdt = function() {
			if(!EmailCheck('mmEmail',2,0,"이메일 형식에 맞춰서 입력해 주세요.")) return false;
			if(!PwCheck('mmPw',2,0,"비밀번호는 8~16자로 입력해 주세요.")) return false;
			if(!NameCheck('mmName',2,0,"한글로만 입력해 주세요.")) return false;
			if(!NicknameCheck('mmNickname',2,0,"한글, 영어, 숫자로 입력해 주세요.")) return false;
			if(!BodCheck('mmBod',2,0,"알맞게 입력해 주세요.")) return false;
			if(!PhoneNumberCheck('mmpPhoneNumber',2,0,"숫자로만 입력해 주세요.")) return false;
		}
		
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
