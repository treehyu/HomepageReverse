package megabox.com.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

@Service
public class SessionInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception 
	{
		HttpSession session=request.getSession();
		
		if(session.getAttribute("id")==null)
		{
			response.sendRedirect(request.getContextPath()+"/megabox.do");
		}
		
		return super.preHandle(request, response, handler);
	}

}
