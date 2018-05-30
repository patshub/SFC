$( document ).ready(function() {
  $('#featured-btns .featured-btn').css('height',$('#featured-btns .featured-btn').width());

  // Faq Item Dropdown
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

  // Prayer Items Dropdown
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

  // Prayer Intentions Form - ADDED Privacy Label
  $('.usp-category label').html('<p><strong>We respect your privacy.</strong><br/>Please let us know if you would like your prayer intentions to be Private or Public.</p>');
  $('select#user-submitted-category option').first().text('Your Privacy');

  // Direct Browser to the form after Submission
  $('#prayer-form #usp_form').attr('action','#prayer-form');

});
$( window ).resize(function() {
  $('#featured-btns .featured-btn').css('height',$('#featured-btns .featured-btn').width());
});
