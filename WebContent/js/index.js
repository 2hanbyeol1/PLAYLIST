function init(){
    var visit = getCookie("visit");
    if(visit == null){
        visit = 0;
    }
    visit++;
    var expire = new Date();
    expire.setTime(expire.getTime() + (1000 * 3600 * 24 * 360));
    setCookie("visit", visit, expire);
    alert(visit + "번째 방문, 감사합니다♥");
}

function setCookie(name, value, expireDate){
    var cookieStr = name + "=" + escape(value) + ((expireDate == null)?"":("; expires=" + expireDate.toGMTString()));
    document.cookie = cookieStr;
}

function getCookie(name){
    var str = name + "=";
    var pairs = document.cookie.split(";");
    for(var i = 0; i < pairs.length; i++) {
        var pair = pairs[i].trim();
        var unit = pair.split("=");
        if(unit[0] == name){
            return unescape(unit[1]);
        }
    }
    return null;
}