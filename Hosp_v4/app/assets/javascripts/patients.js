$(document).ready(function(){

  $(".validate-test").blur(function(){
    if($(".validate-test").val() != ""){
      $(".submit-info").removeClass('disabled');
    
     }
  });
  
});

$(document).on('click','.update-wait',function(){
  var facility_id = $(this).attr("facility_id");
  var patient_id = $(this).attr("patient_id");
  console.log ("a;linfe")
  $.ajax({
    type: 'PATCH',
    url: 'facilities/'+facility_id +'/patients/' + patient_id,
    dataType: 'script'
  })
})