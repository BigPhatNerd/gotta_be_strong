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


}

function test() {
    var count = 0;
    if (count % 2 === 0) {
        reset();
        clock();
        count++;


    } else {
        clock();



    }
}


function myClock() {


    document.getElementById("demo").innerHTML = --remaining_rest;



    if (remaining_rest == 0) {
        clearInterval(myTimer);
        alert("Reached zero");
    }
}