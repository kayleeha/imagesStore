<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

			
			<main>
				<h2 class="main title">공지사항</h2>

				<div class="breadcrumb">
					<h3 class="hidden">breadlet</h3>
					<ul>
						<li>home</li>
						<li>고객센터</li>
						<li>공지사항</li>
					</ul>
				</div>

				<div class="margin-top first">
					<h3 class="hidden">공지사항 내용</h3>
					<table class="table">
						<tbody>
							<tr>
								<th>제목</th>
								<td class="text-align-left text-indent text-strong text-orange"
									colspan="3">${n.title}</td>
							</tr>
							<tr>
								<th>작성일</th>
								<td class="text-align-left text-indent" colspan="3"><td><fmt:formatDate pattern="yy-MM-dd hh:mm:ss" value="${n.regDate}"/> 
								</td>
							</tr>
							<tr>
								<th>작성자</th>
								<td>${n.writerId}</td>
								<th>조회수</th>
								<td><fmt:formatNumber value="${n.hit}"/></td>
							</tr>
							<tr>
								<th>첨부파일</th>
								<td colspan="3" style="text-align:left; text-indent:10px;">
								<c:forTokens var="fileName" items="${n.files}" delims="," varStatus="st">
									
										<c:set var="style" value="" />
									<c:if test="${fn:endsWith(fileName, 'zip') }">
										<c:set var="style" value="font-weight:bold; color:red;" />
									</c:if>
									<a href="/upload/${fileName}" style="${style}">${fn:toUpperCase(fileName)}</a>
									<c:if test="${!st.last}">
									/
									</c:if>
								</c:forTokens>
								</td>
							</tr>
						</tbody>
					</table>
				</div>

				<div class="margin-top text-align-center">
					<a class="btn-text btn-cancel" href="list">목록</a> <a
						class="btn-text btn-default" href="edit">수정</a> <a
						class="btn-text btn-default" href="del">삭제</a>
				</div>

				<div class="margin-top">
					<table class="table border-top-default">
						<tbody>
							<tr>
								<th>다음글</th>
								<td colspan="3" class="text-align-left text-indent">다음글이
									없습니다.</td>
							</tr>
							<tr>
								<th>이전글</th>
								<td colspan="3" class="text-align-left text-indent"><a
									class="text-blue text-strong" href=""></a></td>
							</tr>
						</tbody>
					</table>
				</div>
			</main>

		