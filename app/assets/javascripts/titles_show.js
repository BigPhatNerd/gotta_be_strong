  var remaining_rest;
  var myTimer;

  function clock(count) {
      var resetButton = document.getElementById("resetButton" + count);
      myTimer = setInterval(() => myClock(count), 1000);
  }

  function reset(count) {
      clearInterval(myTimer);
      remaining_rest = rest_in_seconds;
      document.getElementById("demo" + count).innerHTML = remaining_rest;
      if ("button2" !== null) {
          document.getElementById("button2" + count).disabled = false;
      }
  }

  function initialClock(counter) {
      reset(counter);
      clock(counter);
  }

  function myClock(count) {
      document.getElementById("demo" + count).innerHTML = --remaining_rest;
      timerColor(count);
      if (remaining_rest == 0) {
          clearInterval(myTimer);
          alert("Reached zero");
      }
  }

  function clearClock(myTimer, count) {
      clearInterval(myTimer);
      document.getElementById("button1" + count).disabled = false;
      document.getElementById("resetButton" + count).disabled = false;
  }

  function switchButtons(buttonId, count) {
      var hideBtn, showBtn;
      if (buttonId.id == 'button1' + count) {
          initialClock(count);
          showBtn = 'button2' + count;
          hideBtn = 'button1' + count;
          document.getElementById("button1" + count).disabled = true;
          document.getElementById("resetButton" + count).disabled = true;
      } else {
          clock(count);
          showBtn = 'button2' + count;
          hideBtn = 'button1' + count;
          document.getElementById("button2" + count).disabled = true;
          document.getElementById("resetButton" + count).disabled = true;
      }
      document.getElementById(hideBtn).style.display = 'none';
      document.getElementById(showBtn).style.display = '';
  }

  function disableStartButton(count) {
      if (document.getElementById('button2' + count).clicked == true) {
          document.getElementById("button2" + count).disabled = true;
      }
  }

  function timerColor(count) {
      if (remaining_rest < 10) {
          document.getElementById("demo" + count).style.color = "red";
      }
  }

  function showTimer(count) {
      document.getElementById('timerButtons' + count).style.display = "block";
      document.getElementById('showTimer' + count).style.visibility = "hidden";
  }