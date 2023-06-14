<!DOCTYPE html>
<html lang="en">
<head>
    <!-- 못한거 : 글꼴통합+가입정보조회+비번찾기+회원가입(3단계) -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">
    <meta name="format-detection" content="telephone=yes">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <title>INDEX(NOT LOGIN)</title>
    <script src="http://code.jquery.com/jquery-3.7.0.min.js"></script>
    <!-- 헤더,푸터 -->
    <link rel="stylesheet" href="../css/custom.css" />
	<link rel="stylesheet" href="../css/common.css" />
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../js/bootstrap.bundle.min.js"></script>
    <!-- swiper -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"/>
    <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
    <link rel="stylesheet" href="../css/test.css"/>
</head>
<body>
    <!-- 헤더 영역 시작 -->
    <header id="header">
        <script>$('#header').load('../include/header-notlogin.html')</script>
    </header>
    <!-- 헤더 영역 종료 -->


    <section>
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <!-- <link href='../test.scss' rel='stylesheet'> -->
        <div class="login">
            <div class="login__content">
            <div class="login__img">
                <img src="../images/객실사진/10번 객실/05.jpg" alt="user login">
            </div>
                <div class="login__forms">
                <form action="" class="login__register" id="login-in">
                <h1 class="login__title">가입정보 조회</h1>
                <div class="login__box">
                    <i class='bx bx-user login__icon'></i>
                    <input type="text" placeholder="Email" class="login__input">
                </div>
                <div id="text-alert">
                    <p>*가입된 이메일이 아닙니다.</p>
                </div>
                <div id="position-box"></div>
                <div id="login-sub-menu">
                <a href="../LOGIN/login.html" class="login__forgot">로그인 하러가기</a>
                <a href="../LOGIN/pw-search.html" class="login__forgot">비밀번호 찾기</a>
            </div>
            <a href="#" class="login__button">이메일 조회</a>
            
            <div>
                <span class="login__account login__account--account">가입된 계정이 없으십니까?</span>
                <a href="../LOGIN/sign-up.html" class="login__signin login__signin--signup" id="sign-up">회원가입</a>
            </div>
            </form>
    </section>


    <!-- 푸터 영역 -->
    <footer id="footer">
        <script>$('#footer').load('../include/footer.html')</script>
    </footer>
    <script src="../js/test.js"></script>

</body>
</html>