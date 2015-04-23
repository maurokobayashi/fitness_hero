var millis = new Number($('#exercise-countdown').val());
var pausedMillis = new Number();
var paused = false;

startCountdown = function(){
  // Se o tempo não for zerado
  if((millis - 1) >= 0 && !paused){
    printCountdown(millis);
    millis = millis - 100;
    setTimeout('startCountdown()',100);

  } else {
    printCountdown(millis);
  }
}

pauseCountdown = function(){
  paused = true;
}

resetCountdown = function(millis){
  pauseCountdown();
  setMillis(millis);
  printCountdown(millis);
}

setMillis = function(millis){
  this.millis = millis;
}

printCountdown = function(millis){
  var formatted = parseInt(millis/1000) + '.' + (millis%1000)/100;
  $("#countdown").html(formatted);
}

$( document ).ready(function(){
  $('#start-countdown').click(function(){
    paused = false;
    setMillis(millis);
    startCountdown();
    $('#start-countdown').hide();
    $('#pause-countdown').show();
  })

  $('#pause-countdown').click(function(){
    pauseCountdown();
    $('#pause-countdown').hide();
    $('#start-countdown').show();
  })

  $('#reset-countdown').click(function(){
    resetCountdown($('#exercise-countdown').val());
    $('#pause-countdown').hide();
    $('#start-countdown').show();
  })
})