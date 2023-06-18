<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

    <!-- 헤더 영역 시작 -->
    <%@ include file="/views/common/header.jsp" %>
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
    <%@ include file="/views/common/footer.jsp" %>	