<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/css/custom.css" /> --%>

<%
	String id=(String)session.getAttribute("userId");
%>
<nav class="navbar navbar-expand-lg navbar-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="<%=request.getContextPath()%>/index.jsp"><img src="<%=request.getContextPath()%>/images/casa64.png" width="120px"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
            aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0" style="position: absolute;left: 50%; transform: translateX(-45%);">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown" href="../ABOUT/about.html" id="navbarDropdown" role="button"
                        data-bs-toggle="dropdown" aria-expanded="false">
                        ABOUT
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a href="../ABOUT/about.html" class="dropdown-item">오시는 길</a></li>
                        <li><a href="../ABOUT/travel.html" class="dropdown-item">주변 여행지</a></li>
                        <li><a href="../ABOUT/team-introduction.html" class="dropdown-item">조원소개</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown" href="#" id="navbarDropdown" role="button"
                        data-bs-toggle="dropdown" aria-expanded="false">
                        COMMUNITY
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a href="#" class="dropdown-item">FAQ</a></li>
                        <li><a href="#" class="dropdown-item">공지사항</a></li>
                        <li><a href="#" class="dropdown-item">후기</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown" href="#" id="navbarDropdown" role="button"
                        data-bs-toggle="dropdown" aria-expanded="false">
                        ROOMS
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a href="#" class="dropdown-item">객실별 정보</a></li>
                        <li><a href="#" class="dropdown-item">이 객실 예약하기</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown" href="#" id="navbarDropdown" role="button"
                        data-bs-toggle="dropdown" aria-expanded="false">
                        RESERVATION
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a href="#" class="dropdown-item">예약하기</a></li>
                        <li><a href="#" class="dropdown-item">예약 관련 정보</a></li>
                    </ul>
                </li>

            </ul>
        </div>
        <div id="login-selector">
            <ul class=navbar-nav>
            <%if(id==null||id=="") {%>
	        	<li class="nav-item">
	            	<a class="nav-link" href="<%=request.getContextPath()%>/views/LOGIN/login.jsp">LOGIN</a>
	            </li>            
            <%}else{%>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">MYPAGE</a>
                </li>
                <li class="nav-item logout">
                    <a class="nav-link logout" onclick="location.replace('<%=request.getContextPath() %>/logout.do')">LOGOUT</a>
                </li>            
            <%} %>
                
	        </ul>
        </div>
    </div>
</nav>