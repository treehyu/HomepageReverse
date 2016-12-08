package megabox.com.mvc.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SessionCkController {

	Logger log=Logger.getLogger(this.getClass());
	
	//인터셉터 테스트 페이지
	@RequestMapping(value="/megabox.do/sessionck")
	public String sessionCheck()
	{
		log.info("로그인이 필요합니다.");
		return "interceptor/InterceptorTest";
	}
}
