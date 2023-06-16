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

    <style>
        #login-up>.swiper{
            width: 100%;
            height: 90%;
            display: flex;
            flex-direction: column;
            text-align: center;
            justify-content: space-between;
        }
        #login-up .swiper-slide {
            width: 100vw;
            text-align:center;
            display:flex;
            align-items:center;
            justify-content:start !important;
        }
        .swiper-pagination {
            position: fixed;
            top: 60% !important;
            left: 50% !important;
            transform: translate(-50%,0%);
        }
        #login-up textarea{
            width: 100%;
            height: 15rem;
            font-size: 1rem;
        }
        #login-up .swiper-slide{
            display: flex;
            flex-direction: column;
            text-align: center;
        }
        #login-up .swiper-slide>h4{
            font-size: 1.2rem;
            margin-bottom: 2rem;
        }
        #login-up label{
            font-size: 1rem;
        }
        #login-up .swiper-pagination{
            height: 2.5rem;
        }
        #login-up .signup-nextbtn{
            display: inline-block;
        }
    </style>

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
                    <h1 class="login__title">1. 약관동의</h1>
                    <!-- Slider main container -->
                    <div class="swiper">
                        <!-- Additional required wrapper -->
                        <div class="swiper-wrapper">
                            <!-- Slides -->
                            <div class="swiper-slide">
                                <h4>가. 개인정보 수집동의</h4>
                                <textarea name="service01" id="first-agree" cols="400" rows="10">(수정필요)여러분을 환영합니다.네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.네이버 서비스를 이용하시거나 네이버 서비스 회원으로 가입하실 경우 여러분은 본 약관 및 관련 운영 정책을 확인하거나 동의하게 되므로, 잠시 시간을 내시어 주의 깊게 살펴봐 주시기 바랍니다.
                                </textarea>
                                <div>
                                    <input type="checkbox" id="signup-agree01" class="signup-agreement">
                                    <label for="signup-agree01"> 위약관을 충분히 숙지하였으며, 위에 동의합니다.</label>
                                </div>
                            </div>
                            
                            <div class="swiper-slide">
                                <h4>나. 수집된 데이터 처리방침</h4>
                                <textarea name="service02" id="second-agree" cols="400" rows="10">(수정필요)다양한 네이버 서비스를 즐겨보세요.네이버는 www.naver.com을 비롯한 네이버 도메인의 웹사이트 및 응용프로그램(어플리케이션, 앱)을 통해 정보 검색, 다른 이용자와의 커뮤니케이션, 콘텐츠 제공, 상품 쇼핑 등 여러분의 생활에 편리함을 더할 수 있는 다양한 서비스를 제공하고 있습니다.여러분은 PC, 휴대폰 등 인터넷 이용이 가능한 각종 단말기를 통해 각양각색의 네이버 서비스를 자유롭게 이용하실 수 있으며, 개별 서비스들의 구체적인 내용은 각 서비스 상의 안내, 공지사항, 네이버 웹고객센터(이하 ‘고객센터’) 도움말 등에서 쉽게 확인하실 수 있습니다.네이버는 기본적으로 여러분 모두에게 동일한 내용의 서비스를 제공합니다. 다만, '청소년보호법' 등 관련 법령이나 기타 개별 서비스 제공에서의 특별한 필요에 의해서 연령 또는 일정한 등급을 기준으로 이용자를 구분하여 제공하는 서비스의 내용, 이용 시간, 이용 횟수 등을 다르게 하는 등 일부 이용을 제한하는 경우가 있습니다. 자세한 내용은 역시 각 서비스 상의 안내, 공지사항, 고객센터 도움말 등에서 확인하실 수 있습니다.
                                </textarea>
                                <div>
                                    <input type="checkbox" id="signup-agree02" class="signup-agreement">
                                    <label for="signup-agree02"> 위약관을 충분히 숙지하였으며, 위에 동의합니다.</label>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <h4>다. 광고성 수신메일 동의</h4>
                                <textarea name="service03" id="third-agree" cols="400" rows="10">(수정필요)네이버 서비스에는 기본적으로 본 약관이 적용됩니다만 네이버가 다양한 서비스를 제공하는 과정에서 부득이 본 약관 외 별도의 약관, 운영정책 등을 적용하는 경우(예, 네이버페이, V LIVE 등)가 있습니다. 그리고 네이버 계열사가 제공하는 특정 서비스의 경우에도(예, LINE, SNOW등) 해당 운영 회사가 정한 고유의 약관, 운영정책 등이 적용될 수 있습니다. 이러한 내용은 각각의 해당 서비스 초기 화면에서 확인해 주시기 바랍니다.회원으로 가입하시면 네이버 서비스를 보다 편리하게 이용할 수 있습니다.여러분은 본 약관을 읽고 동의하신 후 회원 가입을 신청하실 수 있으며, 네이버는 이에 대한 승낙을 통해 회원 가입 절차를 완료하고 여러분께 네이버 서비스 이용 계정(이하 ‘계정’)을 부여합니다. 계정이
                                </textarea>
                                <div>
                                    <input type="checkbox" id="signup-agree03" class="signup-agreement">
                                    <label for="signup-agree03"> 위약관을 충분히 숙지하였으며, 위에 동의합니다.</label>
                                </div>
                            </div>
                        </div>
                        <!-- If we need pagination -->
                        <div class="swiper-pagination"></div>
                        
                        <div class="signup-nextbtn">
                            <a href="<%=request.getContextPath()%>/views/LOGIN/signup02-input.jsp" class="login__button">Next</a>
                        </div>
                        <div>
                            <input type="checkbox" id="signup-agree04">
                            <label for="signup-agree04" class="login__signin login__signin--signup"> 전체 동의</label>
                        </div>
                        <!-- If we need navigation buttons -->
                        <!-- <div class="swiper-button-prev"><img src="<%=request.getContextPath()%>/images/icon/scroll_top_btn.png" alt=""></div>
                        <div class="swiper-button-next"><img src="<%=request.getContextPath()%>/images/icon/scroll_bottom_btn.png" alt=""></div> -->
                    </div>
                    <!-- Slider main container -->


                    <!-- <h1 class="login__title">회원가입</h1>
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
                                <input type="text" placeholder="password" class="login__input">
                            </div>

                            <div class="login__box">
                                <i class='bx bx-lock login__icon'></i>
                                <input type="text" placeholder="passwordCK" class="login__input">
                            </div>
                        </div>
                    </div>
                    <div id="text-alert">
                        <p>*비밀번호가 일치하지 않습니다.</p>
                    </div>
                    <div id="check-pw" class="login__box">
                        <i class='bx bx-check login__icon'></i>
                        <input type="text" placeholder="checkNum" class="login__input">
                        <button type="button" class="btn btn-dark">중복확인</button>
                    </div>
                    <div style="height: 5%;"></div>
                    <a href="<%=request.getContextPath()%>/views/LOGIN/sign-up.jsp" class="login__button">회원가입</a> -->
                </form>
            </div>
    </section>

     <!-- 푸터 영역 -->
    <footer id="footer">
        <script>$('#footer').load('<%=request.getContextPath()%>/views/common/footer.jsp')</script>
    </footer>

    <!-- js파일 -->
    <script>
        const swiper = new Swiper('.swiper', {
        // Optional parameters
        direction: 'horizontal',
        mousewheel: true,
        loop: false,
        
        // If we need pagination
        pagination: {
            el: '.swiper-pagination',
            clickable : true,
        },
        
        // Navigation arrows
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
        // 푸터 애니매이션
        // on: {
        //     slideChangeTransitionEnd: function(){
        //         // console.log(this.activeIndex+1);
        //         cview=this.activeIndex+1;
        //         if(cview==5){
        //             $("#footer").css("display","inline-block").animate({width: 1980}, 300);
        //         }else{
        //             $("#footer").animate({width: 0}, 300);
        //             $("#footer").css("display","none");
        //         };
        //     },
        // },
        });
    </script>
    <script src="<%=request.getContextPath()%>/js/test.js"></script>

</body>
</html>