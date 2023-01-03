<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <main>
                <h2 class="main title">회원가입 폼</h2>
                
                <div class="breadcrumb" style="margin-top:-20px;">
                    <h3 class="hidden">경로</h3>
                    <img src="../images/member/step2.png" alt="회원가입 2단계" />
                </div>
                
                
                <form id="form1" method="post" enctype="multipart/form-data" action="confirm">
                    <fieldset>
                        <legend class="hidden">회원정보</legend>
                        <table class="table margin-top first">
                            <tbody>                                
                                <tr>
                                    <th><label>아이디</label></th>
                                    <td colspan="3" class="text-align-left indent">
                                        <input id="id-text" type="text" name="id" class="width-half"  required="required" value="" placeholder="영문과 숫자 6~20자 이내" pattern="^\w{6,20}$" />
                                        <input class="btn-text btn-default" type="button" id="id-check-button" value="중복확인" />								
                                    </td>
                                </tr>
                                <tr>
                                    <th><label>비밀번호</label></th>
                                    <td colspan="3" class="text-align-left indent">
                                        <input type="password" name="pwd" class="" required placeholder="비밀번호 입력" />
                                    </td>
                                </tr>
                                <tr>
                                    <th><label>비밀번호 확인</label></th>
                                    <td colspan="3" class="text-align-left indent"><input class="" name="pwd2" type="password" required /></td>
                                </tr>
                                <tr>
                                    <th><label>이름</label></th>
                                    <td colspan="3" class="text-align-left indent"><input class="width-half" name="name" type="text"  value="" required="required"/></td>
                                </tr>
                                <!-- <tr>
                                    <th><label>필명</label></th>
                                    <td colspan="3" class="text-align-left indent"><input class="width-half" name="nicname" type="text" /></td>
                                </tr> -->
                                <tr>
                                    <th><label>성별</label></th>
                                    <td colspan="3" class="text-align-left indent">
                                        
                                        
                                        
                                        
                                        <select class="width-half" name="gender" required>
                                            <option value="">선택</option>
                                            <option  value="남성">남성</option>
                                            <option  value="여성">여성</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <th><label>생년월일</label></th>
                                    <td colspan="3" class="text-align-left indent">
                                        
                                        
                                        
                                        
                                        <input name="birthday" type="date" class="width-half" required placeholder="예) 2000-02-17"  value=""/>
                                        <!-- <input name="y" type="text" class="width-small margin-hor" style="margin-left:0px;" />년
                                        <input name="m" type="text" class="width-small margin-hor" />월
                                        <input name="d" type="text" class="width-small margin-hor" />일 -->
                                        <input type="radio" name="isLunar" value="0" class="vertical-middle margin-hor" checked />양력
                                        <input type="radio" name="isLunar" value="1" class="vertical-middle margin-hor"  />음력
                                    </td>
                                </tr>
                                <tr>
                                    <th><label>핸드폰번호</label></th>
                                    <td colspan="3" class="text-align-left indent"><input name="phone" type="text" class="width-half" pattern="^01[016789]-\d{3,4}-\d{4}$" placeholder="예) 010-1111-2222" required  value=""/></td>
                                </tr>
                                <tr>
                                    <th><label>이메일</label></th>
                                    <td colspan="3" class="text-align-left indent"><input name="email" type="email" class="width-half" required placeholder="예) user@newlecture.com"  value=""/></td>
                                </tr>                                
                                                                
                                <tr>
                                    <td colspan="4">
                                        <input type="hidden" name="" value="" />
                                        <input id="submit-Button" type="submit" name="btn" value="확인" style="height: 30px; margin:20px;" class="btn-text btn-default" />
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </fieldset>
                </form>
            </main>

<script>
	window.addEventListener("load", function() {
		
		var idChecked = false;
			
		var form = document.querySelector("#form1");
		var photo = document.querySelector("#photo");
		var photoFileButton = document.querySelector("#photo-file-button");
		var photoButton = document.querySelector("#photo-button");
		var idTextBox = document.querySelector("#id-text");
		var idCheckButton = document.querySelector("#id-check-button");
		var pwdTextBox = document.querySelector("form input[name='pwd']");
		var pwd2TextBox = document.querySelector("form input[name='pwd2']");		
		var genderSelect = document.querySelector("form select[name='gender']");
		
		photoButton.onclick = function(e){
			var event = new MouseEvent("click", {
		        'view': window,
		        'bubbles': true,
		        'cancelable': true
		    });
						
			photoFileButton.dispatchEvent(event);
		};
		
		photoFileButton.onchange = function(e){
			
			var countSelected = photoFileButton.files.length;
			if(countSelected == 0){
				alert("파일을 선택해주세요.");
				return;
			}
			
			var file = photoFileButton.files[0];
			
			var size = file.size;
			if(size > 10*1024*1024){
				alert("죄송합니다. 10MB를 넘는 파일은 전송할 수 없습니다.");
				return;
			}
			
			// 파일의 MIME 형식이 "image/"로 시작되지 않으면 오류 출력
			if(file.type.indexOf("image/") != 0){
				alert("이미지 형식이 아닙니다.");
				return;
			}
			
			/* ============================================ */
			var reader = new FileReader();
	        reader.onload = function (evt) {
	            photo.src = evt.target.result;
	        }
			//--- 로컬파일 읽기 요청-------------------------
	        reader.readAsDataURL(file);
			/* ============================================ */
			
		}
		
		pwd2TextBox.oninput = function(e){
			console.log(pwdTextBox.value + "/" + pwd2TextBox.value);
			if (pwdTextBox.value != pwd2TextBox.value) {
				pwd2TextBox.setCustomValidity("비밀번호가 일치하지 않습니다.");
			} else {
				pwd2TextBox.setCustomValidity('');
			}
		};
				
		
		idTextBox.onchange = function(e){
			if(idChecked){
				alert("아이디가 변경되었습니다.\r\n아이디 중복 검사를 다시해야 합니다.");
				idChecked = false;
				return;
			}
		};
		
		idCheckButton.onclick = function(e){
			
			if(idTextBox.value == ""){
				alert("아이디를 입력한 후에 시도하셔야 합니다.");
				return;
			}
			
			var xhr = new XMLHttpRequest();		
			xhr.onload = function(e){
				if(e.target.responseText == "ok"){
					alert("사용가능한 아이디입니다.");
					idChecked = true;
				}
				else
					alert("이미 사용중인 아이디입니다.");
			};
			xhr.open("GET", "id-check?id="+idTextBox.value);						
			xhr.send();	
						
		}
		
		form.onsubmit = function(e){			
			if(!idChecked){
				//idTextBox.setCustomValidity("아이디 중복을 확인하세요.");
				alert("아이디 중복확인을 확인하세요.");
				e.preventDefault();
			}
		};
		
		/* submitButton.onclick = function(e){
			alert(genderSelect.value);
			if(!idChecked){
				idCheckButton.setCustomValidity("아이디 중복을 확인하세요.");
				//alert("아이디 중복확인을 확인하세요.");
				e.preventDefault();
			}
			e.preventDefault();
		}; */
		
	});
	</script>
			
		