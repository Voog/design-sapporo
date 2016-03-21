{% comment %}
================================================================================
TEMPLATE TOOLS RELATED JAVASCRIPT.
Adds template specific JS tools.
================================================================================
{% endcomment %}
{% editorjsblock %}
  <!-- <script src='{{ site.static_asset_host }}/libs/edicy-tools/latest/edicy-tools.js'></script> -->
  <script src="/assets/edicy-tools/edicy-tools.js"></script>


  <script>
    //==========================================================================
    // Initiates the language flags state toggleing.
    //==========================================================================
    template.bindLanguageFlagsToggle();
  </script>
{% endeditorjsblock %}
