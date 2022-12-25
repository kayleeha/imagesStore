<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
    <title>코딩 전문가를 만들기 위한 온라인 강의 시스템</title>
    <meta charset="UTF-8">
    <title>공지사항목록</title>
    
    <link href="/css/member/layout.css" type="text/css" rel="stylesheet" />
    <style>
    
        #visual .content-container{	
            height:inherit;
            display:flex; 
            align-items: center;
            
            background: url("../../images/customer/visual.png") no-repeat center;
        }
    </style>
</head>

<body>
   

<script src="/resource/js/header.js"></script>
	<!-- --------------------------- <visual> --------------------------------------- -->
	<!-- visual 부분 -->
	
	<div id="visual">
		<div class="content-container"></div>
	</div>
	<!-- --------------------------- <body> --------------------------------------- -->
	<div id="body">
		<div class="content-container clearfix">

			<!-- --------------------------- aside --------------------------------------- -->
			<!-- aside 부분 -->
			


			<aside class="aside">				
				<h1>회원가입</h1>

				<nav class="menu text-menu first margin-top">
					<h1>회원메뉴</h1>
					<ul>
						<li><a href="/member/login.html">로그인</a></li>
						<li><a href="/member/join.html">회원가입</a></li>
						<li><a href="/member/">아이디찾기</a></li>
						<li><a href="/member/t">비밀번호 재발급</a></li>
					</ul>
				</nav>

				


	

				<!-- <nav class="menu">
					<h1>협찬광고</h1>
					<ul>
		                <li style="width:181px;overflow:hidden;">                            
                                             
		                </li>  
                        <li style="width:181px;overflow:hidden;">                            
                                                
		                </li>
                    </ul>					
				</nav> -->
			</aside>
			<!-- --------------------------- main --------------------------------------- -->
			
			<!-- content 부분 -->
			


            <main>
                <h2 class="main title">로그인</h2>
        
                <div class="breadcrumb">
                    <h3 class="hidden">breadlet</h3>
                    <ul>
                        <li>home</li>
                        <li>회원</li>
                        <li>로그인</li>
                    </ul>
                </div>
        
                <div class="margin-top first">
                    <h3 class="hidden">로그인 정보 입력</h3>
                    <form class="login-form" method="post">
                        <fieldset>
                            <legend class="hidden">로그인 폼</legend>
                            <h4>
                                <img src="../images/member/txt-title.png" />
                            </h4>
                            <ul class="login-box">
                                <li>
                                    <label for="uid">아이디</label>
                                    <input type="text" name="username" placeholder="아이디" /></li>
                                <li>
                                    <label for="pwd">비밀번호</label>
                                    <input type="password" 	name="password" placeholder="비밀번호"/></li>
                            </ul>
                            
                            <div class="login-btn-box">
                                <input type="hidden" name="" value="" />
                                <input type="submit" class="btn login-btn"/>
                            </div>
                            <ul class="login-option">
                                <li>
                                    <span>아이디 또는 비밀번호를 분실하셨나요?</span>
                                    <a href="find-id">
                                        <img alt="ID/PWD 찾기" src="../images/member/btn-find.png" />
                                    </a>
                                </li>
                                <li class="margin-top">
                                    <span>아이디가 없으신 분은 회원가입을 해주세요.</span>
                                    <a href="agree">
                                        <img alt="회원가입" src="../images/member/btn-join.png" />
                                    </a>
                                </li>
                            </ul>
                        </fieldset>
                    </form>
                </div>
        
            </main>

			
		</div>
	</div>
	
</body>
</html>