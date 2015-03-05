$(document).ready(function(){

  


  $('ul.med_list >li').hide();
  $('li.section_1').show();
  console.log("Code loaded");

$("ul.link_list > li > a").click(function(){
  $("ul.med_list> li").hide();
  console.log("in the middle of the list");
  var med_list = $(this).attr("med_num");
  $("li.section_" + med_list).show();
})


});