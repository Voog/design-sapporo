;(function($) {
  var bindButtonsClick = function() {
  	$('.js-toggle-menu-main').click(function() {
  		$('body').toggleClass('menu-main-open');
  	});

    $('.js-toggle-menu-prev').click(function() {
      var $menuMain = $('.js-menu-main'),
          $currentBtn = $(this),
          $menuItems = $('.menu-item'),
          $menuSubBtns = $('.js-toggle-menu-sub');

      $currentBtn.addClass('hidden');
      $menuMain.find('> .menu').addClass('menu-current');
      $menuItems.removeClass('item-current');
      $menuSubBtns.removeClass('hidden');
    });

    $('.js-toggle-menu-sub').click(function() {
      var $menuMain = $('.js-menu-main'),
          $menuPrevBtn = $('.js-toggle-menu-prev'),
          $currentBtn = $(this);

      $menuMain.find('.menu').removeClass('menu-current');
      $menuPrevBtn.removeClass('hidden');
      $currentBtn
        .addClass('hidden')
        .closest('.menu-item').addClass('item-current');
    });
  };

  var init = function() {
    bindButtonsClick();
  };

  init();
})(jQuery);
