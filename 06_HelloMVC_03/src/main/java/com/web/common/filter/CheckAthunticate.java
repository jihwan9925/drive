package com.web.common.filter;

import java.io.IOException;

import javax.management.JMRuntimeException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.web.model.dto.MemberDTO;

/**
 * Servlet Filter implementation class CheckAthunticate
 */
@WebFilter(servletNames = {"memberView"})
public class CheckAthunticate extends HttpFilter implements Filter {
       
    /**
     * @see HttpFilter#HttpFilter()
     */
    public CheckAthunticate() {
        super();
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
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		HttpSession session=((HttpServletRequest)request).getSession();
		MemberDTO loginMember=(MemberDTO)session.getAttribute("loginMember");
		if(loginMember==null||!loginMember.getUserId().equals(request.getParameter("userId"))) {
			request.setAttribute("msg", "잘못된 접근입니다.");
			request.setAttribute("loc", "/");
			request.getRequestDispatcher("/views/common/msg.jsp")
			.forward(request, response);
//			throw new RuntimeException("잘못된 접근입니다."); //또다른 방법
		}else {
		// pass the request along the filter chain
			chain.doFilter(request, response);
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
