;(function($) {
  var bindButtonsClick = function() {
  	$('.js-toggle-menu-main').click(function() {
  		$('body').toggleClass('menu-main-open');
  	});
  };

  var init = function() {
    bindButtonsClick();
  };

  init();
})(jQuery);
