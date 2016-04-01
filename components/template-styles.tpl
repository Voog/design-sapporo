{% comment %}
================================================================================
TEMPLATE DESIGN EDITOR STYLES.
Adds template design editor style overrides.
================================================================================
{% endcomment %}
<style data-voog-style>
:root {
  /* VoogStyle
     "path": ["Main Styles"],
     "title": "Bg color",
     "editor": "colorPicker",
     "scope": "global"
  */
  --site-background-color: rgba(0, 0, 0, 0.02);
  /* VoogStyle
     "path": ["Main Styles"],
     "title": "Site padding",
     "editor": "rangePicker",
     "scope": "global"
  */
  --site-padding: 10px;
}

body {
  background-color: var(--site-background-color);
}
</style>

{{ site.style_tag }}