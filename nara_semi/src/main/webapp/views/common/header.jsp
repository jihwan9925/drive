<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="utf-8">
	<meta name="viewport"
		content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">
	<meta name="format-detection" content="telephone=yes">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	<link rel="icon" href="<%=request.getContextPath()%>/publish/images/favicon.png"">
	<title>CASA64</title>
	<script src="<%=request.getContextPath()%>/publish/js/jquery-3.7.0.min.js"></script>
	
	<link rel="stylesheet" href="<%=request.getContextPath()%>/publish/css/custom.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/publish/css/common.css" />
	<script type="text/javascript" src="<%=request.getContextPath()%>/publish/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/publish/js/bootstrap.bundle.min.js"></script>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
</head>

<body>
	<div id="wrap" class="container-fluid">
		<!-- 헤더 영역 시작 -->
		<header id="header">
			<nav class="navbar navbar-expand-lg navbar-light">
			    <div class="container-fluid">
			        <a class="navbar-brand" href="#"><img src="<%=request.getContextPath()%>/publish/images/casa64.png" width="120px"></a>
			        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
			            aria-expanded="false" aria-label="Toggle navigation">
			            <span class="navbar-toggler-icon"></span>
			        </button>
			        <div class="collapse navbar-collapse" id="navbarSupportedContent">
			            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
			                <li class="nav-item dropdown">
			                    <a class="nav-link dropdown" href="#" id="navbarDropdown" role="button"
			                        data-bs-toggle="dropdown" aria-expanded="false">
			                        about
			                    </a>
			                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
			                        <li><a href="#" class="dropdown-item">오시는 길</a></li>
			                        <li><a href="#" class="dropdown-item">주변 여행지</a></li>
			                        <li><a href="#" class="dropdown-item">조원소개</a></li>
			                    </ul>
			                </li>
			                <li class="nav-item dropdown">
			                    <a class="nav-link dropdown" href="#" id="navbarDropdown" role="button"
			                        data-bs-toggle="dropdown" aria-expanded="false">
			                        COMMUNITY
			                    </a>
			                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
			                        <li><a href="<%=request.getContextPath() %>/category/insertName.do?title=COMMUNITY&name=공지사항" class="dropdown-item">공지사항</a></li>
			                        <li><a href="<%=request.getContextPath() %>/category/insertName.do?title=COMMUNITY&name=QnA" class="dropdown-item">QnA</a></li>
			                        <li><a href="<%=request.getContextPath() %>/category/insertName.do?title=COMMUNITY&name=이용 후기" class="dropdown-item">이용 후기</a></li>
			                    </ul>
			                </li>
			                <li class="nav-item dropdown">
			                    <a class="nav-link dropdown" href="#" id="navbarDropdown" role="button"
			                        data-bs-toggle="dropdown" aria-expanded="false">
			                        rooms
			                    </a>
			                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
			                        <li><a href="#" class="dropdown-item">객실별 정보</a></li>
			                        <li><a href="#" class="dropdown-item">이 객실 예약하기</a></li>
			                    </ul>
			                </li>
			                <li class="nav-item dropdown">
			                    <a class="nav-link dropdown" href="#" id="navbarDropdown" role="button"
			                        data-bs-toggle="dropdown" aria-expanded="false">
			                        reserve
			                    </a>
			                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
			                        <li><a href="#" class="dropdown-item">예약하기</a></li>
			                        <li><a href="#" class="dropdown-item">예약 관련 정보</a></li>
			                    </ul>
			                </li>
			
			                <li class="nav-item">
			                    <a class="nav-link active" aria-current="page" href="#">mypage</a>
			                </li>
			                <li class="nav-item">
			                    <a class="nav-link" href="#">logout</a>
			                </li>
			            </ul>
			        </div>
			    </div>
			</nav>
		</header>

