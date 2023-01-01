<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
	 <!-- content 부분 -->



    <div id="visual" class="">
        <div class="content-container">
            <h2 class="hidden">신규 강좌목록</h2>
            <!-- <ul class="mov-button">
			<li class="prev-button">이전</li>
			<li class="next-button">다음</li>
		</ul> -->
		
		 <div class="banner">

			<img src="../images/1.jpg" width=235>
			<img src="../images/star.jpg" width=235 height=155>
			<img src="../images/2.jpg" width=235>
			<img src="../images/dog.jpg" width=235 height=155>
		</div>
		

            <ul class="banner-button-list" >
                <li></li>
            </ul>

        </div>

    </div>
    <div id="notice">
        <div class="content-container">
            <span class="title">간단하게 클릭 한 번으로  <span style="color:yellow;font-size:15px;">다양한 풍경 및 이미지를 <span style="color:#00ffff;">사용하고</span>
                    느껴보세요 <span style="color:#00ffff;">images</span> Store</span></span>
            <!--<a class="detail-button">자세히</a>-->
        </div>
    </div>
    <!-- ----- 공지사항 줄 ------------------------------------------------------------------------------ -->
    <div id="information">
        <div class="content-container">
            <section class="guide">
                <h1 class="title"></h1>
                <div class="margin-top">
                    <a href="customer/faq/1"></a>
                </div>
                <!-- <div>
            2
            </div>
            <div>
            3
            </div> -->
            </section>
            <section class="course-info">
                <h1 class="title text-center"></h1>
                <ul class="list">
                    <li></li>
                </ul>
            </section>
            <section class="notice">
                <h1 class="title"><a href="customer/notice/list"/>공지사항</h1>
                <ul class="list margin-top">

                    <li>
                        <span class="notice-title">
                            <a href="notice/detail">${n.title}</a>
                        </span>
                        <span><fmt:formatDate pattern="yy-MM-dd hh:mm:ss" value="${n.regDate}"/> </span>
                    </li>

                   

                </ul>
            </section>
        </div>
    </div>

    <!-- ----- 커뮤니티 시작 줄 -------------------------------------------------------------------------------------------- -->



    <!-- ----- 커뮤니티 시작 줄 -------------------------------------------------------------------------------------------- -->
    <!-- <div class="margin-top">
	<div style="height: 170px; margin-top:10px;" class="content-container border">
	</div>
</div> -->

    <main id="course">
        <section class="content-container list list-horizontal list-course list-course-index">
            <h1> <span class="color-orange"></span></h1>
            <div>
               
            </div>

            <ul>
    
      
    </main>
    <script>

    </script>
    