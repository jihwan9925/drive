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
                    <form action="" class="login__create">
                        <h1 class="login__title">3. 가입완료</h1>
                        <h1 class="login__msg">000님, 환영합니다.</h1>
                        <a href="<%=request.getContextPath()%>/views/LOGIN/login.jsp" class="login__button">로그인 하러가기</a>
                    </form>
                </div>
            </div>
        </div>    
    </section>

     <!-- 푸터 영역 -->
     <%@ include file="/views/common/footer.jsp" %>	