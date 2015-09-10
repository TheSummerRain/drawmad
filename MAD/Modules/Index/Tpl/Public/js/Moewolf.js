var lay = function() {
    var overlay = document.getElementById("overlay");
    if(overlay){
        overlay.style.display = "block";
    }else{
        var body = document.getElementsByTagName("body")[0];
        overlay = document.createElement("div");
        overlay.id="overlay";
        overlay.style.display = "block";
        body.appendChild(overlay);
    }
    overlay.onclick = function () {
        overlay.style.display = "none";
        var v = document.getElementsByClassName("video");
        for(var num=0;num<v.length;num++){
            v[num].style.display = "none";
        }
    }
}
var vimg = document.getElementsByClassName("v");
for(var i = 0; i < vimg.length; i++){
    vimg[i].onclick = function () {
        lay();
        this.parentNode.parentNode.nextElementSibling.style.display = "block";
    }
}

function keyUp(e) {
        var currKey=0,e=e||event;
        currKey=e.keyCode||e.which||e.charCode;
        var keyName = String.fromCharCode(currKey);
        if(currKey == 27){
            overlay.onclick();
        }
        //alert("按键码: " + currKey +" 字符: " + keyName);
}
document.onkeyup = keyUp;