{% comment %}
================================================================================
ARTICLE TOOLS RELATED JAVASCRIPT.
Adds article specific JS tools.
================================================================================
{% endcomment %}

{% editorjsblock %}
  <script>
    template.bindBgPickers();
    template.bindImgDropAreas('{{ "drag_picture_here" | lc }}');
    template.bindArticleImageCropToggle();
  </script>
{% endeditorjsblock %}
