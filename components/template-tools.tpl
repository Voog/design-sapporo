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
    var valuesObj;
    
    {%if site.data.settings_language_menu %}
      valuesObj = {{ site.data.settings_language_menu | json }};
    {% else %}
      valuesObj = {};
    {% endif %};
    
    template.bindLanguageMenuSettings(valuesObj);

    //==========================================================================
    // Binds custom styles under wysihtml editor.
    //==========================================================================
    template.bindCustomTexteditorStyles('{{ "button" | lc: editor_locale }}');
  </script>
{% endeditorjsblock %}
