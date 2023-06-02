function showNavLeft(){
    var navbar = document.getElementById("navbar-left");
    navbar.style.left = "0";
    navbar.style.transition = "1s";
    hideNavRight();
}

function hideNavLeft(){
    var navbar = document.getElementById("navbar-left");
    navbar.style.left = "-13%";
    navbar.style.transition = "1s";
}

function showNavDetails(navId){
    var navLeft = document.getElementById("navbar-left");
    if(navId != navLeft.className){
        var navDetails = document.getElementById(navId);
        if(navLeft.className != "no-details"){
            hideNavDetails(navLeft.className);
        }
        navDetails.style.left = "13%";
        navDetails.style.transition = "1.5s";
        navLeft.className = navId;
    }
}

function hideNavDetails(navId){
    if(navId !== "no-details"){
        var navDetails = document.getElementById(navId);
        navDetails.style.left = "-13%";
        navDetails.style.transition = "1s";
    }
}

function hideNavDetails2(){
    var navLeft = document.getElementById("navbar-left");
    hideNavDetails(navLeft.className);
}

function showNavRight(){
    var navbar = document.getElementById("navbar-right");
    navbar.style.right = "0";
    navbar.style.transition = "1s";
    hideNavLeft();
    hideNavDetails2();
}

function hideNavRight(){
    var navbar = document.getElementById("navbar-right");
    navbar.style.right = "-20%";
    navbar.style.transition = "1s";
}