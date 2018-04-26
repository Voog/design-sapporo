{% comment %}
================================================================================
TEMPLATE TOOLS RELATED JAVASCRIPT.
Adds template specific JS tools.
================================================================================
{% endcomment %}
{% editorjsblock %}
  <script src="{{ site.static_asset_host }}/libs/edicy-tools/latest/edicy-tools.js"></script>

  <script>
    //==========================================================================
    // Sets the variable for saving global custom data.
    //==========================================================================
    var siteData = new Edicy.CustomData({
      type: 'site'
    });

    //==========================================================================
    // Initiates the language menu mode toggleing popover.
    //==========================================================================
    {%if site.data.settings_language_menu %}
      languageMenuValuesObj = {{ site.data.settings_language_menu | json }};
    {% else %}
      languageMenuValuesObj = {};
    {% endif %};

    template.bindLanguageMenuSettings(languageMenuValuesObj);

    {% if items_page %}
      template.bindContentItemImgDropAreas('{{ "drag_picture_for_product_here" | lc: editor_locale | escape }}');
      template.bindContentItemImageCropToggle();

      {%if site.data.settings_root_item %}
        rootItemValuesObj = {{ site.data.settings_root_item | json }};
      {% else %}
        rootItemValuesObj = {};
      {% endif %};

      template.bindRootItemSettings(rootItemValuesObj);
    {% endif %}

    //==========================================================================
    // Binds custom styles under wysihtml editor.
    //==========================================================================
    template.bindCustomTexteditorStyles('{{ "button" | lc: editor_locale | escape }}');
  </script>
{% endeditorjsblock %}
