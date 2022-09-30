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
								document.getElementById("mmEmailFeedback").innerText = "사용 불가능 합니다.";
								
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
		
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
