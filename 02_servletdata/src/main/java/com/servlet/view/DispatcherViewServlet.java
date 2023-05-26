package com.servlet.view;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DispatcherViewServlet
 */
@WebServlet("/dispatcherView.do") //응답하는 servlet생성(요청받은 servlet에서 위임 받았기 떄문에 전에 사용하던 값들을 가져올 수 있다.)
public class DispatcherViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DispatcherViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("DispatcherviewServlet 실행");
		
		//setAttribute로 저장된 데이터 가져오기
		//HttpServletRequest.getAttribute("key값")메소드 이용
		String data=(String)request.getAttribute("testData"); //반환값:object(set으로 가져올때도 object였다.)
		
		
//		request.getParameterMap().entrySet().forEach(System.out::println);
		
		String name=request.getParameter("name");
		int age=Integer.parseInt(request.getParameter("age"));
		double height=Double.parseDouble(request.getParameter("height"));
		String color=request.getParameter("color");
		String[] animals2=request.getParameterValues("animal");
		String lunch=request.getParameter("lunch");
		String info=request.getParameter("info");
		
		response.setContentType("text/html;charset=utf-8");//대소문자 구분x
        //2.응답데이터 보내기
        // 1)문자열 데이터 : 문자열 스트림으로 전송 -> getWriter();
        // 2)바이너리 데이터 : 파일 스트림으로 전송 -> getOutputStream();
        //#인터페이스
        PrintWriter out=response.getWriter();//import
        //3. 원하는 데이터 전송하기
        //out.write("<h3>내가 만든 첫 응답페이지</h3>");
        String html="<html>";
        html+="<head>";
        html+="<title>개인취향테스트</title>";
        html+="<body>";
        html+="<h1>getSttribute 값 : "+data+"</h1>";
        html+="<h3>개인취향결과</h3>";
        html+="<h4>"+name+"님의 개인취향 확인결과";
        html+="<h4>당신의 이름은 "+name+"이고 나이는 "+age+"살 이고,";
        html+="키는 "+height+"cm입니다.";
        html+="<h4>좋아하는 색은 <span style='color:"+color+"'>"+color+"</span>";
        html+="입니다";
        html+="<ul>좋아하는 동물은";
        for(String animal:animals2) {
        	String src="";
        	switch(animal) {
        	case "강아지":src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxWwZabQxrCn8EDSekGue9RRDmEYUnO7NOjQ&usqp=CAU";break;
        	case "고양이":src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgPe0X60U_s8fvws6YSbjxZCk6MlJCEBUqgg&usqp=CAU";break;
        	case "팽귄":src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKIWtduQwn8jNeA2HiPOGmBklYzyn2-6-vRQ&usqp=CAU";break;
        	case "기린":src="data:image/jpeg;base64,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";break;
        	case "토끼":src="data:image/jpeg;base64,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";break;
        	case "코끼리":src="data:image/jpeg;base64,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";break;
        	}
           html+="<li>"+"<img src='"+src+" width='200px' height='200px'>"+"</li>";
        }
        html+="입니다</ul>";
        html+="<p>오늘의 점심은 "+lunch+"입니다.</p>";
        html+="<h3>소개란에 적은 내용은 "+info+"</h3>";
        html+="</body>";
        html+="</html>";
        out.write(html);
        
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}