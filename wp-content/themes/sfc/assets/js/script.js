$( document ).ready(function() {
  $('.spacer').css('height',$('header').height()+20);
});
$( window ).resize(function() {
  $('.spacer').css('height',$('header').height()+20);
});
