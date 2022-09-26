// id 체크 정규식 : 숫자, 영문만 입력 가능    
var regExpId = /^[0-9a-z]+$/; 

// 비밀번호 규칙 정규식 : 숫자, 특문 각 1회 이상, 영문은 2개 이상 사용하여 8자리 이상 입력    
var regExpPw = /(?=.*\d{1,50})(?=.*[~`!@#$%\^&*()-+=]{1,50})(?=.*[a-zA-Z]{2,50}).{8,50}$/;   
 
// 이메일주소 형식 체크 정규식    
var regExpEm = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;





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
		var password = document.getElementById('password');					//비밀번호 
		var passwordConfirm = document.getElementById('passwordConfirm');	//비밀번호 확인 값
		var confrimMsg = document.getElementById('confirmMsg');				//확인 메세지
		var correctColor = "#00ff00";	//맞았을 때 출력되는 색깔.
		var wrongColor ="#ff0000";	//틀렸을 때 출력되는 색깔
		
		if(password.value == passwordConfirm.value){//password 변수의 값과 passwordConfirm 변수의 값과 동일하다.
			confirmMsg.style.color = correctColor;/* span 태그의 ID(confirmMsg) 사용  */
			confirmMsg.innerHTML ="비밀번호 일치";/* innerHTML : HTML 내부에 추가적인 내용을 넣을 때 사용하는 것. */
		}else{
			confirmMsg.style.color = wrongColor;
			confirmMsg.innerHTML ="비밀번호 불일치";
		}
