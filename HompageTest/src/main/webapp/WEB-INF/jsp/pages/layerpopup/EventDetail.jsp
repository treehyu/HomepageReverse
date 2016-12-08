<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% 
	request.setCharacterEncoding("UTF-8"); 
%>

<!-- 모달 세팅 div -->
<div class="modal-dialog modal-lg">
<div class="modal-content">


<div class="content_bottomline" id="event_title">
 <h3>로맨스 리플레이 (4)</h3>
 No.4886 | 이벤트 기간: 2016.11.10~2016.12.14 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 당첨자 발표: 미정
</div>

<div class="content_bottomline" id="event_content">
 <img alt="이벤트 내용" src="${pageContext.request.contextPath}/img/movie_doctorstrange.jpg">
</div>

<div class="content_bottomline" id="event_comment">

 <div class="content_bottomline">
  <textarea rows="3" cols="5" maxlength="600"></textarea>
  <button onclick="alert('ajax 처리');">등록</button>
 </div>
 
 <div>
   <table>
    <tr>
     <td rowspan="2"><img alt="회원사진" src="${pageContext.request.contextPath}/img/ico_heart.png" class="member_img"></td>
     <td>"아이디"</td>
     <td>"16.11.10"</td>
    </tr>
    <tr>
     <td colspan="2">"comment content comment content comment content co8mment content"</td>
    </tr>
   </table>
      <table>
    <tr>
     <td rowspan="2"><img alt="회원사진" src="${pageContext.request.contextPath}/img/ico_heart.png" class="member_img"></td>
     <td>"아이디"</td>
     <td>"16.11.10"</td>
    </tr>
    <tr>
     <td colspan="2">"comment content comment content comment content co8mment content"</td>
    </tr>
   </table>
   
   <button onclick="alert('ajax 처리')">+ 더보기</button>
  </div>
  
</div>


</div>
</div>