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
</head>

<body>
    <!-- 헤더 영역 시작 -->
    <header id="header">
        <script>$('#header').load('<%=request.getContextPath()%>/views/common/header.jsp')</script>
    </header>
    <!-- 헤더 영역 종료 -->


    <section>
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <!-- <link href='../test.scss' rel='stylesheet'> -->
        <div class="login">
            <div class="login__content">
                <div class="login__img">
                    <!-- <img src="../images/객실사진/10번 객실/05.jpg" alt="user login"> -->
                    <img src="<%=request.getContextPath()%>/images/rooms image/no.1 rooms/05.jpg"  alt="user login">
                </div>
                <div class="login__forms">
                    <form action="" class="login__register login-in">
                        <h1 class="login__title">가입정보 조회</h1>
                        <div class="login__box">
                            <i class='bx bx-user login__icon'></i>
                            <input type="text" placeholder="Email" class="login__input">
                        </div>
                        <div class="text-alert">
                            <p>*가입된 이메일이 아닙니다.</p>
                        </div>
                        <div id="position-box"></div>
                        <div id="login-sub-menu">
                            <a href="<%=request.getContextPath()%>/views/LOGIN/login.jsp" class="login__forgot">로그인 하러가기</a>
                            <a href="<%=request.getContextPath()%>/views/LOGIN/pw-search.jsp" class="login__forgot">비밀번호 찾기</a>
                        </div>
                        <a href="#" class="login__button">이메일 조회</a>
                        <div>
                            <span class="login__account login__account--account">가입된 계정이 없으십니까?</span>
                            <a href="<%=request.getContextPath()%>/views/LOGIN/sign-up.html" class="login__signin login__signin--signup" id="sign-up">회원가입</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>        
    </section>


    <!-- 푸터 영역 -->
    <footer id="footer">
        <script>$('#footer').load('<%=request.getContextPath()%>/views/common/footer.jsp')</script>
    </footer>
    
    <!-- js파일 -->
    <script src="<%=request.getContextPath()%>/js/test.js"></script>
</body>
</html>