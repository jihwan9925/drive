package com.filtertest.common.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class ContextListenerTest implements ServletContextListener{

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		//톰켓의 servletContext객체가 소멸 됐을 때 실행
		//=톰켓종료시
		System.out.println("서버죽음");
	}

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		//톰켓의 servletContext객체가 생성 됐을 때 실행
		//=톰켓실행시
		System.out.println("서버실행");
	}

	
	
	
	
}
