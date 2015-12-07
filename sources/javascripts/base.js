;(function($) {
  //============================================================================
  // Helper function to limit the rate at which a function can fire.
  //============================================================================
  var debounce = function(func, wait, immediate) {
    var timeout;
    return function() {
      var context = this, args = arguments;
      var later = function() {
        timeout = null;
        if (!immediate) func.apply(context, args);
      };
      var callNow = immediate && !timeout;
      clearTimeout(timeout);
      timeout = setTimeout(later, wait);
      if (callNow) func.apply(context, args);
    };
  };

  //============================================================================
  // Bind site buttons functionality.
  //============================================================================
  var bindInterfaceButtons = function() {
    // Triggers the events when clicked anywhere on the document. Used for
    // sideclick functionality. Use the class "js-prevent-sideclick" on elements
    // that shouldn't trigger the sideclick events.
    $(document).on('click', function(event) {
      if (!$(event.target).closest('.js-prevent-sideclick').length) {
        var $body = $('body');

        $body.removeClass('menu-language-popover-open');
        $body.removeClass('menu-main-opened');
        $body.removeClass('site-search-opened');

        setTimeout(function(){
          $body.addClass('menu-main-closed');
          $body.addClass('site-search-closed');
       }, 200);
      }
    });

    // Toggles main menu in mobile view.
  	$('.js-toggle-menu-main').click(function() {
      var $body = $('body');

      if ($body.hasClass('site-search-opened')) {
        $body.removeClass('site-search-opened menu-main-closed');
        $body.addClass('menu-main-opened site-search-closed');
      } else if ($body.hasClass('menu-main-closed')) {
        $body.removeClass('menu-main-closed');
        $body.addClass('menu-main-opened');
      } else if ($body.hasClass('menu-main-opened')) {
        $body.removeClass('menu-main-opened');

        setTimeout(function(){
          $body.addClass('menu-main-closed');
       }, 200);
      }

      if ($body.hasClass('site-search-opened')) {
        $body.removeClass('site-search-opened');
      }
  	});

    // Toggles language menu.
    $('.js-toggle-menu-language').click(function() {
      if (!$('body').hasClass('menu-language-popover-open')) {
        handleMenuLanguagePopoverPositioning();
        $('body').addClass('menu-language-popover-open');
      } else {
        $('body').removeClass('menu-language-popover-open');
      }
    });

    // Goes one level up in mobile view navigation menu.
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

    // Goes one level deeper in mobile view navigation menu.
    $('.js-toggle-menu-sub').click(function() {
      var $menuMain = $('.js-menu-main'),
          $menuPrevBtn = $('.js-toggle-menu-prev'),
          $currentBtn = $(this);

      $menuMain.find('.menu').removeClass('menu-current');
      $menuPrevBtn.removeClass('hidden');
      $currentBtn.addClass('hidden');
      $currentBtn.closest('.menu-item').addClass('item-current');
    });

    // Toggles site search.
    $('.js-toggle-site-search').click(function() {
      var $body = $('body');

      if ($body.hasClass('menu-main-opened')) {
        $body.removeClass('menu-main-opened site-search-closed');
        $body.addClass('site-search-opened menu-main-closed');
        $('.js-search-input').focus();
      } else if ($body.hasClass('site-search-closed')) {
        $body.removeClass('site-search-closed');
        $body.addClass('site-search-opened');
        $('.js-search-input').focus();
      } else if ($body.hasClass('site-search-opened')) {
        $body.removeClass('site-search-opened');

        setTimeout(function(){
          $body.addClass('site-search-closed');
       }, 200);
      }

      if ($body.hasClass('menu-main-opened')) {
        $body.removeClass('menu-main-opened');
      }
    });
  };

  //============================================================================
  // Positions language menu popover under the toggleing button.
  //============================================================================
  var handleMenuLanguagePopoverPositioning = function(button) {
    var $menuWrapper = $('.js-menu-language-popover'),
        $offsetItem = $('.js-toggle-menu-language'),
        offsetItemOffsetTop = $offsetItem.offset().top,
        offsetItemOffsetLeft = $offsetItem.offset().left,
        offsetItemOuterWidth = $offsetItem.outerWidth(),
        offsetItemOuterHeight = $offsetItem.outerHeight(),
        windowWidth = $(window).width();

    $menuWrapper.css({
      top: offsetItemOffsetTop + offsetItemOuterHeight,
      right: windowWidth - offsetItemOffsetLeft - offsetItemOuterWidth
    });
  };

  //============================================================================
  // Toggles language menu flags.
  //============================================================================
  var bindLanguageFlagsToggle = function() {
    $('.js-toggle-language-flags').click(function() {
      if ($('body').hasClass('language-flags-disabled')) {
        $('body')
          .removeClass('language-flags-disabled')
          .addClass('language-flags-enabled');

        siteData.set("language_flags_enabled", true);
      } else {
        $('body')
          .removeClass('language-flags-enabled')
          .addClass('language-flags-disabled');

        siteData.set("language_flags_enabled", false);
      }
    });
  };

  //============================================================================
  // Binds site search functionality.
  //============================================================================
  var bindSiteSearch = function(searchForm, languageCode) {
    if (searchForm) {
      var search = new VoogSearch(searchForm, {
        // Results are lazy-loaded on scroll.
        // This defines the number of results per query.
        per_page: 10,
        // Language code for restricting the search to page language.
        lang: languageCode,
        // If given, an DOM element results are rendered inside that element
        // instead of modal (with scroll lazy load support).
        resultsContainer: $('.js-voog-search-modal').get(0),
        // Defines if modal should close on sideclick.
        sideclick: true,
        // Mobile checkpoint (adds class "voog-search-mobile-mode" if <= nr).
        mobileModeWidth: 640,
        // Updates results on every keypress.
        updateOnKeypress: true
      });
    }
  };

  //============================================================================
  // Sets functions that will be initiated globally when resizing the browser
  // window.
  //============================================================================
  var initWindowResize = function() {
    $(window).resize(debounce(handleMenuLanguagePopoverPositioning, 100));
  };

  //============================================================================
  // Sets functions that will be initiated globally.
  //============================================================================
  var init = function() {
    bindInterfaceButtons();
  };

  // Enables the usage of the initiations outside this file.
  window.site = $.extend(window.site || {}, {
    // Initiations for layouts.
    // initBlogPage: initBlogPage,
    // initArticlePage: initArticlePage,
    // initCommonPage: initCommonPage,
    // initFrontPage: initFrontPage,
    // Initiations for specific functions.
    bindLanguageFlagsToggle: bindLanguageFlagsToggle,
    bindSiteSearch: bindSiteSearch
  });

  //============================================================================
  // Initiates global functions.
  //============================================================================
  initWindowResize();
  init();
})(jQuery);
