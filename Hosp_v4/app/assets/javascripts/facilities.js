$(document).ready(function(){

  $(".validate-test").blur(function(){
    if($(".validate-test").val() != ""){
      $(".submit-info").removeClass('disabled');
    
     }
  });
  
  var show_per_page = 10;
  var number_of_pages = math.ceil(number_of_items/show_per_page);

  $('#current_page').val(0);
  $('#show_per_page').val(show_per_page);

function go_to_page(page_num) (
  var show_per_page = parseInt($('#show_per_page').val());
  start_from = page_num * show_per_page;
  end_on = start_from + show_per_page;
  )
});

