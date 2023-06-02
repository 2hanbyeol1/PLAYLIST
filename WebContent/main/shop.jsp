<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset='UTF-8'>
    <title>playlist : shop</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='../css/all.css'>
    <link rel='stylesheet' type='text/css' media='screen' href='../css/shop.css'>
    <script src="../js/all.js"></script>
    <script src="../js/shop.js"></script>
</head>
<body onload="showShopSection();" style="overflow: hidden;">
    <nav id="navbar-left" class="no-details">
        <ul id="navbar-left-items">
            <img src="../image/icon-cancel.png" onclick="hideNavLeft(); hideNavDetails2();">
            <li onclick="showNavDetails('outer');">아우터</li>
            <li onclick="showNavDetails('top');">상의</li>
            <li onclick="showNavDetails('bottom');">하의</li>
            <li onclick="showNavDetails('onepiece');">원피스</li>
            <li onclick="showNavDetails('shoes');">신발</li>
            <li onclick="showNavDetails('etc');">잡화</li>
        </ul>
    </nav>
    <nav class="navbar-left-details" id="outer">
        <ul>
            <li><a href="?shop=00">전체</a></li>
            <li><a href="?shop=01">자켓</a></li>
            <li><a href="?shop=02">가디건</a></li>
            <li><a href="?shop=03">코트</a></li>
            <li><a href="?shop=04">점퍼</a></li>
            <li><a href="?shop=05">패딩</a></li>
            <li><a href="?shop=06">무스탕/퍼</a></li>
        </ul>
    </nav>
    <nav class="navbar-left-details" id="top">
        <ul>
            <li><a href="?shop=10">전체</a></li>
            <li><a href="?shop=11">티</a></li>
            <li><a href="?shop=12">나시</a></li>
            <li><a href="?shop=13">셔츠</a></li>
            <li><a href="?shop=14">니트</a></li>
            <li><a href="?shop=15">맨투맨</a></li>
            <li><a href="?shop=16">후드</a></li>
        </ul>
    </nav>
    <nav class="navbar-left-details" id="bottom">
        <ul>
            <li><a href="?shop=20">전체</a></li>
            <li><a href="?shop=21">청바지</a></li>
            <li><a href="?shop=22">면바지</a></li>
            <li><a href="?shop=23">슬랙스</a></li>
            <li><a href="?shop=24">반바지</a></li>
            <li><a href="?shop=25">트레이닝</a></li>
            <li><a href="?shop=26">스커트</a></li>\
        </ul>
    </nav>
    <nav class="navbar-left-details" id="onepiece">
        <ul>
            <li><a href="?shop=30">전체</a></li>
            <li><a href="?shop=31">미니</a></li>
            <li><a href="?shop=32">미디</a></li>
            <li><a href="?shop=33">롱</a></li>
            <li><a href="?shop=34">점프수트</a></li>
        </ul>
    </nav>
    <nav class="navbar-left-details" id="shoes">
        <ul>
            <li><a href="?shop=40">전체</a></li>
            <li><a href="?shop=41">스니커즈</a></li>
            <li><a href="?shop=42">러닝화</a></li>
            <li><a href="?shop=43">플랫/로퍼</a></li>
            <li><a href="?shop=44">펌프스</a></li>
            <li><a href="?shop=45">부츠</a></li>
            <li><a href="?shop=46">샌들/슬리퍼</a></li>
        </ul>
    </nav>
    <nav class="navbar-left-details" id="etc">
        <ul>
            <li><a href="?shop=50">전체</a></li>
            <li><a href="?shop=51">가방</a></li>
            <li><a href="?shop=52">주얼리</a></li>
            <li><a href="?shop=53">시계</a></li>
            <li><a href="?shop=54">모자</a></li>
            <li><a href="?shop=55">후드</a></li>
        </ul>
    </nav>
    <nav id="navbar-right">
        <ul>
            <img src="../image/icon-cancel.png" onclick="hideNavRight();">
            <li><a href="../userInfo/login.jsp">로그인</a></li>
            <li><a href="../userInfo/signup.jsp">회원 가입</a></li>
            <li><a href="../userInfo/changeInfo.jsp">회원정보 변경</a></li>
        </ul>
    </nav>
    <header id="shopping-header">
        <nav class="shopping-nav">
            <div class="nav-items-left">
                <img src="../image/icon-hanger.png" onclick="showNavLeft();">
            </div>
            <a class="shopping-logo-a" href="../main/main.jsp"><h1><i>PLAYLIST&#9836</i></h1></a>
            <div class="nav-items-right">
                <a href="../userInfo/like.jsp"><img src="../image/icon-heart.png"></a>
                <a href="../userInfo/cart.jsp"><img src="../image/icon-cart.png"></a>
                <img src="../image/icon-mypage.png" onclick="showNavRight();">
            </div>
        </nav>
    </header>
    <section id="shopping-section" style="overflow-y: scroll;">
        <article>
            <h1 class="title"></h1>
            <div class="item-container">
                <div class="item">
                    <a href="./item.jsp?item=221"><img src="../image/221.jpg"></a>
                    <div>아이보리 골덴 바지</div>
                    <div>38,000원</div>
                </div>
                <div class="item">
                    <a href="./item.jsp?item=221"><img src="../image/221.jpg"></a>
                    <div>아이보리 골덴 바지</div>
                    <div>38,000원</div>
                </div>
                <div class="item">
                    <a href="./item.jsp?item=221"><img src="../image/221.jpg"></a>
                    <div>아이보리 골덴 바지</div>
                    <div>38,000원</div>
                </div>
                <div class="item">
                    <a href="./item.jsp?item=221"><img src="../image/221.jpg"></a>
                    <div>아이보리 골덴 바지</div>
                    <div>38,000원</div>
                </div>
                <div class="item">
                    <a href="./item.jsp?item=221"><img src="../image/221.jpg"></a>
                    <div>아이보리 골덴 바지</div>
                    <div>38,000원</div>
                </div>
                <div class="item">
                    <a href="./item.jsp?item=221"><img src="../image/221.jpg"></a>
                    <div>아이보리 골덴 바지</div>
                    <div>38,000원</div>
                </div>
                <div class="item">
                    <a href="./item.jsp?item=221"><img src="../image/221.jpg"></a>
                    <div>아이보리 골덴 바지</div>
                    <div>38,000원</div>
                </div>
                <div class="item">
                    <a href="./item.jsp?item=221"><img src="../image/221.jpg"></a>
                    <div>아이보리 골덴 바지</div>
                    <div>38,000원</div>
                </div>
                <div class="item">
                    <a href="./item.jsp?item=221"><img src="../image/221.jpg"></a>
                    <div>아이보리 골덴 바지</div>
                    <div>38,000원</div>
                </div>
                <div class="item">
                    <a href="./item.jsp?item=221"><img src="../image/221.jpg"></a>
                    <div>아이보리 골덴 바지</div>
                    <div>38,000원</div>
                </div>
                <div class="item">
                    <a href="./item.jsp?item=221"><img src="../image/221.jpg"></a>
                    <div>아이보리 골덴 바지</div>
                    <div>38,000원</div>
                </div>
                <div class="item">
                    <a href="./item.jsp?item=221"><img src="../image/221.jpg"></a>
                    <div>아이보리 골덴 바지</div>
                    <div>38,000원</div>
                </div>
                <div class="item">
                    <a href="./item.jsp?item=221"><img src="../image/221.jpg"></a>
                    <div>아이보리 골덴 바지</div>
                    <div>38,000원</div>
                </div>
                <div class="item">
                    <a href="./item.jsp?item=221"><img src="../image/221.jpg"></a>
                    <div>아이보리 골덴 바지</div>
                    <div>38,000원</div>
                </div>
            </div>
        </article>
    </section>
</body>
</html>