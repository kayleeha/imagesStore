<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	

	<main>
		<h2 class="main title">아이디 간편 찾기</h2>
		
		<div class="breadcrumb">
			<h3 class="hidden">breadlet</h3>
			<ul>
				<li>home</li>
				<li>회원</li>
				<li>아이디찾기</li>
			</ul>
		</div>
		<form method="post">
		<div class="margin-top first color-orange text-align-center">
			※가입할 때 등록한 정보로 아이디를 찾습니다.
		</div>
		<div class="margin-top border table"
			style="width:568px;min-height: 190px;box-sizing: border-box;border-radius: 10px;margin-left: auto;margin-right: auto;">
			<div class="margin-top padding border-ver text-align-center color-green text-strong"
				style="width:568px;box-sizing: border-box;margin-left: auto;margin-right: auto;">
				회원가입 시 등록하신 이름, 휴대폰번호 또는 이메일 주소를 입력해 주세요.
			</div>
			<div>
			
				<table class="table border-top-none">
					<tr>
						<td colspan="4">
							
							
							
							
							
							
							<input type="radio" name="type" value="phone" style="vertical-align: middle;" checked /><label style="margin-left: 5px;margin-right: 10px;">휴대폰 번호로 찾기</label>
							<input type="radio" name="type" value="email" style="vertical-align: middle;"  /><label style="margin-left: 5px;">이메일 주소로 찾기</label>
						</td>
					</tr>
					<tr>
						<th>이름</th>
						<td colspan="3" class="text-align-left indent"><input type="text" name="name" class="width-half" required placeholder="이름을 입력하세요" value="" /></td>
					</tr>
					<tr class="phone ">
						<th>휴대폰 번호</th>
						<td colspan="3" class="text-align-left indent"><input type="text" name="phone" class="width-half" placeholder="예) 010-5555-7777" value="" /></td>
					</tr>
					<tr class="email hidden">
						<th>이메일 주소</th>
						<td colspan="3" class="text-align-left indent"><input type="text" name="email" class="width-half" placeholder="예) user@servername.com" value="" /></td>
					</tr>
					<tr>
						
						<th colspan="1" class="text-align-right"><img src="/checker.png" /></th>
						<td colspan="3" class="text-align-left indent"><input type="text" name="checker" class="width-half" required placeholder="왼쪽 계산식의 결과를 입력하세요."/></td>
					</tr>
					
					
				</table>
			
			</div>
			<!-- ---------------------------------------------------------------------------------------------------- -->
			
			<!-- ---------------------------------------------------------------------------------------------------- -->
		</div>
		<div class="margin-top text-align-center">
			<input type="hidden" name="" value="" />
			<input class="btn-text btn-default" type="submit" value="아이디 찾기" />
			<a class="btn-text btn-cancel" href="agree">회원가입 페이지로 이동</a>
			<a class="btn-text btn-cancel" href="pwd-reset">비밀번호 재설정 페이지로 이동</a>
		</div>
		</form>
	</main>
	