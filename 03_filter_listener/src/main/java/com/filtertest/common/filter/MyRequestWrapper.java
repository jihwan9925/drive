package com.filtertest.common.filter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

public class MyRequestWrapper extends HttpServletRequestWrapper{
	
	public MyRequestWrapper(HttpServletRequest request) {
		super(request);
	}

	@Override
	public String getParameter(String name) {
		String oriData=super.getParameter(name);
		//EncodingFilterTestServlet에 
		//String data=request,getParameter("data")와 동일한 것인가? : 
		return oriData+"-bs-";
	}
	
	
	
}
