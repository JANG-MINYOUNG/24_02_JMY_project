$('select[data-value]').each(function(index, el) {
	const $el = $(el);

	defaultValue = $el.attr('data-value').trim();

	if (defaultValue.length > 0) {
		$el.val(defaultValue);
	}

});

function Mobile_TopBar__init() {
	$(".mobile_top_bar .btn_toggle").click(function() {
		$(this).toggleClass("active");
	});
}

function TopBar__init() {
	$(".top_bar .menu_box_1 > ul > li").mouseover(function() {
		var $height = $(this).find("> ul").height();

		var height_plus = $height + 50;

		$(".bg").css("height", height_plus + "px");
	});

	$(".top_bar .menu_box_1 > ul > li").mouseleave(function() {
		$(".bg").css("height", "0px");
	});
}

TopBar__init();
Mobile_TopBar__init();

    
     

