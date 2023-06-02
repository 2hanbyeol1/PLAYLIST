function showShopSection() {
    var shopNum = getParam("shop");
    setShopTitle(shopNum);
}

function getParam(sname) {
    var params = location.search.substr(location.search.indexOf("?") + 1);
    var sval = "";
    params = params.split("&");
    for (var i = 0; i < params.length; i++) {
        temp = params[i].split("=");
        if ([temp[0]] == sname) {
            sval = temp[1];
        }
    }
    return sval;
}

function setShopTitle(shopNum){
    var h1 = document.getElementsByClassName("title")[0];
    var title;
    if(shopNum == 00 || shopNum == 10 || shopNum == 20 || shopNum == 30 || shopNum == 40 || shopNum == 50){
        title = "전체";
    } else if (shopNum == 01){
        title = "자켓";
    } else if (shopNum == 02){
        title = "가디건";
    } else if (shopNum == 03){
        title = "코트";
    } else if (shopNum == 04){
        title = "점퍼";
    } else if (shopNum == 05){
        title = "패딩";
    } else if (shopNum == 06){
        title = "무스탕/퍼";
    } else if (shopNum == 11){
        title = "티";
    } else if (shopNum == 12){
        title = "나시";
    } else if (shopNum == 13){
        title = "셔츠";
    } else if (shopNum == 14){
        title = "니트";
    } else if (shopNum == 15){
        title = "맨투맨";
    } else if (shopNum == 16){
        title = "후드";
    } else if (shopNum == 21){
        title = "청바지";
    } else if (shopNum == 22){
        title = "면바지";
    } else if (shopNum == 23){
        title = "슬랙스";
    } else if (shopNum == 24){
        title = "반바지";
    } else if (shopNum == 25){
        title = "트레이닝";
    } else if (shopNum == 26){
        title = "스커트";
    } else if (shopNum == 31){
        title = "미니";
    } else if (shopNum == 32){
        title = "미디";
    } else if (shopNum == 33){
        title = "롱";
    } else if (shopNum == 34){
        title = "점프수트";
    } else if (shopNum == 41){
        title = "스니커즈";
    } else if (shopNum == 42){
        title = "러닝화";
    } else if (shopNum == 43){
        title = "플랫/로퍼";
    } else if (shopNum == 44){
        title = "펌프스";
    } else if (shopNum == 45){
        title = "부츠";
    } else if (shopNum == 46){
        title = "샌들/슬리퍼";
    } else if (shopNum == 51){
        title = "가방";
    } else if (shopNum == 52){
        title = "주얼리";
    } else if (shopNum == 53){
        title = "시계";
    } else if (shopNum == 54){
        title = "모자";
    } else if (shopNum == 55){
        title = "후드";
    }
    h1.innerText = title;
}