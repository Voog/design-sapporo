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
  --global-background-color: rgba(0, 0, 0, 0.02);
  /* VoogStyle
    "path": ["Main Styles"],
    "title": "Page padding",
    "editor": "rangePicker",
    "min": 20,
    "max": 100,
    "unit": "px",
    "scope": "global"
  */
  --global-padding: 20;
  /* VoogStyle
    "path": ["Main Styles"],
    "title": "Page alignment",
    "editor": "listPicker",
    "list": [
      { "title": "Left", "value": "left" },
      { "title": "Center", "value": "center" },
      { "title": "Right", "value": "right" }
    ],
    "scope": "global"
  */
  --global-alignment: left;
}

body {
  background-color: var(--global-background-color);
}

.wrap {
  padding-right: var(--global-padding);
  padding-left: var(--global-padding);
}

.content-header .content-area,
.content-body .content-area {
  text-align: var(--global-alignment);
}
</style>

{{ site.style_tag }}