<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    

	<main>
		<h2 class="main title">회원 비밀번호 재설정</h2>
		
		<div class="breadcrumb">
			<h3 class="hidden">breadlet</h3>
			<ul>
				<li>home</li>
				<li>회원</li>
				<li>비밀번호재설정</li>
			</ul>
		</div>
		<form method="post">
		<div class="margin-top first color-orange text-align-center">
			※가입할 때 등록한 이메일 주소로 비밀번호 재설정을 위한 메일이 전달됩니다.
		</div>
		<div class="margin-top border table"
			style="width:568px;min-height: 170px;box-sizing: border-box;border-radius: 10px;margin-left: auto;margin-right: auto;">
			<div class="margin-top padding border-ver text-align-center color-green text-strong"
				style="width:568px;box-sizing: border-box;margin-left: auto;margin-right: auto;">
				회원가입 시 등록하신 <span class="color-orange">아이디</span>와 <!-- 휴대폰번호 또는 --> <span class="color-orange">이메일 주소</span>를 입력해 주세요.
			</div>
			<div>
			
				<table class="table border-top-none" style="margin-bottom:20px;">
					<tr>
						<td colspan="4">
							
							
							
							
							
							
							
							
							
							
							<input type="radio" name="type" value="email" style="vertical-align: middle;" checked /><label style="margin-left: 5px;">이메일 주소로 확인</label>
						</td>
					</tr>
					<tr>
						<th>아이디</th>
						<td colspan="3" class="text-align-left indent"><input type="text" name="id" class="width-half" required placeholder="회원 아이디를 입력하세요" value="" /></td>
					</tr>
					<tr class="phone hidden">
						<th>휴대폰 번호</th>
						<td colspan="3" class="text-align-left indent"><input type="text" name="phone" class="width-half" placeholder="예) 010-5555-7777" value="" /></td>
					</tr>
					<tr class="email ">
						<th>이메일 주소</th>
						<td colspan="3" class="text-align-left indent">
							<input type="text" name="email" class="width-half" required placeholder="예) user@servername.com" value="" />
							<span class="color-orange">※이 메일 주소로 링크가 전송됩니다.</span>							
						</td>
					</tr>
					<tr class="error-msg hidden">
						<td colspan="4" class="text-align-center color-orange">
							※ 입력한 정보가 올바르지 않습니다.
						</td>
					</tr>
					
				</table>
			
			</div>
			<!-- ---------------------------------------------------------------------------------------------------- -->
			
			<!-- ---------------------------------------------------------------------------------------------------- -->
		</div>
		<div class="margin-top text-align-center">
			<input type="hidden" name="" value="" />			
			<input class="btn-text btn-default" type="submit" value="비밀번호 재설정 링크 보내기" />			
		</div>
		</form>
	</main>
	
	