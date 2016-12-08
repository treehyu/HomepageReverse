<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>

<!-- meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
 
<!-- css -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css"> <!-- 부트스트랩 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css"> <!-- 커스텀: main 페이지 StyleSheet -->

<!-- javascript library -->
<script src="${pageContext.request.contextPath}/js/lib/jquery-3.1.1.min.js"></script> <!-- 제이쿼리 3.1.1 -->
<script src="${pageContext.request.contextPath}/js/lib/bootstrap.min.js"></script> <!-- 부트스트랩 -->

<title>메인, 메가박스</title>

</head>


<body>

 <header>
	<jsp:include page="/WEB-INF/jsp/pages/common/Header.jsp" flush="false" />
 </header>



<div class="content_wrapper">

<!-- 이벤트, 영화 등 홍보 슬라이더 -->
<div id="main_slider" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img alt="슬라이더1" title="슬라이더1" src="${pageContext.request.contextPath}/img/movie_doctorstrange.jpg" />
      <div class="carousel-caption">
       닥터스트레인지
      </div>
    </div>
    <div class="item">
      <img alt="슬라이더1" title="슬라이더2" src="${pageContext.request.contextPath}/img/movie_inferno.jpg" />
      <div class="carousel-caption">
        인페르노
      </div>
    </div>
    <div class="item">
      <img alt="슬라이더1" title="슬라이더3" src="${pageContext.request.contextPath}/img/movie_luckkey.jpg" />
      <div class="carousel-caption">
        럭키
      </div>
    </div>
    
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#main_slider" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#main_slider" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
  
</div>





<!-- 박스오피스, 최신개봉작, 상영예정작, 큐레이션 -->
<div class="main_movie">
 
 <div id="btn_group">
  <button onclick="alert('ajax(boxoffice) and give class, remove another');" class="btn_active">박스오피스</button>
  <button onclick="alert('ajax(lastest) and give class, remove another');">최신개봉작</button>
  <button onclick="alert('ajax(tobe) and give class, remove another');">상영예정작</button>
  <button onclick="alert('ajax(curation) and give class, remove another');">큐레이션</button>
 </div>
 
 <div>
 </div>
 
</div>
<br/>

<!-- 새로운 이벤트 -->
<div class="main_event">

 <div id="event_left">
  <div></div>
  <div></div>
  <div></div>
 </div>
 
 <div id="event_right">
 </div>
 
</div>


<!-- GRAND OPENING -->
<div class="main_grandopen">
 <!-- 이미지, 혹은 배경으로 삽입 -->
 <!-- a태그 absolute로 -->
</div>



<!-- 제휴 이벤트 -->
<div class="main_coop">

 <div id="coop_left">
  <div></div>
  <div></div>
  <div></div>
  <div></div>
 </div>
 
 <div id="coop_right">
 </div>
 
</div>


<!-- 공지사항, 메가박스 할인카드, 페이스북 -->

<!-- 인터셉터 확인 페이지 링크 -->
<button onclick="location.href='megabox.do/sessionck'">로그인한 사람만 클릭</button>
<br/>

<!-- 레이어 팝업 -->
<script src="${pageContext.request.contextPath}/js/custom/custom_layerpopup.js"></script> <!-- 레이어팝업 스크립트 -->

<br/>
<button onclick="custom_layerOpen('megabox.do/movie', {movieid: 'movie test'}, $('#modal_wrapper'), 'modal_contentArea');">movie</button>
<button onclick="custom_layerOpen('megabox.do/event', {eventid: 'event test'}, $('#modal_wrapper'), 'modal_contentArea');">event</button>
<button onclick="custom_layerOpen('megabox.do/discountdetail', {discountid: 'discount test'}, $('#modal_wrapper'), 'modal_contentArea');">discount</button>
<br/>
	

<div class="modal fade" id="modal_wrapper">
  <div id="modal_contentArea"></div>
</div>



</div>




<footer>
	<jsp:include page="/WEB-INF/jsp/pages/common/Footer.jsp" flush="true" />
</footer>

</body>
</html>









