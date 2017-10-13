myID = document.getElementById("myID");

var myScrollFunc = function () {
    var y = window.scrollY;
    if (y >= 1) {
        myID.className = "title show"
    } else {
        myID.className = "title hide"
    }
};

window.onload = myScrollFunc;
window.addEventListener("scroll", myScrollFunc);