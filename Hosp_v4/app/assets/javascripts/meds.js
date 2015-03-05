$(document).ready(function(){

  $(".validate-test").blur(function(){
    if($(".validate-test").val() != ""){
      $(".submit-info").removeClass('disabled');
    
     }
  });
  
 console.log("Code loaded");

$('ul.med_list >li').hide();
$('li.section_1').show();

$("ul.link_list>li>a").click(function(){
  $("ul.med_list> li").hide();
  var med_list = $(this).attr("med_num");
  $("li.section_" + med_list).show();
})

var name = $("name_field").val();
  if(name!= "") {
    $('.error_name').hide();
  }
  $('.name_field').keyup(function(errorNameCheck){
    var name = $("name_field").val();
    if(name != "" ){
      $('.error_name').hide();
    }
    else{
      $('.error_name').show();
    }
  })
});