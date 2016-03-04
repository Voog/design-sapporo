;(function($) {
  //============================================================================
  // Function to detect if user is in editmode.
  //============================================================================
  var editmode = function () {
    return $('html').hasClass('editmode');
  };

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
    $(document).on('click touchstart', function(event) {
      if (!$(event.target).closest('.js-prevent-sideclick').length) {
        var $html = $('html'),
            $searchInput = $('.js-search-input');

        $html.removeClass('menu-language-popover-open');
        $html.removeClass('menu-main-opened');
        $html.removeClass('site-search-opened');

        $searchInput.val('');
      }
    });

    // Toggles main menu in mobile view.
  	$('.js-toggle-menu-main').click(function() {
      var $html = $('html');

      $html.removeClass('menu-language-popover-open site-search-opened');
      $html.toggleClass('menu-main-opened');
  	});

    // Toggles language menu.
    $('.js-toggle-menu-language').click(function() {
      var $html = $('html');

      $html.toggleClass('menu-language-popover-open');

      if ($html.hasClass('menu-main-opened') || $html.hasClass('site-search-opened')) {
        $html.removeClass('menu-main-opened site-search-opened');

        setTimeout(function(){
          handleMenuLanguagePopoverPositioning();
        }, 300);
      } else if ($html.hasClass('menu-language-popover-open')) {
        handleMenuLanguagePopoverPositioning();
      }
    });

    // Goes one level up in mobile view navigation menu.
    $('.js-toggle-menu-prev').click(function() {
      var $menuMainInner = $('.js-menu-main .inner'),
          $currentBtn = $(this),
          $menuItems = $('.menu-item'),
          $menuSubBtns = $('.js-toggle-menu-sub');

      $currentBtn.addClass('hidden');
      $menuMainInner.find('> .menu').addClass('menu-current');
      $menuItems.removeClass('item-current');
      $menuSubBtns.removeClass('hidden');
    });

    // Goes one level deeper in mobile view navigation menu.
    $('.js-toggle-menu-sub').click(function() {
      var $menuMainInner = $('.js-menu-main'),
          $menuPrevBtn = $('.js-toggle-menu-prev'),
          $menuItems = $('.menu-item'),
          $currentBtn = $(this);

      $menuMainInner.find('.menu').removeClass('menu-current');
      $menuPrevBtn.removeClass('hidden');
      $currentBtn.addClass('hidden');
      $menuItems.removeClass('item-current');
      $currentBtn.closest('.menu-item').addClass('item-current');
    });

    // Toggles site search.
    $('.js-toggle-site-search').click(function() {
      var $html = $('html');

      $html.removeClass('menu-language-popover-open menu-main-opened');
      $html.toggleClass('site-search-opened');

      if ($html.hasClass('site-search-opened')) {
        $('.js-search-input').focus();
      }
    });

    $('.js-clear-search-input').click(function() {
      var $searchInput = $('.js-search-input');

      if ($searchInput.val().length > 0) {
        $searchInput.val('').focus();
      } else {
        $('html').removeClass('site-search-opened');
      }
    });
  };

  var setElementInitialWidthData = function(element) {
    var $element = $(element),
        elementInitialWidth = $element.outerWidth(true);

    $element.attr('data-initial-width', elementInitialWidth);
  };

  //============================================================================
  // Calculates if it is proper to use compact or wide header menu.
  //============================================================================
  var setHeaderMenuMode = function() {
    var $body = $('body'),
        $siteHeader = $('.js-site-header'),
        $headerTitle = $('.js-header-title'),
        $headerMenu = $('.js-header-menu'),
        siteHeaderWidth = $siteHeader.width(),
        headerTitleOuterWidth = $headerTitle.outerWidth(true),
        headerMenuWidth = $headerMenu.data('initial-width');

    if ($('body').hasClass('header-menu-compact')) {
      headerTitleOuterWidth = $headerTitle.data('initial-width');
    }

    if (headerTitleOuterWidth + headerMenuWidth > siteHeaderWidth) {
      $body.addClass('header-menu-compact');
      $body.removeClass('header-menu-wide');
    } else {
      $body.addClass('header-menu-wide');
      $body.removeClass('header-menu-compact');
    }

    if ($siteHeader.hasClass('is-loading')) {
      $siteHeader.removeClass('is-loading');
    }
  };

  //============================================================================
  // Positions language menu popover under the toggleing button.
  //============================================================================
  var handleMenuLanguagePopoverPositioning = function(button) {
    var $menuWrapper = $('.js-menu-language-popover'),
        $offsetItem = $('.js-menu-language-offset-item'),
        offsetItemOffsetTop = $offsetItem.offset().top,
        offsetItemOffsetLeft = $offsetItem.offset().left,
        offsetItemOuterWidth = $offsetItem.outerWidth(),
        offsetItemOuterHeight = $offsetItem.outerHeight(),
        windowWidth = $(window).width();

    $menuWrapper.css({
      top: Math.round(offsetItemOffsetTop + offsetItemOuterHeight),
      right: Math.round(windowWidth - offsetItemOffsetLeft - offsetItemOuterWidth)
    });
  };

  //============================================================================
  // Toggles language menu flags.
  //============================================================================
  var bindLanguageFlagsToggle = function() {
    $('.js-toggle-language-flags').click(function() {
      if ($('html').hasClass('language-flags-disabled')) {
        $('html')
          .removeClass('language-flags-disabled')
          .addClass('language-flags-enabled');

        siteData.set("language_flags_enabled", true);
      } else {
        $('html')
          .removeClass('language-flags-enabled')
          .addClass('language-flags-disabled');

        siteData.set("language_flags_enabled", false);
      }

      handleMenuLanguagePopoverPositioning();
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

  var bindCustomContentFormats = function() {
    window.edy = window.edy || [];
    edy.push(['texteditorStyles', {name: 'Button', tagname:'a', attribute: {'href': '#'}, classname: 'custom-btn', toggle: true}]);
  };

  // TODO: Convert these fallbacks to one function.
  //============================================================================
  // Binds site header content area fallback behaviour fonr no-flexbox
  // browsers – calculates minimum width for the header content area.
  //============================================================================
  var bindFallbackHeaderContentAreaWidthCalculation = function() {
    var $header = $('.js-site-header'),
        headerWidth = $header.width(),
        $headerMenu = $('.js-header-menu'),
        headerMenuWidth = $headerMenu.width(),
        $headerTitle = $('.js-header-title'),
        headerTitleMargin = parseInt($headerTitle.css('margin-right')) + 1;

    $headerTitle.css('min-width', headerWidth - headerMenuWidth - headerTitleMargin);
  };

  //============================================================================
  // Binds site footer content area fallback behaviour fonr no-flexbox
  // browsers – calculates minimum width for the footer content area.
  //============================================================================
  var bindFallbackFooterContentAreaWidthCalculation = function() {
    var $footer = $('.js-site-footer'),
        footerWidth = $footer.width(),
        $footerVoogReference = $('.js-voog-reference'),
        footerVoogReferenceWidth = $footerVoogReference.width(),
        footerVoogReferenceMargin = parseInt($footerVoogReference.css('margin-right')) + 1,
        $footerBody = $('.js-footer-body');

    $footerBody.css('min-width', footerWidth - footerVoogReferenceWidth - footerVoogReferenceMargin);
  };

  //============================================================================
  // Wraps content area tables with the parent <div>. (Enables horizontal
  // scrolling if table's width is wider than the content area itself).
  //============================================================================
  var wrapContentAreaTables = function() {
    $.each($('.content-area'), function() {
      $(this).find('table').wrap('<div class="table-container"></div>');
    });
  };

  //============================================================================
  // Sets functions that will be initiated globally when resizing the browser
  // window.
  //============================================================================
  var initWindowResize = function() {
    $(window).resize(debounce(handleMenuLanguagePopoverPositioning, 100));
    $(window).resize(debounce(setHeaderMenuMode, 100));
  };

  //============================================================================
  // Sets functions that will be initiated globally.
  //============================================================================
  var init = function() {
    bindInterfaceButtons();
    setElementInitialWidthData('.js-header-title');
    setElementInitialWidthData('.js-header-menu');
    setHeaderMenuMode();

    if (!Modernizr.flexbox && editmode()) {
      bindFallbackHeaderContentAreaWidthCalculation();
      bindFallbackFooterContentAreaWidthCalculation();
     }

     if (editmode()) {
       bindCustomContentFormats();
     } else {
       wrapContentAreaTables();
     }

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
