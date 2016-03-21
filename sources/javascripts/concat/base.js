;(function($) {
  // ===========================================================================
  // Function to detect if user is in editmode.
  // ===========================================================================
  var editmode = function () {
    return $('html').hasClass('editmode');
  };

  var blogArticlePage = function() {
    return $('body').hasClass('blog-article-page');
  };

  // ===========================================================================
  // Helper function to limit the rate at which a function can fire.
  // ===========================================================================
  var debounce = function(func, wait, immediate) {
    var timeout;
    return function() {
      var context = this,
          args = arguments;

      var later = function() {
        timeout = null;

        if (!immediate) {
          func.apply(context, args);
        }
      };

      var callNow = immediate && !timeout;

      clearTimeout(timeout);
      timeout = setTimeout(later, wait);

      if (callNow) {
        func.apply(context, args);
      }
    };
  };

  // ===========================================================================
  // Bind site buttons functionality.
  // ===========================================================================
  var bindInterfaceButtons = function() {
    // Triggers the events when clicked anywhere on the document. Used for
    // sideclick functionality. Use the class "js-prevent-sideclick" on elements
    // that shouldn't trigger the sideclick events.
    $(document).on('click touchstart', function(event) {
      if (!$(event.target).closest('.js-prevent-sideclick').length) {
        var $html = $('html');

        $html.removeClass('menu-language-popover-open');
        $html.removeClass('menu-main-opened');
        $html.removeClass('site-search-opened');

        $('.js-search-input').val('');
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
      $(this).addClass('hidden');
      $('.js-menu-main .inner').find('> .menu').addClass('menu-current');
      $('.menu-item').removeClass('item-current');
      $('.js-toggle-menu-sub').removeClass('hidden');
    });

    // Goes one level deeper in mobile view navigation menu.
    $('.js-toggle-menu-sub').click(function() {
      var $currentBtn = $(this);

      $('.js-menu-main').find('.menu').removeClass('menu-current');
      $('.js-toggle-menu-prev').removeClass('hidden');
      $currentBtn.addClass('hidden');
      $('.menu-item').removeClass('item-current');
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

    // Clears site search input.
    $('.js-clear-search-input').click(function() {
      var $searchInput = $('.js-search-input');

      if ($searchInput.val().length > 0) {
        $searchInput.val('').focus();
      } else {
        $('html').removeClass('site-search-opened');
      }
    });

    // Toggles blog article comments author fields.
    $('.js-comment-field')
      .on('focus', function() {
        $('.js-comment-form-details').removeClass('is-hidden');
      })
      .on('blur', function() {
        if ($('.js-comment-name').val().length === 0 && $('.js-comment-email').val().length === 0) {
          setTimeout(function() {
            if (!$(document.activeElement).is('.js-comment-field')) {
              $('.js-comment-form-details').addClass('is-hidden');
            }
          }, 0);
        }
      })
    ;
  };

  // ===========================================================================
  // Sets header menu initial width attribute for menu mode calculation.
  // ===========================================================================
  var setHeaderMenuInitialWidth = function() {
    var $headerMenu = $('.js-header-menu');

    $headerMenu.attr('data-initial-width', $headerMenu.outerWidth(true));
  };

  // ===========================================================================
  // Calculates if it is proper to use compact or wide header menu.
  // ===========================================================================
  var setHeaderMenuMode = function() {
    var $body = $('body'),
        $siteHeader = $('.js-site-header'),
        $headerTitle = $('.js-header-title'),
        $headerTitleEditable = $siteHeader.find('.edy-editable'),
        headerTitleHtml,
        clonedElement;

    if (editmode()) {
      headerTitleHtml = $headerTitleEditable.html();
    } else {
      headerTitleHtml = $headerTitle.html();
    }

    if (headerTitleHtml.length > 0) {
      clonedElementContent = headerTitleHtml;
    } else {
      clonedElementContent = $headerTitleEditable.attr('data-placeholder');
    }

    clonedElement = '<div class="site-header header-title-clone js-header-title-clone"><div class="header-title content-area">' + clonedElementContent + '</div></div>';

    $('.js-header-title-clone').remove();
    $body.append(clonedElement);

    if ($('.js-header-title-clone').width() + $('.js-header-menu').data('initial-width') > $siteHeader.width()) {
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

  var bindHeaderTitleChange = function() {
    $('.js-site-header').on('input blur change', function() {
      setHeaderMenuMode();
    });
  };

  // ===========================================================================
  // Positions language menu popover under the toggleing button.
  // ===========================================================================
  var handleMenuLanguagePopoverPositioning = function(button) {
    var $offsetItem = $('.js-menu-language-offset-item');

    $('.js-menu-language-popover').css({
      top: Math.round($offsetItem.offset().top + $offsetItem.outerHeight()),
      right: Math.round($(window).width() - $offsetItem.offset().left - $offsetItem.outerWidth())
    });
  };

  // ===========================================================================
  // Toggles language menu flags.
  // ===========================================================================
  var bindLanguageFlagsToggle = function() {
    // Sets the variable for saving global custom data.
    var siteData = new Edicy.CustomData({
      type: 'site'
    });

    // Toggles language flags visibility.
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

  // ===========================================================================
  // Binds site search functionality.
  // ===========================================================================
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
  // ===========================================================================
  // Binds site header content area fallback behaviour fonr no-flexbox
  // browsers – calculates minimum width for the header content area.
  // ===========================================================================
  var bindFallbackHeaderContentAreaWidthCalculation = function() {
    var $headerTitle = $('.js-header-title');

    $headerTitle.css('min-width', $('.js-site-header').width() - $('.js-header-menu').width() - parseInt($headerTitle.css('margin-right')) + 1);
  };

  // ===========================================================================
  // Binds site footer content area fallback behaviour fonr no-flexbox
  // browsers – calculates minimum width for the footer content area.
  // ===========================================================================
  var bindFallbackFooterContentAreaWidthCalculation = function() {
    var $footerBody = $('.js-footer-body');

    $footerBody.css('min-width', $('.js-site-footer').width() - $('.js-voog-reference').width() - parseInt($footerVoogReference.css('margin-right')) + 1);
  };

  // ===========================================================================
  // Wraps content area tables with the parent <div>. (Enables horizontal
  // scrolling if table's width is wider than the content area itself).
  // ===========================================================================
  var wrapContentAreaTables = function() {
    $.each($('.content-area'), function() {
      $(this).find('table').wrap('<div class="table-container"></div>');
    });
  };

  // ===========================================================================
  // Scrolls to the form if submit failed or succeeded (to show the error
  // messages or success notice to the user).
  // ===========================================================================
  var focusFormMessages = function() {
    $(document).ready(function() {
      if ($('.comment-form').hasClass('form_with_errors')) {
        $('html, body')
          .scrollTop($('.comment-form')
          .offset().top)
        ;
      } else if ($('form').find('.form_error, .form_notice').length > 0) {
        $('html, body')
          .scrollTop($('.form_error, .form_notice').closest('form')
          .offset().top)
        ;
      }
    });
  };

  // ===========================================================================
  // Removes error highlighting from form input if user modifies the faulty
  // field.
  // ===========================================================================
  var removeFormInputErrorHighlight = function() {
    $('[class^=form_field_]').on('input change', function() {
      $(this).closest('.form_field_with_errors').removeClass('form_field_with_errors');
    });
  };

  // ===========================================================================
  // Resizes comment form message area if user adds/removes a line in textarea.
  // ===========================================================================
  var autoSizeFormCommentArea = function() {
    $('.js-comment-body').textareaAutoSize();
  };

  var setImageOrientation = function($article, width, height) {
    var $imgDropAreaTarget = $article.find('.js-img-drop-area'),
        $cropToggleButton = $article.find('.js-toggle-crop-state');

    if (width > height) {
      $imgDropAreaTarget
        .removeClass('image-landscape image-square image-portrait')
        .addClass('image-landscape')
      ;
    } else if (width === height) {
      $imgDropAreaTarget
        .removeClass('image-landscape image-square image-portrait')
        .addClass('image-square')
      ;
    } else {
      $imgDropAreaTarget
        .removeClass('image-landscape image-square image-portrait')
        .addClass('image-portrait')
      ;
    }

    if ($imgDropAreaTarget.hasClass('image-square')) {
      $cropToggleButton
        .removeClass('is-visible')
        .addClass('is-hidden')
      ;
    } else {
      $cropToggleButton
        .removeClass('is-hidden')
        .addClass('is-visible')
      ;
    }
  };

  var setArticleImage = function(articleId, imageId) {
    $.ajax({
       type: 'PATCH',
       contentType: 'application/json',
       url: '/admin/api/articles/' + articleId,
       data: JSON.stringify({'image_id': imageId}),
       dataType: 'json'
    });
  };

  // ===========================================================================
  // Binds editmode backgroun picker areas.
  // ===========================================================================
  var bindBgPickers = function() {
    $('.js-bg-picker-area').each(function(index, bgPickerArea) {
      var $bgPickerArea = $(bgPickerArea),
          $bgPickerButton = $bgPickerArea.find('.js-bg-picker-btn'),
          articleId = $bgPickerArea.closest('.blog-article').data('article-id'),
          dataBgKey = $bgPickerButton.data('bg-key');

      var bgPicker = new Edicy.BgPicker($bgPickerButton, {
        picture: $bgPickerButton.data('bg-picture-boolean'),
        target_width: $bgPickerButton.data('bg-target-width'),
        color: $bgPickerButton.data('bg-color-boolean'),

        preview: function(data) {
          var $article = $bgPickerArea.closest('.js-blog-article'),
              $imgDropArea = $bgPickerArea.find('.js-img-drop-area');

          setImageOrientation($article, data.width, data.height);

          $bgPickerArea.eq(0).data('imgDropArea').setData({
            id: data.original_id,
            url: data.image,
            width: data.width,
            height: data.height
          });

          $imgDropArea
            .removeClass('is-cropped')
            .addClass('not-cropped')
          ;
        },

        commit: function(data) {
          setArticleImage(articleId, data.original_id);
        }
      });

      $bgPickerArea.data('bgpicker', bgPicker);
    });
  };

  // ===========================================================================
  // Binds editmode image drop areas.
  // ===========================================================================
  var bindImgDropAreas = function() {
    $('.js-img-drop-area').each(function(index, imgDropAreaTarget) {
      var $imgDropAreaTarget = $(imgDropAreaTarget),
          $article = $imgDropAreaTarget.closest('.blog-article'),
          $bgPickerArea = $article.find('.js-bg-picker-area'),
          articleId = $article.data('article-id'),
          articleData = new Edicy.CustomData({
            type: 'article',
            id: articleId
          });

      var imgDropArea = new Edicy.ImgDropArea($imgDropAreaTarget, {
        positionable: false,
        target_width: 1280,
        removeBtn: '',

        change: function(data) {
          var $bgPickerButton = $article.find('.js-bg-picker-btn');

          $article
            .addClass('with-image')
            .removeClass('without-image')
          ;

          $imgDropAreaTarget
            .removeClass('is-cropped')
            .addClass('not-cropped')
          ;

          setImageOrientation($article, data.width, data.height);


          $bgPickerArea.eq(0).data('bgpicker').setData({
            id: data.original_id,
            image: data.url,
            width: data.width,
            height: data.height
          });

          setArticleImage(articleId, data.original_id);
          articleData.set('image_crop_state', 'not-cropped');
        }
      });

      $bgPickerArea.data('imgDropArea', imgDropArea);
    });
  };

  // ===========================================================================
  // Sets functions that will be initiated globally when resizing the browser
  // window.
  // ===========================================================================
  var bindArticleImageCropToggle = function() {
    $('.js-toggle-crop-state').on('click', function() {
      var $article = $(this).closest('.js-blog-article'),
          $imgDropAreaTarget = $article.find('.js-img-drop-area'),
          imageCropState;

      var articleData = new Edicy.CustomData({
        type: 'article',
        id: $article.data('article-id')
      });

      if ($imgDropAreaTarget.hasClass('is-cropped')) {
        $imgDropAreaTarget
          .removeClass('is-cropped')
          .addClass('not-cropped')
        ;

        imageCropState = 'not-cropped';

      } else {
        $imgDropAreaTarget
          .removeClass('not-cropped')
          .addClass('is-cropped')
        ;

        imageCropState = 'is-cropped';
      }

      articleData.set('image_crop_state', imageCropState);
    });
  };

  // ===========================================================================
  // Sets functions that will be initiated globally when resizing the browser
  // window.
  // ===========================================================================
  var initWindowResize = function() {
    $(window).resize(debounce(handleMenuLanguagePopoverPositioning, 100));
    $(window).resize(debounce(setHeaderMenuMode, 25));
  };

  // ===========================================================================
  // Sets functions that will be initiated globally.
  // ===========================================================================
  var init = function() {
    bindInterfaceButtons();
    setHeaderMenuInitialWidth();
    setHeaderMenuMode();
    focusFormMessages();
    removeFormInputErrorHighlight();
    autoSizeFormCommentArea();

    if (!Modernizr.flexbox && editmode()) {
      bindFallbackHeaderContentAreaWidthCalculation();
      bindFallbackFooterContentAreaWidthCalculation();
     }

     if (editmode()) {
       bindCustomContentFormats();
       bindHeaderTitleChange();
     } else {
       wrapContentAreaTables();
     }
  };

  // Enables the usage of the initiations outside this file.
  window.template = $.extend(window.template || {}, {
    // Initiations for layouts.
    // initBlogPage: initBlogPage,
    // initArticlePage: initArticlePage,
    // initCommonPage: initCommonPage,
    // initFrontPage: initFrontPage,
    // Initiations for specific functions.
    bindLanguageFlagsToggle: bindLanguageFlagsToggle,
    bindSiteSearch: bindSiteSearch,
    bindBgPickers: bindBgPickers,
    bindImgDropAreas: bindImgDropAreas,
    bindArticleImageCropToggle: bindArticleImageCropToggle
  });

  // ===========================================================================
  // Initiates global functions.
  // ===========================================================================
  initWindowResize();
  init();
})(jQuery);
