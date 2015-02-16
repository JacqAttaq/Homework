$(document).ready(function(){

  $(".validate-test").blur(function(){
    if($(".validate-test").val() != ""){
      $(".submit-info").removeClass('disabled');
    
     }
  });
  
});

$(document).on('click', '.update-waiting',function(){
  var patient_id = $(this).attr(patient_id);
  var facility_id = $(this).attr(facility_id);
  console.log a;linfe
  $.ajax({
    type: 'PATCH',
    url: '/patients',
    dataType: 'script'
  })
})