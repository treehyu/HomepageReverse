package megabox.com.mvc.controller;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import megabox.com.mvc.factory.IMainService;
import megabox.com.mvc.vo.MemberVO;
import megabox.com.util.XmlToMapConverter;

@Controller
public class MainController {
	
	private static final String nulltxt="wrong";
	private Logger log=Logger.getLogger(MainController.class);
	
	@Autowired
	private IMainService service;
	@Autowired
	private XmlToMapConverter customLog;
	
	@RequestMapping(value="/megabox.do")
	public String mainView()
	{
		log.info(customLog.getMsg("01"));
		return "main/Main";
	}
	
	@ModelAttribute("nulltxt")
	public String getNulltxt()
	{
		return nulltxt;
	}
	
	//영화
	@RequestMapping(value="/megabox.do/movie", method=RequestMethod.POST)
	public String movieDetail(String movieid, Model model)
	{
		if(movieid.isEmpty())
			return "redirect:/"+wrongAccess();
		
		//모델 설정
		model.addAttribute("movie", "movieVO");
		
		return "layerpopup/MovieDetail";
	}
	
	@RequestMapping(value="/megabox.do/movie", method=RequestMethod.GET)
	public String movie(String movieid, Model model)
	{
		String mid=movieid;
		if(movieid==null)
			mid=nulltxt;
				
		model.addAttribute("movieid", mid);
		model.addAttribute("movieList", "movieVO List");
		
		return "movie/MovieMain"; 
	}
	

	//이벤트
	@RequestMapping(value="/megabox.do/event", method=RequestMethod.POST)
	public String eventDetail(String eventid, Model model)
	{
		if(eventid.isEmpty())
			return "redirect:/"+wrongAccess();
		
		return "layerpopup/EventDetail";
	}
	
	@RequestMapping(value="/megabox.do/event", method=RequestMethod.GET)
	public String event(String eventid, Model model)
	{
		String eid=eventid;
		if(eventid==null)
			eid=nulltxt;
		
		model.addAttribute("eventid", eid);
		model.addAttribute("event", "to be set");
		
		return "event/EventMain";
	}
	
	
	//할인카드
	@RequestMapping(value="/megabox.do/discountdetail", method=RequestMethod.POST)
	public String dicountDetail(String discountid, Model model)
	{
		if(discountid==null)
			return "redirect:/"+wrongAccess();
		
		return "layerpopup/DiscountDetail";
	}
	
	
	//잘못된 접근 시 반환 페이지
	@RequestMapping(value="/megabox.do/wrongaccess")
	public String wrongAccess()
	{
		return "error/WrongAccess";
	}
	
	
	
	//로그인
	@RequestMapping(value="/megabox.do/login", method=RequestMethod.POST)
	public String login(MemberVO vo, HttpSession session) throws Exception
	{
		//00. test
		
		//1. request parameter 값으로 회원정보 조회
		MemberVO result=service.login(vo);
		
		if(result.getMem_no()==null)
			return "redirect:/megabox.do";
		
		//2. 조회 값 있을 시 세션 저장
		session.setAttribute("id", result.getMem_webid());
		session.setAttribute("memberNo", result.getMem_no());
		
		//3. 뷰 설정
		return "redirect:/megabox.do";
	}
	
	//로그아웃
	@RequestMapping(value="/megabox.do/logout")
	public String logout(HttpSession session)
	{
		//1. session 값 파괴
		session.removeAttribute("id");
		session.removeAttribute("memberNo");
		
		//2. 뷰 설정
		return "redirect:/megabox.do";
	}
	
	//회원정보 확인
	@RequestMapping(value="/megabox.do/memberinfo", method=RequestMethod.POST)
	public String selectMember(HttpSession session, Model model)
	{
		MemberVO vo=new MemberVO();
		vo.setMem_no((String)session.getAttribute("memberNo"));
		
		MemberVO result=service.getMemberInfo(vo);
		
		model.addAttribute("member", result);
		return "common/MemberInfo";
	}
	

}


















