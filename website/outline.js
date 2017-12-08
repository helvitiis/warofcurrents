window.addEventListener('DOMContentLoaded', init, false);

window.onload = init;


function init() {
    var buttons = document.getElementsByClassName('button');
    for (var i = 0; i < buttons.length; i++) {
        buttons[i].addEventListener('click', toggleTOC, false);
    }
}

function toggleTOC() {
    hideOthers()
    var divID = 'about' + this.id
    var selDiv = document.getElementById(divID)
    selDiv.style.display = 'block';
}

function hideOthers() {
    var divs = document.getElementsByClassName('main')
    for (var d = 0; d < divs.length; d++)
    divs[d].style.display = 'none';
}