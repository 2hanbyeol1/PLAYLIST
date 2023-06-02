var canvas, context;
var startX = 0, startY = 0;
var dragging = false;
var drawn = false;
var validateId = false;
var confirmTel = false;

function init(){
    canvas = document.getElementById("sign-canvas");
    context = canvas.getContext("2d");
    
    context.strokeStyle = "rgb(90, 130, 100)";
    canvas.addEventListener("mousemove", function(e){ move(e) }, false);
    canvas.addEventListener("mousedown", function(e){ down(e) }, false);
    canvas.addEventListener("mouseup", function(e){ up(e) }, false);
    canvas.addEventListener("mouseout", function(e){ out(e) }, false);
}

function erase(e){
    e.preventDefault();
    context.clearRect(0, 0, canvas.width, canvas.height);
    drawn = false;
}
function down(e) {
    startX = e.offsetX;
    startY = e.offsetY;
    dragging = true;
}
function up(e) { dragging = false; }
function move(e) {
    if(!dragging) return; // 마우스가 눌러지지 않았으면 리턴
    var curX = e.offsetX, curY = e.offsetY;
    draw(curX, curY);
    startX = curX, startY = curY;
}
function out(e) { dragging = false; }
function draw(curX, curY) { 
    context.beginPath();
    context.moveTo(startX, startY);
    context.lineTo(curX, curY);
    context.stroke();
    drawn = true;
}