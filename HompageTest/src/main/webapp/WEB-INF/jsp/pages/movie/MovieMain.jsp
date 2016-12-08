<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% 
	//인코딩 설정
	request.setCharacterEncoding("UTF-8");
	String cp=request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>

<!-- meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- css -->
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/bootstrap.min.css"> <!-- 부트스트랩 -->
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/main.css"> <!-- 커스텀: main 페이지 StyleSheet(임시) -->

<!-- javascript library -->
<script src="<%=cp %>/js/jquery-3.1.1.min.js"></script> <!-- 제이쿼리 3.1.1 -->
<script src="<%=cp %>/js/bootstrap.min.js"></script> <!-- 부트스트랩 -->
<script src="<%=cp %>/js/custom_layerpopup.js"></script> <!-- 레이어팝업 -->

<title>메인, 메가박스</title>
</head>


<body>

<c:if test="${ movieid!=nulltxt }">
	<script>
	
		$(document).ready(function()
		{
			custom_layerOpen('<%=cp %>/megabox.do/movie', {movieid: '${movieid }'}, $('#modal_wrapper'), 'modal_contentArea')
		});
	
	</script>
</c:if>

 <header>
	<jsp:include page="/WEB-INF/jsp/pages/common/Header.jsp" flush="false" />
 </header>

	
 <div class="content_wrapper">
	<br/><br/><br/><br/>
	<h1>Movie Main Page</h1>
	
	<!-- Layer Popup Area -->
	<div class="modal fade" id="modal_wrapper">
 	 <div id="modal_contentArea">
 	 </div>
 	</div>
		
 </div>
	
	
 <footer>
	<jsp:include page="/WEB-INF/jsp/pages/common/Footer.jsp" flush="true" />
 </footer>
 
</body>
</html>