<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset='UTF-8'>
    <title>playlist : like</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='../css/all.css'>
    <link rel='stylesheet' type='text/css' media='screen' href='../css/list.css'>
    <script src="../js/all.js"></script>
</head>
<body onload="showListSection();" style="overflow: hidden;">
    <nav id="navbar-left" class="no-details">
        <ul id="navbar-left-items">
            <img src="../image/icon-cancel.png" onclick="hideNavLeft(); hideNavDetails2();">
            <li onclick="showNavDetails('0');">아우터</li>
            <li onclick="showNavDetails('1');">상의</li>
            <li onclick="showNavDetails('2');">하의</li>
            <li onclick="showNavDetails('3');">원피스</li>
            <li onclick="showNavDetails('4');">신발</li>
            <li onclick="showNavDetails('5');">잡화</li>
        </ul>
    </nav>
    <nav class="navbar-left-details" id="0">
        <ul>
            <li><a href="../main/shop.jsp?shop=00">전체</a></li>
            <li><a href="../main/shop.jsp??shop=01">자켓</a></li>
            <li><a href="../main/shop.jsp??shop=02">가디건</a></li>
            <li><a href="../main/shop.jsp??shop=03">코트</a></li>
            <li><a href="../main/shop.jsp??shop=04">점퍼</a></li>
            <li><a href="../main/shop.jsp??shop=05">패딩</a></li>
            <li><a href="../main/shop.jsp??shop=06">무스탕/퍼</a></li>
        </ul>
    </nav>
    <nav class="navbar-left-details" id="1">
        <ul>
            <li><a href="../main/shop.jsp??shop=10">전체</a></li>
            <li><a href="../main/shop.jsp??shop=11">티</a></li>
            <li><a href="../main/shop.jsp??shop=12">나시</a></li>
            <li><a href="../main/shop.jsp??shop=13">셔츠</a></li>
            <li><a href="../main/shop.jsp??shop=14">니트</a></li>
            <li><a href="../main/shop.jsp??shop=15">맨투맨</a></li>
            <li><a href="../main/shop.jsp??shop=16">후드</a></li>
        </ul>
    </nav>
    <nav class="navbar-left-details" id="2">
        <ul>
            <li><a href="../main/shop.jsp??shop=20">전체</a></li>
            <li><a href="../main/shop.jsp??shop=21">청바지</a></li>
            <li><a href="../main/shop.jsp??shop=22">면바지</a></li>
            <li><a href="../main/shop.jsp??shop=23">슬랙스</a></li>
            <li><a href="../main/shop.jsp??shop=24">반바지</a></li>
            <li><a href="../main/shop.jsp??shop=25">트레이닝</a></li>
            <li><a href="../main/shop.jsp??shop=26">스커트</a></li>\
        </ul>
    </nav>
    <nav class="navbar-left-details" id="3">
        <ul>
            <li><a href="../main/shop.jsp??shop=30">전체</a></li>
            <li><a href="../main/shop.jsp??shop=31">미니</a></li>
            <li><a href="../main/shop.jsp??shop=32">미디</a></li>
            <li><a href="../main/shop.jsp??shop=33">롱</a></li>
            <li><a href="../main/shop.jsp??shop=34">점프수트</a></li>
        </ul>
    </nav>
    <nav class="navbar-left-details" id="4">
        <ul>
            <li><a href="../main/shop.jsp??shop=40">전체</a></li>
            <li><a href="../main/shop.jsp??shop=41">스니커즈</a></li>
            <li><a href="../main/shop.jsp??shop=42">러닝화</a></li>
            <li><a href="../main/shop.jsp??shop=43">플랫/로퍼</a></li>
            <li><a href="../main/shop.jsp??shop=44">펌프스</a></li>
            <li><a href="../main/shop.jsp??shop=45">부츠</a></li>
            <li><a href="../main/shop.jsp??shop=46">샌들/슬리퍼</a></li>
        </ul>
    </nav>
    <nav class="navbar-left-details" id="5">
        <ul>
            <li><a href="../main/shop.jsp??shop=50">전체</a></li>
            <li><a href="../main/shop.jsp??shop=51">가방</a></li>
            <li><a href="../main/shop.jsp??shop=52">주얼리</a></li>
            <li><a href="../main/shop.jsp??shop=53">시계</a></li>
            <li><a href="../main/shop.jsp??shop=54">모자</a></li>
            <li><a href="../main/shop.jsp??shop=55">후드</a></li>
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
        <h1 class="title">찜 목록</h1>
        <table class="list-table">
            <thead>
                <tr>
                    <th>#</th>
                    <th>제품명</th>
                    <th>가격</th>
                    <th>재고</th>
                    <th>링크</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>아이보리 골덴 바지</td>
                    <td>38000원</td>
                    <td>1</td>
                    <td><a href="../main/item.jsp?item=221">buy</a></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>아이보리 골덴 바지</td>
                    <td>38000원</td>
                    <td>2</td>
                    <td><a href="../main/item.jsp?item=221">buy</a></td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>아이보리 골덴 바지</td>
                    <td>38000원</td>
                    <td>3</td>
                    <td><a href="../main/item.jsp?item=221">buy</a></td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>아이보리 골덴 바지</td>
                    <td>38000원</td>
                    <td>4</td>
                    <td><a href="../main/item.jsp?item=221">buy</a></td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>아이보리 골덴 바지</td>
                    <td>38000원</td>
                    <td>5</td>
                    <td><a href="../main/item.jsp?item=221">buy</a></td>
                </tr>
            </tbody>
        </table>
    </section>
</body>
</html>