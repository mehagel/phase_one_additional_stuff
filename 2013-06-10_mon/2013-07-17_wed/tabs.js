$(document).ready(function () {

  $('li').on('click', function(){
    $('.active').removeClass('active');
    $(this).addClass('active');
  });


});