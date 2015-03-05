$(document).ready(function(){
  $(".validate-test").keyup(function(){
    if($('.validate-test').val() != "")
       console.log("Remove disabled");
 
      $(".submit-info").removeClass('disabled')
    }
  });

})