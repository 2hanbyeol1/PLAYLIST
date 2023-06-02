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

var itemNum;

function showItemSection() {
	itemNum = getParam("item");
    setImage(itemNum);
}

function setImage(itemNum){
    var img = document.getElementById("item-img");
    img.src = "../image/" + itemNum + ".jpg";
}

function getItemName(){
	return document.getElementsByClassName("item-name")[0].innerText;
}

function getItemPrice(){
	return document.getElementsByClassName("item-price")[0].innerText;
}

function saveLike(){
	if (!window.localStorage) {
		alert("로컬스토리지를 지원하지 않습니다.");
		return;
	}
	localStorage.setItem("likeNum", itemNum);
	localStorage.setItem("likeName", getItemName());
	localStorage.setItem("likePrice", getItemPrice());
}

function saveCart(){
	if (!window.localStorage) {
		alert("로컬스토리지를 지원하지 않습니다.");
		return;
	}
	localStorage.setItem("cartNum", itemNum);
	localStorage.setItem("cartName", getItemName());
	localStorage.setItem("cartPrice", getItemPrice());
}

function purchase(){
    alert("구매해주셔서 감사합니다.");
}