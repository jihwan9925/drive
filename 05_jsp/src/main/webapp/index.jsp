<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="views/error/500error.jsp"%>
    <!-- ㄴ페이지 선언부(삭제하면 안됨) -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 첫 jsp페이지</title>
</head>
<body>
	<h2>나의 첫 jsp페이지</h2>
	<h3>jsp가 제공하는 태그에 대해 알아보자.</h3>
	<ul>
		<li>지시자 : <%-- <%@ 태그명 속성설정(속성명="속성값") %> --%></li>
		<li>page : 페이지에 대한 설정을 하는 태그, contenttype, import정보, 언어정보등을 설정</li>
		<li>include : 페이지(jsp)내에 다른 페이지(jsp)를 불러올 때 사용하는 태그</li>
		<li>taglib : jsp에서 적용할 외부라이브러리 등록(JSTL, springform)</li>
		<li>선언문 : <%-- <%! 자바코드 %> --%> </li>
		<li>자바클래스 구현보에 작성하는 코드클래스 중괄호부분에 들어갈 코드를 작성시 사용
		(ex:메소드선언, 멤버변수선언 이용할때 사용 거의사용안함) , 조건문, 반복문 등은 사용불가</li>
		<li>스크립트릿 : <%-- <% 자바코드 %> --%> </li>
		<li>자바의 메소드 내부에 들어갈 코드 작성시 사용 , 자주사용한다(지역변수,반복문,조건문 사용)</li>
		<li>표현식 : <%-- <%- 출력할문구||변수명||메소드호출 %> --%></li>
		<li>html화면에 변수나 메소드실행결과를 출력할때 사용</li>
	</ul>
	
	
	<h3>선언문 활용하기</h3>
	<%!
		//멤버변수, 멤버메소드를 선언시 사용
		String testData; //String이 클래스이기 떄문에 맴버변수 취급
		public int age=19; //public으로 변수를 멤버변수 취급하므로 문제 없음
		
		public String getMsg(){
			return "안녕하세요";
		}
		//조건문,반복문은 사용불가
		/* if(test.equals("test")){
			
		}*/
		/* 
		for(int 1=0;i<10;i++){
			
		}
		*/
	%>
	<h3>선언문에서 작성한 내용 이용하기</h3>
	<ol>
		<li>testData : <%=testData %></li>
		<li>age : <%=age %></li>
		<li>getMsg() : <%=getMsg() %></li>
	</ol>
	
	<h3>스크립트릿 이용하기</h3>
	<%
		//자바코드를 작성하는 부분
		//_jspservice()메소드 내부에 작성됨(조건문,반복문,메소드 등이 실행가능하다)
		String msg="이제 곧 lunch시간";
		//public double height=180.5;
		int rndNum=(int)(Math.random()*10+1);
		if(rndNum>3){
			out.print("3보다크다");
		}
		for(int i=0;i<10;i++){
			out.println("출력"+i+"<br>");
		}
	%>
	<h3><%=msg %></h3>
	<h3>랜덤수 : <%=rndNum %></h3>
	<%
		String[] names={"유병승","최주영","이은지","김현영","허성현","김찬은"};
	%>
	<ul>
		<%for(String name:names) {%>
			<li><%=name %></li>
		<%} %>
	</ul>
	
	<%if(msg.contains("점심")) {%>
		<h1>점심 맛있게 드세요!</h1>
	<%} %>
	
	<%
		String[] hobbys={"코딩","독서","게임","등산","취침"};
		for(String h:hobbys){%>
			<label><input type="checkbox" name="hobby" value="<%=h%>"
			<%=h.equals("코딩")?"checked":""%>><%=h%></label>
	<%} %>
	
	<h3>jsp내장객체에 대해 알아보자</h3>
	<p>
		서블릿에서 데이터를 저장하거나 정보를 가져왔던 객체를 지역변수로 가지고 있음(내장객체는 따로 생성할 필요없이 사용가능) <br>
		HttpServletRequest : request <br>
		HttpServletResponse : response <br>
		HttpSession : session <br>
		ServletContext : application <br>
		Cookie : request.getCookies() <br>
		Header : request.getHeaders() <br>
		PrintWriter : out <br>
	</p>
	
	<!-- 모두 null이아니므로 생성없이 바로 불려올 수 있다. -->
	<h3>request : <%=request %></h3>
	<h3>response : <%=response %></h3>
	<h3>session : <%=session %></h3>
	<h3>servletCntext : <%=application %></h3>
	<h3>jsOut : <%=out %></h3>
	
	<h3>contextRoot : <%=request.getContextPath() %></h3>
	<h3>요청주소 : <%=request.getRequestURI() %></h3>
	
	<h3>내장객체에 저장된 데이터 활용하기</h3>
	<!-- 주소값에 request.getContextPath()를 사용하면 각 프로젝트의 contextRoot로 접근이 된다. -->
	<h4><a href="<%=request.getContextPath()%>/views/datasave.jsp">데이터저장</a></h4>
	
	<h3>지시자태그 이용하기</h3>
	<h4>include태그 이용하기</h4>
	<p>
		include태그는 다른 jsp내용을 합쳐서 출력하는것 <br>
		공통페이지를 반영시 사용(header,footer,aside) <br>
	</p>
	<h3>
		<a href="<%=request.getContextPath()%>/views/main.jsp">메인화면</a>
	</h3>
	
	<h4>page태그 속성 알아보기</h4>
	<p>
		import : 외부패키지에 있는 클래스를 이용할 때 import해줘야한다. ""안에 작성, 여러클래스 호출시 ,로 구별<br>
		errorPage : 페이지에서 에러가 발생했을때 연결될 페이지 지정할때 사용<br>
		isErrorPage : 에러페이지에 설정, 설명하면 exception객체를 이용할 수 있음<br>
		session : 세션객체를 자동생성할지 생성하지 않을지 결정<br>
	</p>
	
	<h3>에러페이지 설정하기</h3>
	<h3>
		<a href="<%=request.getContextPath()%>/views/errortest.jsp">에러발생페이지 이동</a>
	</h3>
	
	<h3>
		<a href="<%=request.getContextPath()%>/errorServlet.do">서블릿 에러</a>
	</h3>
	
	<h3>
		<a href="<%=request.getContextPath()%>/memberAll.do">회원정보 조회</a>
	</h3>
	
	
</body>
</html>
