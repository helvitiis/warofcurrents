window.onload = init;

function init() {
    scroll();
}

function scroll() {
    var y = window.scrollY;
    if (y >= 111) {
        document.getElementById("id").className = "show"
    } else {
        document.getElementById("id").className = "title"
    }
};

window.addEventListener("scroll", scroll);