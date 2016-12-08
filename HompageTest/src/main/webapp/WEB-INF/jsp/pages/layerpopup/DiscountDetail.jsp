<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	request.setCharacterEncoding("UTF-8"); 
%>

<!-- 모달 세팅 div -->
<div class="modal-dialog modal-lg">
<div class="modal-content">


<div class="content_bottomline" id="discount_title">
 <h3>할인카드</h3>
</div>

<div class="content_bottomline" id="discount_content">
 
 <div id="discount_content_left">
  <img alt="카드 이미지" src="${pageContext.request.contextPath}/img/card_tworld.png">
 </div>
 
 <div id="discount_content_right">
 
  <h4>T멤버십 일반</h4>
  <p>
   현장할인&nbsp;&nbsp;&nbsp;&nbsp; 인터넷할인
  </p>
  <br/>
  <br/>
  <br/>
  
  <h4>할인 혜택</h4>
  <p>
   - 수유, 제천, 충주 제외<br/>
   - 영화 2,000원 할인(동반 4인 포함, 1일 총 5매)<br/>
   - 현장 및 온라인 할인가능<br/>
   - 보유한도 내 사용가능<br/>
   - 조조/심야/우대/어린이/특별컨텐츠 제외<br/>
   - 타 할인카드 및 포인트와 중복사용 불가<br/>
   - 메가박스 포인트 적립은 할인된 금액을 제외한 결제금액의 10% 적립<br/>
  </p>
 </div>
 
</div>

<button onclick="alert('창 끄기')">확인</button>




</div>
</div>