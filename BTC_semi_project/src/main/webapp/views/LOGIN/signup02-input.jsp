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

    <section>
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <!-- <link href='../test.scss' rel='stylesheet'> -->
        <div class="login">
            <div class="login__content">
            <div class="login__img">
                <!-- <img src="../images/객실사진/10번 객실/05.jpg" alt="user login"> -->
                <img src="<%=request.getContextPath()%>/images/rooms image/no.1 rooms/09.jpg"  alt="user login">
            </div>
            <div class="login__forms">
                <form action="" class="login__create" id="login-up">
                    <h1 class="login__title">2. 정보입력</h1>
                    <div id="signin-input">
                        <div class="login__box">
                            <i class='bx bx-user login__icon'></i>
                            <input type="text" placeholder="Username" class="login__input">
                        </div>
                        
                        <div class="login__box">
                            <i class='bx bx-at login__icon'></i>
                            <input type="text" placeholder="Email" class="login__input">
                        </div>
                        <div class="login__box">
                            <i class='bx bx-user login__icon'></i>
                            <input type="text" placeholder="NickName" class="login__input">
                        </div>
                        <div class="login__box">
                            <i class='bx bx-phone login__icon'></i>
                            <input type="text" placeholder="phone" class="login__input">
                        </div>
                        
                        <div id="pw-box">
                            <div class="login__box">
                                <i class='bx bx-lock login__icon'></i>
                                <input type="password" placeholder="password" id="ck-pw1" class="login__input">
                            </div>

                            <div class="login__box">
                                <i class='bx bx-lock login__icon'></i>
                                <input type="password" placeholder="passwordCK" id="ck-pw2" class="login__input fn-password-check">
                            </div>
                        </div>
                    </div>
                    <div class="text-alert pwcheck">
                        <!-- <p>*비밀번호가 일치하지 않습니다.</p> -->
                    </div>
                    <div id="check-pw" class="login__box">
                        <i class='bx bx-check login__icon'></i>
                        <input type="text" placeholder="Email Check" class="login__input">
                        <button type="button" class="btn btn-dark">중복확인</button>
                    </div>
                    <div class="text-alert double-check">
                        <!-- <p>*비밀번호가 일치하지 않습니다.</p> -->
                    </div>
                    <div style="height: 5%;"></div>
                    <a href="<%=request.getContextPath()%>/views/LOGIN/signup03-success.jsp" class="login__button">회원가입</a>
                    
                    <!-- <div>
                        <span class="login__account login__account--account">?</span>
                        <a href="../LOGIN/login.html" class="login__signup login__signup--signup" id="sign-in">Log In</a>
                    </div>   -->
                </form>
            </div>
    </section>

     <!-- 푸터 영역 -->
    <footer id="footer">
        <script>$('#footer').load('<%=request.getContextPath()%>/views/common/footer.jsp')</script>
    </footer>

    <!-- js파일 -->
    <script>
        // pw-check
        $(".fn-password-check").keyup(e=>{
            const i = $("#ck-pw1").val();
            const j = $("#ck-pw2").val();
            let msg,color;
            if(i!=0&&j!=0){
                if(i.length==j.length&&i==j){
                    msg='*비밀번호가 일치합니다.';
                    color='green';
                }else{
                    msg='*비밀번호가 일치하지 않습니다.';
                    color='red';
                }
            }
            $(".pwcheck").html("");
            $(".pwcheck").append($("<p>").text(msg).css("color",color));
        });

        //double-check
        $('#check-pw>button[class="btn btn-dark"]').click((e)=>{
            // const p = $("<p>");
            let msg,color;
            if($('#check-pw>input[class="login__input"]').val()==''){
                msg='*올바르지않은 입력값입니다.';
                color='red';
            }else{
                msg='*인증완료 되었습니다.';
                color='green';
            }
            $(".double-check").html("");
            $(".double-check").append($("<p>").text(msg).css("color",color));
        });
    </script>
    <script src="<%=request.getContextPath()%>/js/test.js"></script>
</body>
</html>