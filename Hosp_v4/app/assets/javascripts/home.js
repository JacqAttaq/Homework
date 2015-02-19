$(document).ready(function(){
  $(".error-message").fadeIn();
  $(".validate-test").keyup(function(){
    if($('.validate-test').val() != ''){
      $("error-message").fadeOut();
    }
  });

  $(".notice").fadeOut(5000);
  $(".alert").fadeOut(5000);
  $(".notice").on(function() {
    $(".notice").fadeOut(5000);
    $(".alert").fadeOut(5000);
  });

})
