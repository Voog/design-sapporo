/*!
 * jQuery Textarea AutoSize plugin
 * Author: Javier Julio
 * Licensed under the MIT license
 */
;(function ($, window, document, undefined) {

  var pluginName = "textareaAutoSize";
  var pluginDataName = "plugin_" + pluginName;

  var containsText = function (value) {
    return (value.replace(/\s/g, '').length > 0);
  };

  function Plugin(element, options) {
    this.element = element;
    this.$element = $(element);
    this.init();
  }

  Plugin.prototype = {
    init: function() {
      var height = this.$element.outerHeight();
      var diff = parseInt(this.$element.css('paddingBottom')) +
                 parseInt(this.$element.css('paddingTop')) || 0;

      if (containsText(this.element.value)) {
        this.$element.height(this.element.scrollHeight - diff);
      }

      // keyup is required for IE to properly reset height when deleting text
      this.$element.on('input keyup', function(event) {
        var $window = $(window);
        var currentScrollPosition = $window.scrollTop();

        $(this)
          .height(0)
          .height(this.scrollHeight - diff);

        $window.scrollTop(currentScrollPosition);
      });
    }
  };

  $.fn[pluginName] = function (options) {
    this.each(function() {
      if (!$.data(this, pluginDataName)) {
        $.data(this, pluginDataName, new Plugin(this, options));
      }
    });
    return this;
  };

})(jQuery, window, document);

