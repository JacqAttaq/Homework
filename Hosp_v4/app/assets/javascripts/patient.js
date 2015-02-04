$(document).ready(function(){

  $(".validate-name").blur(function(){
    if($(".validate-name").val() !=""){
      $(".submit").removeClass('disabled')
    }

  })
  
})