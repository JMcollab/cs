var canvas = document.getElementById("canvas");
var ctx = canvas.getContext("2d");

var value = 0; //Enter the amount of skins

ctx.translate(0, 600); //Set origin to bottom right

ctx.fillStyle="#E9EAED";
ctx.fillRect(0,0, 200, -600);

/*var interval = window.setInterval(fillBar, 1000); *///Fills bar by 1 per second...doesn't stop

var skinstext = document.getElementById("numSkins");
function fillBar() {
    ctx.fillStyle="#14a1ff";
    ctx.fillRect(0, 0, 200, value * -2); //Up to 10 skins
    if(i % 30 == 0)
        skinstext.innerHTML = (i/30).toString() + " skins deposited";
    if(i <= skins*30) {
        i++;
        value ++;
    }
    else
        clearInterval(interval);
};
var i = 0;
var skins = 10;
var interval = window.setInterval(fillBar, 10);