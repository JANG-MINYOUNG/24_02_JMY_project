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

const swiper = new Swiper(".swiper-slider", {
  // Optional parameters
  centeredSlides: true,
  slidesPerView: 1,
  grabCursor: true,
  freeMode: false,
  loop: true,
  mousewheel: false,
  keyboard: {
    enabled: true
  },

  // Enabled autoplay mode
  autoplay: {
    delay: 3000,
    disableOnInteraction: false
  },

  // If we need pagination
  pagination: {
    el: ".swiper-pagination",
    dynamicBullets: false,
    clickable: true
  },

  // If we need navigation
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev"
  },

  // Responsive breakpoints
  breakpoints: {
    640: {
      slidesPerView: 1.25,
      spaceBetween: 20
    },
    1024: {
      slidesPerView: 2,
      spaceBetween: 20
    }
  }
});
   
 $('.slider-for').slick({
   slidesToShow: 1,
   slidesToScroll: 1,
   arrows: false,
   fade: true,
   asNavFor: '.slider-nav',
   autoplay: true,
   autoplaySpeed: 2000
 });
 $('.slider-nav').slick({
   slidesToShow: 3,
   slidesToScroll: 1,
   asNavFor: '.slider-for',
   focusOnSelect: true
 });

 $('a[data-slide]').click(function(e) {
   e.preventDefault();
   var slideno = $(this).data('slide');
   $('.slider-nav').slick('slickGoTo', slideno - 1);
 });
 
 