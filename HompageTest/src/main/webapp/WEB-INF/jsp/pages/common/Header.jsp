<%@page import="megabox.com.mvc.vo.MemberVO"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	request.setCharacterEncoding("UTF-8");
%>


<script src="${pageContext.request.contextPath}/js/custom/header.js?ver=0.22"></script> <!-- Header 자바스크립트 분리 -->

<!-- 상단 네비게이터 -->
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <ul class="top_ul">
      <li id="top_logo">
       <img src='${pageContext.request.contextPath}/img/ico_megabox1.JPG' alt="sitemap" id="top_sitemap_img1" class="top_sitemap_img"/>
       <img src='${pageContext.request.contextPath}/img/ico_megabox2.png' alt="sitemap" id="top_sitemap_img2" class="top_sitemap_img"/>
      </li>
      <li class="top_li" id="ico_home" onclick="location.href='megabox.do'"><div class="glyphicon glyphicon-home" aria-hidden="true"></div></li>
      <li class="top_li"><a href="#">영화</a></li>
      <li class="top_li"><a href="#">큐레이션</a></li>
      <li class="top_li"><a href="#">영화관</a></li>
      <li class="top_li"><a href="#">특별관</a></li>
      <li class="top_li"><a href="#">스토어</a></li>
      <li class="top_li"><a href="#">이벤트</a></li>
       
       <c:choose>
 		<c:when test="${ empty sessionScope.memberNo }">
 		 <li class="top_li" id="top_li_member_login">
	      	 <a>로그인</a>
      	 </li>
      	</c:when>
      	
      	<c:otherwise>
      	 <li class="top_li" id="top_li_member_info">
      		<a>회원정보</a>
      		<p style="font-size: 9px;">${sessionScope.id }</p>
      	 </li>
      	</c:otherwise>
      	</c:choose>
      	
     
     </ul>
     
<!-- 로그인 및 회원정보 -->
<div class="member_content">

<c:choose>
 <c:when test="${ empty sessionScope.memberNo }">
 <div class="member_login">
  <div class="member_content_bottomline" id="member_login_table">
   <img src="${pageContext.request.contextPath}/img/ico_esc.png" class="member_btn_close" alt="닫기" />
   <img src="${pageContext.request.contextPath}/img/ico_megabox2.png" id="member_login_topimg" alt="메가박스" />
   <form method="post" id="loginfrm" action="megabox.do/login">
   	<table>
   	 <tr>
   	  <td><input type="text" id="id" name="mem_webid" placeholder="아이디" /></td>
   	  <td rowspan="2"><input type="submit" id="member_login_btn" value="로그인"></td>
   	 </tr>
   	 <tr>
  	  <td><input type="password" id="pw" name="mem_pw" placeholder="비밀번호" /></td>
  	 </tr>
   	</table>
   	<label for="save_id">아이디 저장</label>
   	<input type="radio" id="save_id"/>
  </form>
  </div>
  
  <div>
  	<table>
  	 <tr>
  	  <td><img src="${pageContext.request.contextPath}/img/ico_heart.png" alt="나의 메가박스" class="member_content_ico"/></td>
  	  <td><img src="${pageContext.request.contextPath}/img/ico_heart.png" alt="나의 메가박스" class="member_content_ico"/></td>
  	  <td><img src="${pageContext.request.contextPath}/img/ico_heart.png" alt="나의 메가박스" class="member_content_ico" /></td>
  	  <td><img src="${pageContext.request.contextPath}/img/ico_heart.png" alt="나의 메가박스" class="member_content_ico" /></td>
  	 </tr>
  	 
  	 <tr align="center">
  	  <td>비회원<br/>예매확인/취소</td>
  	  <td>ID/PW찾기               </td>
  	  <td>회원가입                </td>
  	  <td>휴면계정<br/>복구신청   </td>
  	 </tr>
  	</table>
  </div>
 </div>
 </c:when>
 
 <c:otherwise>
 	<div class="member_info" id="member_info">
 	</div>
 </c:otherwise>
 </c:choose>
 <img src="${pageContext.request.contextPath}/img/ico_esc.png" class="member_btn_close" alt="닫기" />
</div>
  </div>
</nav>




<!-- 사이트맵  -->
<div class="wrapper_menus">
<div class="wrapper_sitemap">

<div id="sitemap_col01">
 <div id="sitemap_first">
  <div id="ico_home_sitemap" class="glyphicon glyphicon-home" aria-hidden="true"><br/>Home<br/><br/></div>
 </div>
 
 <div id="sitemap_second">
  <dl id="dl02_01">
   <dt><a href="#">예매</a></dt>
   <dd><a href="#">예매 안내</a></dd>
   <dd><a href="#">빠른 예매</a></dd>
   <dd><a href="#">상영시간표</a></dd>
   <dd><a href="#">예매 확인/취소</a></dd>
  </dl>
  <dl id="dl02_02">
   <dt><a href="#">영화</a></dt>
	<dd><a href="#">박스오피스</a></dd>
	<dd><a href="#">현재상영작</a></dd>
	<dd><a href="#">상영예정작</a></dd>
	<dd><a href="#">보고싶은 영화</a></dd>
	<dd><a href="#">나의 무비스토리</a></dd>
  </dl>
 </div>
</div>

