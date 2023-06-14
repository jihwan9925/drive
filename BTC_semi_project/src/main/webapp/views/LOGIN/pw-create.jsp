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
            <h1 class="login__title">새로운 비밀번호 생성</h1>
            <p>비밀번호 생성을 위한 절차를 진행해 주세요</p>
            <div class="login__box">
                <i class='bx bx-lock login__icon'></i>
                <input type="password" placeholder="Password" class="login__input">
            </div>
            <div id="check-num" class="login__box">
                <i class='bx bx-lock login__icon'></i>
                <input type="password" placeholder="PasswordCheck" class="login__input">
            </div>
            <div id="text-alert">
                <p>*인증번호가 일치하지 않습니다.</p>
            </div>
            <div id="position-box"></div>
            <a href="../LOGIN/login.html" class="login__button" >비밀번호 변경</a>
            </form>
    </section>


    <!-- 푸터 영역 -->
    <footer id="footer">
        <script>$('#footer').load('../include/footer.html')</script>
    </footer>
    <script src="../js/test.js"></script>

</body>
</html>