$( document ).ready(function() {
  $('#featured-btns .featured-btn').css('height',$('#featured-btns .featured-btn').width());

  $('.faq-item').click(function(){
    if($(this).hasClass('open')){
      $(this).children('p').slideToggle('fast');
      $(this).removeClass('open');
    }
    else{
      $(this).children('p').slideToggle('fast');
      $(this).addClass('open');
    }
  });
});
$( window ).resize(function() {
  $('#featured-btns .featured-btn').css('height',$('#featured-btns .featured-btn').width());
});
