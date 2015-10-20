$ ->
  $('.scroll-to-top a').click ->
    $('html,body').animate({scrollTop: 0}, 'slow')
