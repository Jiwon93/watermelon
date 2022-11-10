	// 현재 비밀번호 확인
	$("#mmPw").on("focusout", function(key){
			/* if(!checkId('mmEmail', 2, 0, "영대소문자,숫자,특수문자(-_.),4~20자리만 입력 가능합니다")) {
				return false;
			} else { */
				$.ajax({
					async: true 
					,cache: false
					,type: "post"
					/* ,dataType:"json" */
					,url: "/member/checkPw"
					/* ,data : $("#formLogin").serialize() */
					,data : {	"mmPw" : $("#mmPw").val() }
					,success: function(response) {
						if(response.rt == "success") {
							document.getElementById("mmPw").classList.remove('is-invalid');
							document.getElementById("mmPw").classList.add('is-valid');
		
							document.getElementById("mmModPwChkFeedback").classList.remove('invalid-feedback');
							document.getElementById("mmModPwChkFeedback").classList.add('valid-feedback');
							document.getElementById("mmModPwChkFeedback").innerText = "일치합니다.";
							$('#mmNewPw').attr('readonly', false);
							$('#mmNewPwChk').attr('readonly', false);
							document.getElementById("mmModPwChkAllowedNy").value = 1;
						} else {
							document.getElementById("mmPw").classList.add('is-invalid');
							document.getElementById("mmPw").classList.remove('is-valid');
							
							document.getElementById("mmModPwChkFeedback").classList.remove('valid-feedback');
							document.getElementById("mmModPwChkFeedback").classList.add('invalid-feedback');
							document.getElementById("mmModPwChkFeedback").innerText = "잘못 입력하였습니다.";
							$('#mmNewPw').attr('readonly', true);
							$('#mmNewPwChk').attr('readonly', true);
							document.getElementById("mmModPwChkAllowedNy").value = 0;
						}
					}
					,error : function(jqXHR, textStatus, errorThrown){
						alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
					}
				});
			/* } */
		});
		
		// 변경할 비밀번호 확인
		$("#mmNewPwChk").on("keyup", function(){
		      var p1 = document.getElementById('mmNewPw').value;
		      var p2 = document.getElementById('mmNewPwChk').value;
		      
		          if( p1 == p2 ) {
		            document.getElementById("mmNewPwChk").classList.remove('is-invalid');
					document.getElementById("mmNewPwChk").classList.add('is-valid');

					document.getElementById("mmNewPwChkFeedback").classList.remove('invalid-feedback');
					document.getElementById("mmNewPwChkFeedback").classList.add('valid-feedback');
					document.getElementById("mmNewPwChkFeedback").innerText = "비밀번호가 일치합니다.";
		            return false;
		          } else{
		            document.getElementById("mmNewPwChk").classList.add('is-invalid');
					document.getElementById("mmNewPwChk").classList.remove('is-valid');
					
					document.getElementById("mmNewPwChkFeedback").classList.remove('valid-feedback');
					document.getElementById("mmNewPwChkFeedback").classList.add('invalid-feedback');
					document.getElementById("mmNewPwChkFeedback").innerText = "비밀번호가 일치하지 않습니다.";
		            return true;
		          }
	    });
		