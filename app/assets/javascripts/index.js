 function clock() {
     var myTimer = setInterval(myClock, 1000);
     var c = <%= program.rest %>;

     function myClock() {
         document.getElementById("demo").innerHTML = --c;
         if (c == 0) {
             clearInterval(myTimer);
             alert("Reached zero");
         }
     }
 }