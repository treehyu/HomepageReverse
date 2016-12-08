<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% 
	request.setCharacterEncoding("UTF-8"); 
%>
<!-- 모달 세팅 div -->
<div class="modal-dialog modal-lg">
 <div class="modal-content">

  <!-- 영화 정보 -->
  <div id="movie_info">

   <!-- 영화 이미지 -->
   <div id="movie_img">
     <img alt="포스터" src="${pageContext.request.contextPath}/img/movie_doctorstrange.jpg">
   </div>

   <!-- 영화 정보 content -->
   <div id="movie_content">
     <!-- 제목 -->
     <div id="movie_title" class="content_bottomline">
       <div class="movie_age" id="movie_age_12"><b>12</b></div>
       <div id="movie_name_ko"><h3>"닥터 스트레인지"</h3></div>
       <div id="movie_name_en">Doctor Strange, 2015</div>
     </div>
  
     <!-- 평점, 예매버튼, 정보, 기타 -->
     <div id="movie_summary" class="content_bottomline">
   
       <div id="movie_summary_score">
        <table>
         <tr>
          <td><img alt="평점" src="${pageContext.request.contextPath}/img/star_s.png"/></td>
          <td rowspan="2"><b>"8.1"</b>&nbsp;&nbsp;|&nbsp;&nbsp;예매율<b>"1"</b>위 "28.9"%</td>
          <td rowspan="2"><button onclick="alert('예매 레이어창 띄우기!');">예매하기</button></td>
         </tr>
         
         <tr>
          <td>"3561"명 참여</td>
         </tr>
         
        </table>
       </div>
   
       <div id="movie_summary_text">
         <b>타입: </b>"디지털(자막), ATMOS(자막), 3D(자막), 3D ATMOS(자막)"<br/>
         <b>개봉일: </b>"2016.10.26"<br/>
         <b>감독: </b>"스콧 데릭슨"<br/>
         <b>출연진: </b>"베네딕트 컴버배치, 레이첼 맥아담스, 틸다 스윈튼"<br/>
         <b>장르: </b>"액션, 판타지, 어드벤처"<br/>
         <b>누적관객: </b>"4,208,993"명&nbsp;|&nbsp;<b>전일관객: </b>"74,175"명<br/>
       </div>
   
      </div>
  
  
  
     <!-- 평점, 본영화, 보고싶어 입력 -->
     <div id="movie_assessment">
       내 평점 <img alt="평점" src="${pageContext.request.contextPath}/img/star_s.png"/> "평점을 입력해주세요"
       <button onclick="alert('ajax 처리!!');">본영화</button>
       <button onclick="alert('ajax 처리!!');">보고싶어</button>
       <button onclick="alert('예매 레이어창 띄우기~!');">예매하기</button>
       <button onclick="alert('${pageContext.request.contextPath}/megabox.do/movie?movieid=snoopy');">링크복사</button>
     </div>
   </div>
  
  </div>

<!-- 줄거리 -->
<div id="movie_outline">
<h3>줄거리</h3>
 마블 히어로의 새로운 시작! 모든 것을 초월한, 역사상 가장 강력한 히어로가 온다! 불의의 사고로 절망에 빠진 천재 외과의사 ‘닥터 스트레인지(베네딕트 컴버배치)’. 마지막 희망을 걸고 찾아 간 곳에서 ‘에인션트 원(틸다 스윈튼)’을 만나 세상을 구원할 강력한 능력을 얻게 되면서, 모든 것을 초월한 최강의 히어로로 거듭나는데...
</div>

<!-- 영화 스틸컷, 동영상 -->
<a onclick="alert('ajax 처리!!');" class="movie_media" id="active">스킬컷 "19"</a> | 
<a onclick="alert('ajax 처리!!');" class="movie_media">동영상 "1"</a>
<br/>

