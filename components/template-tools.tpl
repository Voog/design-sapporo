{% comment %}
================================================================================
TEMPLATE TOOLS RELATED JAVASCRIPT.
Adds template specific JS tools.
================================================================================
{% endcomment %}
{% editorjsblock %}
  {% comment %}TODO: Replace with 'latest' before live.{% endcomment %}
  <script src="{{ site.static_asset_host }}/libs/edicy-tools/1.1.3/edicy-tools.js"></script>

  <script>
    //==========================================================================
    // Initiates the language flags state toggleing.
    //==========================================================================
    template.bindLanguageFlagsToggle();
  </script>
{% endeditorjsblock %}
