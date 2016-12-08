package megabox.com.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoggerInterceptor extends HandlerInterceptorAdapter {

	protected Logger log=Logger.getLogger(LoggerInterceptor.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception 
	{
		//preHandle: log start notice
		if(log.isInfoEnabled())
		{
			log.info("/info log start==========================================");
			log.info("Request URI: "+request.getRequestURI());
		}
		
		/*if(log.isDebugEnabled())
		{
			log.info("/debug log start==========================================");
			log.info("Request URI: "+request.getRequestURI());
		}
		
		if(log.isErrorEnabled())
		{
			log.info("/error log start==========================================");
			log.info("Request URI: "+request.getRequestURI());
		}*/
		
		return super.preHandle(request, response, handler);
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView)
			throws Exception 
	{
		//postHandle: log end notice
		if(log.isDebugEnabled())
			log.debug("==========================================debug log end/");
		
		/*if(log.isInfoEnabled())
			log.info("==========================================info log end/");
		
		if(log.isErrorEnabled())
			log.error("==========================================error log end/");*/
		
		super.postHandle(request, response, handler, modelAndView);
	}
	

	
	
	
}
