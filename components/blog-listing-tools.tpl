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
      var $blogArticle = $(imgDropArea).closest('.blog-article');
      var blogArticleId = $blogArticle.data('article-id');
      var articleData = new Edicy.CustomData({
        type: 'article',
        id: blogArticleId
      });

      var imgDropArea = new Edicy.ImgDropArea($(imgDropArea), {
        positionable: false,
        target_width: 1280,

        change: function(data) {
          var saveObj = {};
          saveObj['image'] = data || '';
          articleData.set(saveObj);
        }
      });
    });
  </script>
{% endeditorjsblock %}
