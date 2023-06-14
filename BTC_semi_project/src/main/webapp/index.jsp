<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
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
        <script>$('#header').load('<%=request.getContextPath()%>/common/header-notlogin.html')</script>
    </header>
    <!-- 헤더 영역 종료 -->
    
    <section>
        <!-- Slider main container -->
        <div class="swiper">
            <!-- Additional required wrapper -->
            <div class="swiper-wrapper">
                <!-- Slides -->
                <div class="swiper-slide"><img src="<%=request.getContextPath()%>/images/객실사진/1번 객실/02.jpg"></div>
                <div class="swiper-slide">
                    <div id="booking-complete">
                        <div id="booking-image">
                            <h3>닉네임님의 예약현황</h3>
                            <br><br>
                            <img src="<%=request.getContextPath()%>/images/객실사진/10번 객실/01.jpg" width="600" height="400">
                        </div>
                        <div id="booking-info">
                            <table>
                                <tbody>
                                    <tr class="resize">
                                        <th>예약자&nbsp;</th>
                                        <td>김나나</td>
                                    </tr>
                                    <tr class="resize">
                                        <th>&nbsp;</th>
                                        <td>성인 2명/유아 0명</td>
                                    </tr>
                                    <tr class="resize">
                                        <th>예약날자&nbsp;</th>
                                        <td>2023.08.22 ~ 2023.08.25</td>
                                    </tr>
                                    <tr class="resize">
                                        <th>&nbsp;</th>
                                        <td>성인 2명/유아 0명</td>
                                    </tr>
                                    <tr class="resize">
                                        <th>추가옵션&nbsp;</th>
                                        <td>조식</td>
                                    </tr>
                                    <tr class="resize">
                                        <th>&nbsp;</th>
                                        <td>바베큐</td>
                                    </tr>
                                    <tr class="resize">
                                        <th>예약상태&nbsp;</th>
                                        <td>결제대기중 <button type="button" class="btn btn-dark">바로결제</button>   </td>
                                    </tr>
                                </tbody>
                            </table>
                            <button type="button" class="btn btn-dark">예약변경</button>
                            <button type="button" class="btn btn-danger">예약취소</button>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div id="booking-status">
                        <img id="status-image" src="<%=request.getContextPath()%>/images/house.png" alt="">
                        <h3>최고의 휴가를 보낼 수 있도록 도와드릴게요!</h3>
                        <div>
                            <span>
                                <p>어떤 휴가를 보낼지 정했어요</p>
                                <button type="button" class="btn btn-dark">키워드로 객실찾기</button>
                            </span>
                            <span>
                                <p>아직 잘 모르겠어요... 어떤 객실들이 있나요?</p>
                                <button type="button" class="btn btn-dark">ROOMS 객실 둘러보기</button>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div id="booking-filter">
                        <div>
                            <h3>취향저격! 키워드로 객실 찾기</h3>
                            <div id="filter-header">
                                <span id="filter-search-button"><img src="<%=request.getContextPath()%>/images/search-3-24.png" alt=""></span>
                                <input id="filter-search" type="text" placeholder=" 키워드 선택하기">
                            </div>
                        </div>
                        <div id="filter-button">
                            <div>
                                <label for="filter01">#오션뷰</label>
                                <label for="filter02">#전용주차공간</label>
                                <label for="filter03">#스파</label>
                                <label for="filter04">#바베큐</label>
                            </div>
                            <div>
                                <label for="filter05">#키즈풀</label>
                                <label for="filter06">#빔프로젝터</label>
                                <label for="filter07">#불멍</label>
                            </div>
                            <div>
                                <label for="filter08">#주방</label>
                                <label for="filter09">#구스다운침대</label>
                                <label for="filter10">#선셋뷰</label>
                                <label for="filter11">#</label>
                            </div>

                            <div>
                                <input type="checkbox" id="filter01" class="filterbox" value="#오션뷰">
                                <input type="checkbox" id="filter02" class="filterbox" value="#전용주차공간">
                                <input type="checkbox" id="filter03" class="filterbox" value="#스파">
                                <input type="checkbox" id="filter04" class="filterbox" value="#바베큐">
                                <input type="checkbox" id="filter05" class="filterbox" value="#키즈풀">
                                <input type="checkbox" id="filter06" class="filterbox" value="#빔프로젝터">
                                <input type="checkbox" id="filter07" class="filterbox" value="#불멍">
                                <input type="checkbox" id="filter08" class="filterbox" value="#주방">
                                <input type="checkbox" id="filter09" class="filterbox" value="#구스다운침대">
                                <input type="checkbox" id="filter10" class="filterbox" value="#선셋뷰">
                                <input type="checkbox" id="filter11" class="filterbox" value="#">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide"><img src="<%=request.getContextPath()%>/images/객실사진/1번 객실/04.jpg"></div>
            </div>
            <!-- If we need pagination -->
            <div class="swiper-pagination"></div>
            
            <!-- If we need navigation buttons -->
            <div class="swiper-button-prev"><img src="<%=request.getContextPath()%>/images/scroll_top_btn.png" alt=""></div>
            <div class="swiper-button-next"><img src="<%=request.getContextPath()%>/images/scroll_bottom_btn.png" alt=""></div>
        </div>
        <div id="search-btn" onclick="test();">
            <img src="<%=request.getContextPath()%>/images/search.png" alt=""  width="50" height="50">
            <ladel for="test07"></ladel>
        </div>
        <!-- Slider main container -->
    </section>
    
    <!-- 푸터 영역 -->
    <footer id="footer">
        <script>$('#footer').load('<%=request.getContextPath()%>/common/footer.html')</script>
    </footer>

    <!-- js파일 -->
    <!-- 1.swiper -->
    <script src="<%=request.getContextPath()%>/js/test.js"></script>
</body>
</html>