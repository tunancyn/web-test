 package com.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class RedirectLoginFilter
 */
public class RedirectLoginFilter implements Filter {

    /**
     * Default constructor. 
     */
    public RedirectLoginFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		
		HttpServletRequest request = (HttpServletRequest)arg0;
		HttpServletResponse response = (HttpServletResponse)arg1;
		
		//对于index.html页面的请求需要放行的
		//  /login
		HttpSession session = request.getSession();
		if(session.getAttribute("loginstate") == null){
			String uri = request.getRequestURI();
			String contextPath = request.getContextPath();
		/*System.out.println("uri:" + uri);
			System.out.println("contextPath:" + contextPath);*/
			if(uri.compareTo(contextPath+"/login") !=0){
				/**
				 * http://localhost/2018031001/login
				 * http://localhost/2018031001/index.html
				 * 
				 * http://localhost/2018031001/chenkai/login
				 * http://localhost/2018031001/login/index.html
				 * 
				 * http://localhost/2018031001/chenkai/2018031001/index.html
				 * 
				 * http://localhost
				 * 
				 * ///2018031001/index.html
				 */
				String url = contextPath + "/login";                
				response.sendRedirect(url);
				return;
			}
		}
		
		// pass the request along the filter chain
		chain.doFilter(arg0, arg1);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
