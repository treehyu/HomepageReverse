<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


  <div class="member_content_bottomline" id="member_info_firstcol">
    <table>
     <tr>
      <td><b>${member.mem_webid}</b>님</td>
      <td align="right">${member.grade }</td>
     </tr>
    </table>
  </div>
  
  <div class="member_content_bottomline" id="member_info_secondcol">
   <table>
    <tr>
     <td colspan="2">멤버십 포인트</td>
     <td align="right">${member.point }p</td>
    </tr>
    <tr>
     <td colspan="2">15.11.24 이전 포인트</td>
     <td align="right">....p</td>
    </tr>
    <tr>
     <td colspan="2">15.11.24 이후 포인트</td>
     <td align="right">....p</td>
    </tr>
    <tr>
     <td>선호영화관</td>
     <td>....</td>
     <td align="right"><a href="#">변경</a></td>
    </tr>
    <tr>
     <td colspan="2">스페셜멤버십</td>
     <td align="right"><a href="#">가입하기</a></td>
    </tr>
   </table>
  </div>
  
  <div class="member_content_bottomline" id="member_info_thirdcol">
   <table>
    <tr align="center"> 
     <td><img src="${pageContext.request.contextPath}/img/ico_heart.png" alt="나의 메가박스" class="member_content_ico"/></td>
     <td><img src="${pageContext.request.contextPath}/img/ico_heart.png" alt="쿠폰/관람권" class="member_content_ico" /></td>
     <td><img src="${pageContext.request.contextPath}/img/ico_heart.png" alt="스토어 구매내역" class="member_content_ico" /></td>
    </tr>
    <tr align="center">
     <td>나의 메가박스</td>
     <td>쿠폰/관람권</td>
     <td>스토어 구매내역</td>
    </tr>
   </table>
  </div>
  
  <div id="member_info_lastcol">
   마지막 로그인 ${member.final_login }
   <button class="btn_basic" onclick="location.href='megabox.do/logout'">로그아웃</button>
   <%-- <img src="${pageContext.request.contextPath}/img/ico_esc.png" class="member_btn_close" alt="닫기" /> --%>
  </div>
  
  <script src="${pageContext.request.contextPath}/js/lib/jquery-3.1.1.min.js"></script> <!-- 제이쿼리 3.1.1 -->
  <script>
  
  	$(function()
  	{
  		//로그인/회원정보 창 닫기
		$(".member_btn_close").click(function()
		{
			$(".member_content").hide();
			$("#submenu_society").css('position', 'absolute');
			$("#submenu_movie").css('position', 'absolute');
			$("#btn_group").show();
		});
  	});
  
  </script>
  

