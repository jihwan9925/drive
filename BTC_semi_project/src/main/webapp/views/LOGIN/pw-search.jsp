<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- <meta charset="UTF-8"> -->
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">
    <meta name="format-detection" content="telephone=yes">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <title>INDEX(NOT LOGIN)</title>
    <script src="<%=request.getContextPath()%>/js/jquery-3.7.0.min.js"></script>
    <!-- 헤더,푸터 -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/custom.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/common.css" />
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap.bundle.min.js"></script>
    <!-- swiper -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/swiper-bundle.min.css"/>
    <script src="<%=request.getContextPath()%>/js/swiper-bundle.min.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/test.css"/>
    <!-- 글꼴 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
</head>

<body>
    <!-- 헤더 영역 시작 -->
    <header id="header">
        <script>$('#header').load('<%=request.getContextPath()%>/views/common/header.jsp')</script>
    </header>
    <!-- 헤더 영역 종료 -->
    
                            <!-- 못한거 : 글꼴통합+가입정보조회+비번찾기+회원가입(3단계) -->
    
    <section>
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <!-- <link href='../test.scss' rel='stylesheet'> -->
        <div class="login">
            <div class="login__content">
            <div class="login__img">
                <!-- <img src="../images/객실사진/10번 객실/05.jpg" alt="user login"> -->
                <img src="<%=request.getContextPath()%>/images/rooms image/no.1 rooms/08.jpg"  alt="user login">
            </div>
            <div class="login__forms">
            <form action="" class="login__register login-in">
            <h1 class="login__title">본인인증</h1>
            <p>본인인증을 위한 절차를 진행해 주세요</p>
            <div class="login__box">
                <i class='bx bx-lock login__icon'></i>
                <input type="text" placeholder="Email" class="login__input">
            </div>
            <div id="check-num" class="login__box">
                <i class='bx bx-check login__icon'></i>
                <input type="text" placeholder="checkNum" class="login__input">
                <button type="button" class="btn btn-dark">중복확인</button>
            </div>
            <div class="text-alert">
                <!-- <p>*인증번호가 일치하지 않습니다.</p> -->
            </div>
            <div id="position-box"></div>
            <div id="login-sub-menu">
                <a href="<%=request.getContextPath()%>/views/LOGIN/login.jsp" class="login__forgot">로그인 하러가기</a>
            </div>
            <a href="<%=request.getContextPath()%>/views/LOGIN/pw-create.jsp" class="login__button">이메일 조회</a>
            
            <div>
                <span class="login__account login__account--account">가입된 계정이 없으십니까?</span>
                <a href="<%=request.getContextPath()%>/views/LOGIN/signup01-agreement.jsp" class="login__signin login__signin--signup" id="sign-up">회원가입</a>
            </div>
            </form>
    </section>

     <!-- 푸터 영역 -->
    <footer id="footer">
        <script>$('#footer').load('<%=request.getContextPath()%>/views/common/footer.jsp')</script>
    </footer>

    <!-- js파일 -->
    <script>
        $('a[class="login__button"]').click((e)=>{
            // const p = $("<p>");
            let msg,color;
            if($("#email-search").val()==''){
                msg='*가입된 이메일이 아닙니다.';
                color='red';
            }else{
                msg='*이미 가입된 계정입니다.';
                color='green';
            }
            $(".text-alert").html("");
            $(".text-alert").append($("<p>").text(msg).css("color",color));
        });
    </script>
    <script src="<%=request.getContextPath()%>/js/test.js"></script>
</body>
</html>