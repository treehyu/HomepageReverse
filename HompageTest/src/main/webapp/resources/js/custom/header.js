/**
 * Header.jsp 자바스크립트 
 */

		//스크롤 액션
		$(document).scroll(function()		
		{
			$("#top_sitemap_img1").css('display', 'none');
			$("#top_sitemap_img2").css('display', 'block');
			
			if($(this).scrollTop()<=20)
			{
				$("#top_sitemap_img2").css('display', 'none');
				$("#top_sitemap_img1").css('display', 'block');
			}
		});
		
		
		$(function()
		{
			//사이트맵 열기
			$(".top_sitemap_img").click(function()
			{
				$("nav.navbar").hide();
				$(".wrapper_sitemap").css('display', 'block');
				$("#sitemap_close").css('display', 'block');
				$("#submenu_society").css('position', 'relative');
				$("#submenu_movie").css('position', 'relative');
			});
			
			//사이트맵 닫기
			$("#sitemap_close").click(function()
			{
				$("nav.navbar").show();
				$(".wrapper_sitemap").css('display', 'none');
				$("#sitemap_close").css('display', 'none');
				$("#submenu_society").css('position', 'absolute');
				$("#submenu_movie").css('position', 'absolute');
			});
			
			//로그인 창 열기
			$("#top_li_member_login").click(function()
			{
				$("#submenu_society").css('position', 'relative');
				$("#submenu_movie").css('position', 'relative');
				$("#btn_group").hide();
				$(".member_content").show();
			});
			
			//회원정보 창 열기
			$("#top_li_member_info").click(function()
			{
				$.post('megabox.do/memberinfo', '', function(data)
				{
					document.getElementById("member_info").innerHTML=data;
				});
				
				$("#submenu_society").css('position', 'relative');
				$("#submenu_movie").css('position', 'relative');
				$("#btn_group").hide();
				$(".member_content").show();
			});
			
			
			//로그인/회원정보 창 닫기
			$(".member_btn_close").click(function()
			{
				$(".member_content").hide();
				$("#submenu_society").css('position', 'absolute');
				$("#submenu_movie").css('position', 'absolute');
				$("#btn_group").show();
			});
			
			
		});
	
		
		
		
		
		