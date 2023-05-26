<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String msg=(String)request.getAttribute("msg");
	String loc=(String)request.getAttribute("loc");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시스템 메세지</title>
</head>
<body>
	<script>
		alert("<%=msg%>");
		location.replace("<%=request.getContextPath()%><%=loc%>");
		//굳이 여기서 loaction 쓰는 이유 : 이전의 dispatcher를 사용해야되서 사용하게되면 주소가 고정되서 강제로 옮겨야한다.
		//프로젝트명 + / (프로젝트 최상위 위치로 이동)
	</script>
</body>
</html>