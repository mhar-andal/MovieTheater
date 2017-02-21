$(document).ready(function(){
  $('#datetimepicker_format').datetimepicker({value:'2015/04/15 05:03', format: $("#datetimepicker_format_value").val()});
  console.log($('#datetimepicker_format').datetimepicker('getValue'));

  $("#datetimepicker_format_change").on("click", function(e){
  	$("#datetimepicker_format").data('xdsoft_datetimepicker').setOptions({format: $("#datetimepicker_format_value").val()});
  });
  $("#datetimepicker_format_locale").on("change", function(e){
  	$.datetimepicker.setLocale($(e.currentTarget).val());
  });

  $('#datetimepicker').datetimepicker({
  dayOfWeekStart : 1,
  lang:'en'
  });


  $('.some_class').datetimepicker();

  $('#default_datetimepicker').datetimepicker({
  	formatTime:'H:i',
  	formatDate:'d.m.Y',
  	//defaultDate:'8.12.1986', // it's my birthday
  	defaultDate:'+03.01.1970', // it's my birthday
  	defaultTime:'10:00',
  	timepickerScrollbar:false
  });
});
