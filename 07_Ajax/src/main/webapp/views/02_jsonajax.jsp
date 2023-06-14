<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>json으로 데이터 가져오기</title>
<script src="http://code.jquery.com/jquery-3.7.0.min.js"></script>
</head>
<body>
	<h2>json을 이용해서 데이터 주고받기</h2>
	<p>서버와 클라이언트가 데이터를 주고받을 때 문자열을 js object표현방식으로 처리하기</p>
	<ul>
		<li>java에서 생성한 객체(Vo,Collection들...)를 자동으로 변환해주는 라이브러리를 사용함</li>
		<li>jsonsimple.jar (JSONObject,JSONArray클래스를 이용해서 처리)</li>
		<li>gson.jar (Gson클래스를 이용해서 처리)</li>
		<li>jacksone.jar (ObjectMapper클래스 이용 [Spring에서 기본사용])</li>
	</ul>
	<button id="jsonBtn">jsonsimple</button>
	<button id="gsonBtn">gsontest</button>
	<button id="gsonparse">test</button>
	<script>
		$("#gsonBtn").click(e=>{
			<%-- $.get("<%=request.getContextPath()%>/GsonTest.do",
					data=>{
	                    console.log(data);
	                }
			); --%>
			$.post("<%=request.getContextPath()%>/GsonTest.do",
					{data:JSON.stringify({
						userId:"bsyoo",
						password:"1234",
						userName:"유병승",
						gender:"M",
						age:19,
						email:"afe@adf.com",
						phone:"123",
						address:"경기도시흥시",
						enrollDate:'20230614'
					})}, //JSON.stringify() : 객체를 문자열로 반환
					data=>{
	                    //console.log(data);
	                }
			)
		});
		$("#jsonBtn").click(e=>{
			$.get("<%=request.getContextPath()%>/basicJson.do",
					function(data){
	                    /* console.log(data.userId);
	                    console.log(data["age"]);
	                    if(data.flag){
	                    	alert("실행");
	                    } */
	                    console.log(data);
	                }
			);
		})
		
	</script>
	
	
	
	
	
	
	
	
	
</body>
</html>