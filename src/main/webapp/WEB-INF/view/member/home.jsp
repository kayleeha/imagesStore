<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    isELIgnored="false"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	 

<!DOCTYPE html>
<html>
<head><%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <main>
                <h2 class="main title">회원가입 폼</h2>
                
                <div class="breadcrumb" style="margin-top:-20px;">
                    <h3 class="hidden">경로</h3>
                    <img src="../images/member/step2.png" alt="회원가입 2단계" />
                </div>
                
                
                <form id="form1" method="post" enctype="multipart/form-data">
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

			
		
<meta charset="utf-8">
<c:if test="${message=='cancel_order'}">
	<script>
	window.onload=function()
	{
	  init();
	}
	
	function init(){
		alert("주문을 취소했습니다.");
	}
	</script>
</c:if>
<script>
function fn_cancel_order(order_id){
	var answer=confirm("주문을 취소하시겠습니까?");
	if(answer==true){
		var formObj=document.createElement("form");
		var i_order_id = document.createElement("input"); 
	    
	    i_order_id.name="order_id";
	    i_order_id.value=order_id;
		
	    formObj.appendChild(i_order_id);
	    document.body.appendChild(formObj); 
	    formObj.method="post";
	    formObj.action="";
	    formObj.submit();	
	}
}

</script>
</head>
<body>
<h1>최근주문내역
    <A href="#"> <IMG  src="${contextPath}/resources/image/btn_more_see.jpg">  </A> 
</h1>
<table class="list_view">
		<tbody align=center >
			<tr style="background:#33ff00" >
				<td>주문번호</td>
				<td>주문일자</td>
				<td>주문상품</td>
				<td>주문상태</td>
				<td>주문취소</td>
			</tr>
      <c:choose>
         <c:when test="${ empty myOrderList  }">
		  <tr>
		    <td colspan=5 class="fixed">
				  <strong>주문한 상품이 없습니다.</strong>
		    </td>
		  </tr>
        </c:when>
        <c:otherwise>
	      <c:forEach var="item" items="${myOrderList }"  varStatus="i">
	       <c:choose> 
              <c:when test="${ pre_order_id != item.order_id}">
                <c:choose>
	              <c:when test="${item.delivery_state=='delivery_prepared' }">
	                <tr  bgcolor="lightgreen">    
	              </c:when>
	              <c:when test="${item.delivery_state=='finished_delivering' }">
	                <tr  bgcolor="lightgray">    
	              </c:when>
	              <c:otherwise>
	                <tr  bgcolor="orange">   
	              </c:otherwise>
	            </c:choose> 
            <tr>
             <td>
		       <a href="${contextPath}/mypage/myOrderDetail.do?order_id=${item.order_id }"><span>${item.order_id }</span>  </a>
		     </td>
		    <td><span>${item.pay_order_time }</span></td>
			<td align="left">
			   <strong>
			      <c:forEach var="item2" items="${myOrderList}" varStatus="j">
			          <c:if  test="${item.order_id ==item2.order_id}" >
			            <a href="${contextPath}/goods/goodsDetail.do?goods_id=${item2.goods_id }">${item2.goods_title }/${item.order_goods_qty }개</a><br>
			         </c:if>   
				 </c:forEach>
				</strong></td>
			<td>
			  <c:choose>
			    <c:when test="${item.delivery_state=='delivery_prepared' }">
			       배송준비중
			    </c:when>
			    <c:when test="${item.delivery_state=='delivering' }">
			       배송중
			    </c:when>
			    <c:when test="${item.delivery_state=='finished_delivering' }">
			       배송완료
			    </c:when>
			    <c:when test="${item.delivery_state=='cancel_order' }">
			       주문취소
			    </c:when>
			    <c:when test="${item.delivery_state=='returning_goods' }">
			       반품완료
			    </c:when>
			  </c:choose>
			</td>
			<td>
			  <c:choose>
			   <c:when test="${item.delivery_state=='delivery_prepared'}">
			       <input  type="button" onClick="fn_cancel_order('${item.order_id}')" value="주문취소"  />
			   </c:when>
			   <c:otherwise>
			      <input  type="button" onClick="fn_cancel_order('${item.order_id}')" value="주문취소" disabled />
			   </c:otherwise>
			  </c:choose>
			</td>
			</tr>
          <c:set  var="pre_order_id" value="${item.order_id}" />
           </c:when>
      </c:choose>
	   </c:forEach>
	  </c:otherwise>
    </c:choose> 	    
</tbody>
</table>

<br><br><br>	
<h1>계좌내역
    <a href="#"> <img  src="${contextPath}/resources/image/btn_more_see.jpg" />  </a>
</h1>
<table border=0 width=100%  cellpadding=10 cellspacing=10>
  <tr>
    <td>
	   예치금 &nbsp;&nbsp;  <strong>10000원</strong>
   </td>
    <td>
	   쇼핑머니 &nbsp;&nbsp; <strong>9000원</strong>
   </td>
   </tr>
   <tr>
    <td>
	   쿠폰 &nbsp;&nbsp;  <strong>6000원</strong>
   </td>
    <td>
	   포인트 &nbsp;&nbsp; <strong>2000원</strong>
   </td>
   </tr>
   <tr>
    <td>
	   상품권 &nbsp;&nbsp;  <strong>4000원</strong>
   </td>
    <td>
		디지털머니 &nbsp;&nbsp; <strong>9000원</strong>
   </td>
   </tr>
</table>

<br><br><br>	
<h1>나의 정보
    <a href="#"> <img  src="${contextPath}/resources/image/btn_more_see.jpg" />  </a>
</h1>
<table border=0 width=100% cellpadding=10 cellspacing=10>
  <tr>
    <td>
	   이메일:
   </td>
    <td>
	   <strong>${memberInfo.email1 }@${memberInfo.email2 }</strong>
   </td>
   </tr>
   <tr>
    <td>
	   전화번호 
   </td>
    <td>
	   <strong>${memberInfo.hp1 }-${memberInfo.hp2}-${memberInfo.hp3 }</strong>
   </td>
   </tr>
   <tr>
    <td>
	  주소 
   </td>
    <td>
		도로명:  &nbsp;&nbsp; <strong>${memberInfo.roadAddress }</strong>  <br>
		지번:   &nbsp;&nbsp; <strong>${memberInfo.jibunAddress }</strong> 
   </td>
   </tr>
</table>
</body>
</html>