;(function($) {
  // ===========================================================================
  // Function to detect if site is displayed in editmode.
  // ===========================================================================
  var editmode = function () {
    return $('html').hasClass('editmode');
  };

  // ===========================================================================
  // Function to detect if site language menu popover is open.
  // ===========================================================================
  var languageMenuPopoverOpen = function() {
    return $('html').hasClass('menu-language-popover-open');
  };

  // ===========================================================================
  // Function to detect if current page is article.
  // ===========================================================================
  var blogArticlePage = function() {
    return $('body').hasClass('blog-article-page');
  };

  // ===========================================================================
  // Function to detect if current page has expanded menu.
  // ===========================================================================
  var headerMenuWide = function() {
    return $('body').hasClass('header-menu-wide');
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
      // TODO: Prevent sidemenu closing.
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

    // Toggles language menu popover.
    $('.js-toggle-menu-language').click(function() {
      var $html = $('html');

      $html.toggleClass('menu-language-popover-open');

      if ($html.hasClass('menu-main-opened') || $html.hasClass('site-search-opened')) {
        $html.removeClass('menu-main-opened site-search-opened');

        setTimeout(function(){
          positionPopoverMenu('.js-toggle-menu-language', '.js-menu-language-popover');
        }, 300);
      } else if ($html.hasClass('menu-language-popover-open')) {
        positionPopoverMenu('.js-toggle-menu-language', '.js-menu-language-popover');
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
        if ($('.js-comment-body').val().length === 0 && $('.js-comment-name').val().length === 0 && $('.js-comment-email').val().length === 0) {
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
  // Positions popover menus under the toggleing button.
  // ===========================================================================
  var positionPopoverMenu = function(popoverButton, popoverMenu) {
    var $popoverButton = $(popoverButton);

    $(popoverMenu).css({
      top: Math.round($popoverButton.offset().top + $popoverButton.outerHeight()),
      right: Math.round($(window).width() - $popoverButton.offset().left - $popoverButton.outerWidth())
    });
  };

  // ===========================================================================
  // Toggles language menu mode.
  // ===========================================================================
  var bindLanguageMenuSettings = function(languageMenuValuesObj) {
    if (!('type' in languageMenuValuesObj)) {
      languageMenuValuesObj.type = 'popover';
    }

    if (!('item_state' in languageMenuValuesObj)) {
      languageMenuValuesObj.item_state = 'flags_and_names';
    }

    $('.js-menu-language-settings-toggle').each(function(index, languageMenuSettingsButton) {
      var langSettingsEditor = new Edicy.SettingsEditor(languageMenuSettingsButton, {
        menuItems: [
          {
            "titleI18n": "format",
            "type": "radio",
            "key": "type",
            "list": [
              {
                "titleI18n": "dropdown_menu",
                "value": "popover"
              },
              {
                "titleI18n": "expanded_menu",
                "value": "list"
              },
            ]
          },
          {
            "titleI18n": "show",
            "type": "radio",
            "key": "item_state",
            "list": [
              {
                "titleI18n": "flags_only",
                "value": "flags_only"
              },
              {
                "titleI18n": "names_only",
                "value": "names_only"
              },
              {
                "titleI18n": "flags_and_names",
                "value": "flags_and_names"
              }
            ]
          }
        ],

        buttonTitleI18n: "settings",

        values: languageMenuValuesObj,

        containerClass: ['js-menu-language-settings-popover', 'js-prevent-sideclick'],

        preview: function(data) {
          var $html = $('html'),
              $languageSettingsMenuElement = $('.js-menu-language-settings');

          if (data.type === 'list') {
            $html.removeClass('language-menu-mode-popover');
            $html.removeClass('menu-language-popover-open');
            $html.addClass('language-menu-mode-list');

            $languageSettingsMenuElement.appendTo('.js-menu-language-list-setting-parent');
          } else {
            $html.removeClass('language-menu-mode-list');
            $html.addClass('language-menu-mode-popover');
            $html.addClass('menu-language-popover-open');

            $languageSettingsMenuElement.appendTo('.js-menu-language-popover-setting-parent');
          }

          if (data.item_state === 'flags_only') {
            $html.removeClass('language-flags-disabled');
            $html.removeClass('language-names-enabled');
            $html.addClass('language-flags-enabled');
            $html.addClass('language-names-disabled');
          } else if (data.item_state === 'names_only') {
            $html.removeClass('language-flags-enabled');
            $html.removeClass('language-names-disabled');
            $html.addClass('language-flags-disabled');
            $html.addClass('language-names-enabled');
          } else if (data.item_state === 'flags_and_names') {
            $html.removeClass('language-flags-disabled');
            $html.removeClass('language-names-disabled');
            $html.addClass('language-flags-enabled');
            $html.addClass('language-names-enabled');
          }

          positionPopoverMenu('.js-toggle-menu-language', '.js-menu-language-popover');
          this.setPosition();
        },

        commit: function(data) {
          siteData.set('settings_language_menu', data);
        }
      });
    });
  };

  // ===========================================================================
  // Toggles product categories visibility in main menu.
  // ===========================================================================
  var bindRootItemSettings = function(rootItemValuesObj) {
    if (!('show_product_related_pages_in_main_menu' in rootItemValuesObj)) {
      rootItemValuesObj.show_product_related_pages_in_main_menu = false;
    }

    $('.js-root-item-settings-toggle').each(function(index, languageMenuSettingsButton) {
      var rootItemSettingsEditor = new Edicy.SettingsEditor(languageMenuSettingsButton, {
        menuItems: [
          {
            "titleI18n": "show_in_main_menu",
            "type": "checkbox",
            "key": "show_product_related_pages_in_main_menu",
            "states": {
              "on": true,
              "off": false
            }
          }
        ],

        buttonTitleI18n: "settings",

        values: rootItemValuesObj,

        containerClass: ['js-root-item-settings-popover', 'js-prevent-sideclick'],

        preview: function(data) {
          if (!data.show_product_related_pages_in_main_menu === true) {
            $('.js-menu-item-products').addClass('is-hidden');
          } else {
            $('.js-menu-item-products').removeClass('is-hidden');
          }

          // TODO: Find out why it doesn't work in some edge cases.
          setHeaderMenuInitialWidth();
          setHeaderMenuMode();
        },

        commit: function(data) {
          siteData.set('settings_root_item', data);
        }
      });
    });
  };

  // ===========================================================================
  // Binds site search functionality.
  // ===========================================================================
  var bindSiteSearch = function(searchForm, languageCode, noResultsString) {
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
        updateOnKeypress: true,
        // String for feedback if no results are found.
        noResults: noResultsString
      });
    }
  };

  var bindCustomTexteditorStyles = function(buttonTranslation) {
    window.edy = window.edy || [];
    edy.push(['texteditorStyles', {name: buttonTranslation, tagname:'a', attribute: {'href': '#'}, classname: 'custom-btn', toggle: true}]);
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

  var setImageOrientation = function($contentItemBox, width, height) {
    var $imgDropAreaTarget = $contentItemBox.find('.js-content-item-img-drop-area'),
        $cropToggleButton = $contentItemBox.find('.js-toggle-crop-state');

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

  var setItemImage = function($contentItemBox, $imgDropArea, itemId, imageId, itemType) {
    var apiType = itemType === 'article' ? 'articles' : 'pages',
        itemData = new Edicy.CustomData({
          type: itemType,
          id: itemId
        });

    $.ajax({
       type: 'PATCH',
       contentType: 'application/json',
       url: '/admin/api/' + apiType +'/' + itemId,
       data: JSON.stringify({'image_id': imageId}),
       dataType: 'json',
       success: function(data) {
         itemData.set('image_crop_state', 'not-cropped');
         $contentItemBox.removeClass('not-loaded with-error').addClass('is-loaded');
         $contentItemBox.find('.edy-img-drop-area-placeholder').css('opacity', 1);
         $imgDropArea.css('opacity', 1);
       },
       timeout: 30000,
       error: function(data) {
         $contentItemBox.removeClass('not-loaded is-loaded with-error').addClass('with-error');
       }
    });
  };

  // ===========================================================================
  // Binds editmode image drop areas.
  // ===========================================================================
  var bindContentItemImgDropAreas = function(placeholderText) {
    $('.js-content-item-img-drop-area').each(function(index, imgDropAreaTarget) {
      var $imgDropAreaTarget = $(imgDropAreaTarget),
          $contentItemBox = $imgDropAreaTarget.closest('.js-content-item-box'),
          itemId = $contentItemBox.data('item-id'),
          itemType = $contentItemBox.data('item-type'),
          itemData = new Edicy.CustomData({
            type: itemType,
            id: itemId
          });

      var imgDropArea = new Edicy.ImgDropArea($imgDropAreaTarget, {
        positionable: false,
        target_width: 1280,
        placeholder: '<div class="edy-img-drop-area-placeholder">' + placeholderText + '</div>',
        removeBtn: '<div class="edy-img-drop-area-remove-image">' +
                      '<div class="edy-img-drop-area-remove-image-ico">' +
                        '<svg width="16" height="20" viewBox="0 0 26 30" xmlns="http://www.w3.org/2000/svg">' +
                          '<g fill-rule="nonzero" fill="currentColor">' +
                            '<g transform="translate(2 5)">' +
                              '<path d="M0 .997h2V21c0 1 1 2 2 2h14c1 0 2-1 2-2V1h2v20c0 2.25-1.75 4-4 4H4c-2.25 0-4-1.75-4-4V.997z"/>' +
                              '<rect x="10" y="4" width="2" height="16" rx="1"/>' +
                              '<rect x="5" y="4" width="2" height="16" rx="1"/>' +
                              '<rect x="15" y="4" width="2" height="16" rx="1"/>' +
                            '</g>' +
                            '<path d="M26 4v2H0V4h7V2c0-1 1-2 2-2h8c1 0 2 1 2 2v2h7zM9 4h8V3c0-.5-.5-1-1-1h-6c-.5 0-1 .5-1 1v1z"/>' +
                          '</g>' +
                        '</svg>' +
                      '</div>' +
                    '</div>',

        change: function(data) {
          var imageId;

          $imgDropAreaTarget
            .removeClass('is-cropped')
            .addClass('not-cropped')
            .css('opacity', .1)
          ;

          if (data) {
            imageId = data.original_id;

            $contentItemBox
              .removeClass('without-image is-loaded with-error')
              .addClass('with-image not-loaded')
            ;

            setImageOrientation($contentItemBox, data.width, data.height);
          } else {
            imageId = null;

            $contentItemBox
              .removeClass('with-image is-loaded with-error')
              .addClass('without-image not-loaded')
            ;

            $contentItemBox.find('.edy-img-drop-area-placeholder').css('opacity', 0);
          }

          setItemImage($contentItemBox, $imgDropAreaTarget, itemId, imageId, itemType);
        }
      });
    });
  };

  // ===========================================================================
  // Sets functions that will be initiated globally when resizing the browser
  // window.
  // ===========================================================================
  var bindContentItemImageCropToggle = function() {
    $('.js-toggle-crop-state').on('click', function() {
      var $contentItemBox = $(this).closest('.js-content-item-box'),
          $imgDropAreaTarget = $contentItemBox.find('.js-content-item-img-drop-area'),
          itemId = $contentItemBox.data('item-id'),
          itemType = $contentItemBox.data('item-type'),
          itemData = new Edicy.CustomData({
            type: itemType,
            id: itemId
          }),
          imageCropState;

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

      itemData.set('image_crop_state', imageCropState);
    });
  };

  // ===========================================================================
  // Load article cover images only when they are close or appearing in the
  // viewport.
  // ===========================================================================
  var bindContentItemImageLazyload = function() {
    $(document).ready(function() {
      setTimeout(function() {
        $('.js-content-item-box').addClass('not-loaded');
      }, 3000);
    });

    $('.js-lazyload').lazyload({
      threshold : 500,
      effect : "fadeIn",
      placeholder: 'data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==',

      load: function() {
        var $contentItemBox = $(this).closest('.js-content-item-box');

        $contentItemBox.removeClass('not-loaded with-error').addClass('is-loaded');

        setTimeout(function() {
          $contentItemBox.removeClass('not-loaded with-error');
          $contentItemBox.find('.js-loader').remove();
        }, 3000);
      }
    });
  };

  // ===========================================================================
  // Prevent menu main item link visiting if item has sub pages.
  // ===========================================================================
  var preventMenuMainLinkTouchInit = function() {
    $('.js-prevent-link-click > a').on('touchstart', function(event) {
      if (headerMenuWide() && $(this).parent().find('.js-menu-sub').length > 0) {
        event.preventDefault();
      }
    });
  };

  // ===========================================================================
  // Change product image position on narrower screens (mobile devices)
  // ===========================================================================

  var handleProductPageContent = function () {
    $(document).ready(function () {
      changeProductImagePos();
    });

    $(window).resize(debounce(function () {
      changeProductImagePos();
    }, 25));

    var changeProductImagePos = function () {
      var productGallery = $('.js-product-gallery');
      var productImageContentBox = $('.js-content-item-box');
      var productRightContent = $('.js-product-right-content');

      if ($('.js-buy-btn-content .edy-buy-button-container').length >= 1) {
        if ($(window).width() < 640) {
          if ($('.js-product-right-content + .js-product-gallery').length === 0) {
            productRightContent.append(productGallery);
          }
        } else {
          if ($('.js-content-item-box + .js-product-gallery').length === 0) {
            productImageContentBox.parent().append(productGallery);
          }
        }
      }
    }
  };

  // ===========================================================================
  // Detects design editor changes.
  // ===========================================================================
  var detectDesignEditorChanges = function() {
    document.addEventListener('edicy:customstyles:change', function(event) {
      var relevantVariables = [
        '--wrap-max-width',
        '--main-font-family',
        '--header-body-font-size',
        '--header-body-font-weight',
        '--header-body-font-style',
        '--header-body-text-decoration',
        '--header-body-text-transform',
        '--menu-main-font-size',
        '--menu-main-font-weight',
        '--menu-main-font-style',
        '--menu-main-text-decoration',
        '--menu-main-text-transform'
      ];

      var relevantVariableChanged = Object.keys(event.detail.changes).filter(function(variable) {
       return relevantVariables.indexOf(variable) > -1;
      }).length > 0;

      if (relevantVariableChanged) {
        setHeaderMenuMode();
      }
    });
  };

  // ===========================================================================
  // Sets functions that will be initiated globally when resizing the browser
  // window.
  // ===========================================================================
  var initWindowResize = function() {
    $(window).resize(debounce(function() {
      setHeaderMenuMode();

      if (languageMenuPopoverOpen()) {
        positionPopoverMenu('.js-toggle-menu-language', '.js-menu-language-popover');
      }
    }, 25));
  };

  // ===========================================================================
  // Sets functions that will be initiated on items list layouts.
  // ===========================================================================
  var initItemsPage = function() {
    if (!editmode()) {
      bindContentItemImageLazyload();
    }
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
    preventMenuMainLinkTouchInit();
    detectDesignEditorChanges();

    if (!Modernizr.flexbox && editmode()) {
      bindFallbackHeaderContentAreaWidthCalculation();
      bindFallbackFooterContentAreaWidthCalculation();
     }

     if (editmode()) {
       bindHeaderTitleChange();
     } else {
       wrapContentAreaTables();
     }
  };

  // Enables the usage of the initiations outside this file.
  window.template = $.extend(window.template || {}, {
    // Initiations for layouts.
    initItemsPage: initItemsPage,
    // initArticlePage: initArticlePage,
    // initCommonPage: initCommonPage,
    // initFrontPage: initFrontPage,

    // Initiations for specific functions.
    bindLanguageMenuSettings: bindLanguageMenuSettings,
    bindRootItemSettings: bindRootItemSettings,
    bindSiteSearch: bindSiteSearch,
    bindContentItemImgDropAreas: bindContentItemImgDropAreas,
    bindContentItemImageCropToggle: bindContentItemImageCropToggle,
    bindCustomTexteditorStyles: bindCustomTexteditorStyles,
    handleProductPageContent: handleProductPageContent
  });

  // ===========================================================================
  // Initiates global functions.
  // ===========================================================================
  initWindowResize();
  init();
})(jQuery);