<div id="movie_media_img">
 <img alt="스틸컷" src="${pageContext.request.contextPath}/img/movie_doctorstrange.jpg">
 <img alt="스틸컷" src="${pageContext.request.contextPath}/img/movie_doctorstrange.jpg">
 <img alt="스틸컷" src="${pageContext.request.contextPath}/img/movie_doctorstrange.jpg">
 <img alt="스틸컷" src="${pageContext.request.contextPath}/img/movie_doctorstrange.jpg">
</div>

<div id="move_media_show">
 
</div>

<!-- 한줄평 -->
<div id="short_comment">
 
  <h3>한줄평("1323"")</h3>

  <!-- 한줄평 등록 -->
  <div id="short_comment_insert">
   <img alt="평점" src="${pageContext.request.contextPath}/img/star_s.png"/> 평점을 입력해주세요
   <textarea rows="3" cols="5" maxlength="200"></textarea>
   <button onclick="alert('ajax 처리');">등록</button>
  </div>

  <!-- 한줄평 목록 -->
  <div id="short_comment_list">
   
   <!-- 목록 순서 -->
   <div id="list_sort" class="content_bottomline">
    <a>최신순</a> | 
    <a>추천순</a> | 
    <a>평점순</a>
   </div>
   
   <!-- 한줄평 내용(이미지, 아이디, 날짜, 평점, 내용) -->
   <div id="comment_content">
   <table>
    <tr>
     <td rowspan="2"><img alt="회원사진" src="${pageContext.request.contextPath}/img/ico_heart.png" class="member_img"></td>
     <td>"아이디"</td>
     <td>"16.11.10"</td>
     <td><img alt="평점" src="${pageContext.request.contextPath}/img/star_s.png"/></td>
     <td rowspan="2"><button onclick="alert('ajax 처리~!!')">"2"<br/>추천</button></td>
    </tr>
    <tr>
     <td colspan="3">"comment content comment content comment content co8mment content"</td>
    </tr>
   </table>
   
   <table>
    <tr>
     <td rowspan="2"><img alt="회원사진" src="${pageContext.request.contextPath}/img/ico_heart.png" class="member_img"></td>
     <td>"아이디"</td>
     <td>"16.11.10"</td>
     <td><img alt="평점" src="${pageContext.request.contextPath}/img/star_s.png"/></td>
     <td rowspan="2"><button onclick="alert('ajax 처리~!!')">"2"<br/>추천</button></td>
    </tr>
    <tr>
     <td colspan="3">"comment content comment content comment content co8mment content"</td>
    </tr>
   </table>
   
   <table>
    <tr>
     <td rowspan="2"><img alt="회원사진" src="${pageContext.request.contextPath}/img/ico_heart.png" class="member_img"></td>
     <td>"아이디"</td>
     <td>"16.11.10"</td>
     <td><img alt="평점" src="${pageContext.request.contextPath}/img/star_s.png"/></td>
     <td rowspan="2"><button onclick="alert('ajax 처리~!!')">"2"<br/>추천</button></td>
    </tr>
    <tr>
     <td colspan="3">"comment content comment content comment content co8mment content"</td>
    </tr>
   </table>
   
   <table>
    <tr>
     <td rowspan="2"><img alt="회원사진" src="${pageContext.request.contextPath}/img/ico_heart.png" class="member_img"></td>
     <td>"아이디"</td>
     <td>"16.11.10"</td>
     <td><img alt="평점" src="${pageContext.request.contextPath}/img/star_s.png"/></td>
     <td rowspan="2"><button onclick="alert('ajax 처리~!!')">"2"<br/>추천</button></td>
    </tr>
    <tr>
     <td colspan="3">"comment content comment content comment content co8mment content"</td>
    </tr>
   </table>
   </div>
   
   <!-- 한줄평 페이징 -->
   <div id="comment_paging">
    <button> < </button>
    <button>1</button>
    <button>2</button>
    <button>3</button>
    <button>4</button>
    <button>5</button>
    <button> > </button>
   </div>
  </div>
</div>

</div>
</div>
  
  
  
  
  