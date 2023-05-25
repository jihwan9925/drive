package com.filtertest.common.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class BasicFilter implements Filter{

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		System.out.println("BasicFilter실행함");
		
		//Wrapper클래스 적용하기
		MyRequestWrapper mrw=new MyRequestWrapper((HttpServletRequest)request);
		
		//다음로직이 실행될 수 있게 만들기(요청보냈으면 해당서블렛으로, 요청없으면 인덱스페이지로 실행되도록
		//							필터에서 나가는 것을 허락하는 메소드)
		chain.doFilter(mrw, response);
		
		
	}
	
	

}
