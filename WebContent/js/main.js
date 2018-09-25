(function($){
	var homeSlider = $('.home_page_slider');
	homeSlider.owlCarousel({
		items:1,
		loop:true,
		dots:false,
		nav:true,
		autoplay:true
		
	});
	$('#btn_add_new_item').on('click',function(e){
		$("#table_des_list").append($("#data_list_item").html())
	});
	$("body").on('click','.rv_destination',function(e){
		$(this).closest('tr').remove();
	})
}(jQuery))