<div id="sitemap_col02">
 <div id="sitemap_third">
  <dl id="dl03_01">
   <dt><a href="#">큐레이션</a></dt>
   <dd><a href="#">필름 소사이어티</a></dd>
   <dd><a href="#">클래식 소사이어티</a></dd>
   <dd><a href="#">프로젝트</a></dd>
   <dd><a href="#">G시네마</a></dd>
  </dl>
  <dl>
   <dt><a href="#">영화관</a></dt>
   <dd><a href="#">영화관 찾기</a></dd>
   <dd><a href="#">특별관 안내</a></dd>
  </dl>
  <dl>
   <dt><a href="#">스토어</a></dt>
   <dd><a href="#">메가티켓</a></dd>
  </dl>
  <dl>
   <dt><a href="#">할인카드</a></dt>
   <dd><a href="#">멤버십 제휴카드</a></dd>
   <dd><a href="#">할인 신용카드</a></dd>
   <dd><a href="#">할인 포인트카드</a></dd>
   <dd><a href="#">관람권/상품권</a></dd>
  </dl>
 </div>
</div>
 
<div id="sitemap_col3">
 <div id="sitemap_fourth">
  <dl>
   <dt><a href="#">이벤트</a></dt>
   <dd><a href="#">메가박스 이벤트</a></dd>
   <dd><a href="#">영화 이벤트</a></dd>
   <dd><a href="#">제휴 이벤트</a></dd>
   <dd><a href="#">영화관 이벤트</a></dd>
  </dl>
  <dl>
   <dt><a href="#">멤버십</a></dt>
   <dd><a href="#">멤버십 안내</a></dd>
   <dd><a href="#">멤버십 카드 등록</a></dd>
   <dd><a href="#">VIP ZONE</a></dd>
   <dd><a href="#">스페셜 멤버십</a></dd>
  </dl>
  <dl>
   <dt><a href="#">나의 메가박스</a></dt>
   <dd><a href="#">멤버십 정보</a></dd>
   <dd><a href="#">예매확인/취소</a></dd>
   <dd><a href="#">스토어 구매내역</a></dd>
   <dd><a href="#">나의 무비스토리</a></dd>
   <dd><a href="#">관람권/VIP쿠폰</a></dd>
   <dd><a href="#">회원정보수정</a></dd>
   <dd><a href="#">나의 문의 내역</a></dd>
  </dl>
 </div>
</div>

<div id="sitemap_col04">
 <div id="sitemap_fifth">
  <dl>
   <dt><a href="#">고객센터</a></dt>
   <dd><a href="#">자주 묻는 질문</a></dd>
   <dd><a href="#">공지사항</a></dd>
   <dd><a href="#">1:1 문의</a></dd>
   <dd><a href="#">단체관람/대관문의</a></dd>
   <dd><a href="#">분실물 문의/접수</a></dd>
   <dd><a href="#">원격지원 서비스</a></dd>
   <dd><a href="#">메가박스 온라인 소개</a></dd>
   <dd><a href="#">스크린 수 배정에 관한 기준</a></dd>
  </dl>
  <dl>
   <dt><a href="#">회원서비스</a></dt>
   <dd><a href="#">회원가입</a></dd>
   <dd><a href="#">아이디/비밀번호 찾기</a></dd>
   <dd><a href="#">휴면계정 복구신청</a></dd>
   <dd><a href="#">이용약관</a></dd>
   <dd><a href="#">개인정보 처리방침</a></dd>
   <dd><a href="#">회원 탈퇴</a></dd>
  </dl>
 </div>
</div>
 
<div id="sitemap_col05">
 <div id="sitemap_sixth">
  <dl>
   <dt><a href="#">회사 소개</a></dt>
   <dd><a href="#">메가박스 소개</a></dd>
   <dd><a href="#">오시는 길</a></dd>
   <dd><a href="#">홍보자료</a></dd>
   <dd><a href="#">제휴/광고/부대사업문의</a></dd>
   <dd><a href="#">윤리경영</a></dd>
   <dd><a href="#">IR자료</a></dd>
  </dl>
  <dl>
   <dt><a href="#">인재 채용</a></dt>
   <dd><a href="#">메가박스 HR</a></dd>
   <dd><a href="#">채용안내</a></dd>
   <dd><a href="#">채용공고</a></dd>
   <dd><a href="#">Benefit</a></dd>
   <dd><a href="#">채용문의</a></dd>
  </dl>
 </div>
 
 <div id="sitemap_sevennth">
  <dl>
   <dt><a href="#">고객 만족도 조사</a></dt>
   <dd><a href="#">설문 참여하기</a></dd>
  </dl>
  <div>
   <div class="glyphicon glyphicon-edit" aria-hidden="true"></div>
  </div>
 </div>
 
</div>

</div>
<div id="sitemap_close">
  <img src="${pageContext.request.contextPath}/img/logo_sitemap.png" alt="사이트맵 닫기" />
</div>
</div>



<!-- 네비 밑줄 submenu -->
<div id="submenu">
 <div id="submenu_society">
  <a href="#">필름 소사이어티 | </a>
  <a href="#">클래식 소사이어티</a>
 </div>
 
 <div id="submenu_movie">
  <span>
   <a href="#">고객센터 | </a>
   <a href="#">멤버십 | </a>
   <a href="#">VIP</a>
  </span>
  
  <div id="btn_group">
   <button class="btn_movie" id="btn_schedule" onclick="location.href='#'">상영시간표</button>
   <button class="btn_movie" id="btn_booking" onclick="alert('예매 레이어 띄우기')">빠른예매</button>
  </div>
 </div>
</div>
















