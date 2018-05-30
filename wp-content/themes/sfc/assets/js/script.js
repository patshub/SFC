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

  $('.prayer-item').click(function(){
    if($(this).hasClass('open')){
      $(this).animate({'height':'80px'});
      $(this).children('.white-fade').fadeToggle();
      $(this).removeClass('open');
    }
    else{
      $(this).animate({'height': $(this).children('p').css('height')});
      $(this).children('.white-fade').fadeToggle();
      $(this).addClass('open');
    }
  });


});
$( window ).resize(function() {
  $('#featured-btns .featured-btn').css('height',$('#featured-btns .featured-btn').width());
});
