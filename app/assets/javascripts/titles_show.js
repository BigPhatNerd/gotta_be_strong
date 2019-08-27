var remaining_rest;
var myTimer;





function clock() {
    var resetButton = document.getElementById("resetButton");
    myTimer = setInterval(myClock, 1000);
}

function reset() {
    clearInterval(myTimer);
    remaining_rest = rest_in_seconds;
    document.getElementById("demo").innerHTML = remaining_rest;
    if ("button2" !== null) {
        document.getElementById("button2").disabled = false;
    }

}

function initialClock() {
    reset();
    clock();
}

function myClock() {
    document.getElementById("demo").innerHTML = --remaining_rest;
    timerColor();
    if (remaining_rest == 0) {
        clearInterval(myTimer);
        alert("Reached zero");
    }

}

function clearClock(myTimer) {
    clearInterval(myTimer);
    document.getElementById("button2").disabled = false;
    document.getElementById("resetButton").disabled = false;

}


function switchButtons(buttonId) {
    var hideBtn, showBtn;
    if (buttonId == 'button1') {
        initialClock();
        showBtn = 'button2';
        hideBtn = 'button1';
        document.getElementById("button2").disabled = true;
        document.getElementById("resetButton").disabled = true;

    } else {
        clock();
        showBtn = 'button2';
        hideBtn = 'button1';
        document.getElementById("button2").disabled = true;
        document.getElementById("resetButton").disabled = true;



    }
    document.getElementById(hideBtn).style.display = 'none';
    document.getElementById(showBtn).style.display = '';


}

function disableStartButton() {
    if (document.getElementById('button2').clicked == true) {
        document.getElementById("button2").disabled = true;
    }

}

function timerColor() {
    if (remaining_rest < 10) {
        document.getElementById("demo").style.color = "red";
    }
}

function showTimer() {

    document.getElementById('timerButtons').style.display = "block";
    document.getElementById('showTimer').style.visibility = "hidden";
}




//I don't have your menus, so this is commented out.  just uncomment for your usage
// document.getElementById(menuToggle).toggle(); //step 1: toggle menu
//document.getElementById(hideBtn).style.display = 'none'; //step 2 :additional feature hide button
//document.getElementById(showBtn).style.display = ''; //step 3:additional feature show button