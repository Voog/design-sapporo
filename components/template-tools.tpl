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
    // Initiates the language flags state toggleing.
    //==========================================================================
    template.bindLanguageFlagsToggle();
    template.bindLanguageNamesToggle();
    template.bindLanguageMenuModeToggle();

    //==========================================================================
    // Binds custom styles under wysihtml editor.
    //==========================================================================
    template.bindCustomTexteditorStyles('{{ "button" | lc: editor_locale }}');
  </script>
{% endeditorjsblock %}
