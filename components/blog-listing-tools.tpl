{% comment %}
================================================================================
ARTICLE TOOLS RELATED JAVASCRIPT.
Adds article specific JS tools.
================================================================================
{% endcomment %}

{% editorjsblock %}
  <script src='{{ site.static_asset_host }}/libs/edicy-tools/latest/edicy-tools.js'></script>

  <script>
    $('.js-image-drop-area').each(function(index, imgDropArea) {
      //==========================================================================
      // Sets the variable for saving article custom data.
      //==========================================================================
      var articleData = new Edicy.CustomData({
        type: 'article',
        id: $(imgDropArea).closest('.blog-article').data('article-id')
      });

      var imgDropArea = new Edicy.ImgDropArea($(imgDropArea), {
        positionable: false,
        target_width: 1280,
        removeBtn: '',

        change: function(data) {
          var saveObj = {},
              $currentArticle = $(imgDropArea.$el.get(0).closest('.js-blog-article')),
              $currentImageDropArea = $currentArticle.find('.js-image-drop-area');

          saveObj['image'] = data || '';

          if (saveObj['image'] === '') {
            $currentArticle
              .addClass('without-image')
              .removeClass('with-image')
            ;
          } else {
            $currentArticle
              .addClass('with-image')
              .removeClass('without-image')
            ;

            $currentImageDropArea
              .removeClass('is-cropped')
              .addClass('not-cropped')
            ;
          }

          articleData.set(saveObj);
          articleData.set('image_crop_state', 'not-cropped');
        }
      });
    });

    site.bindArticleImageCropToggle();
  </script>
{% endeditorjsblock %}
