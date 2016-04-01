{% comment %}
================================================================================
TEMPLATE DESIGN EDITOR STYLES.
Adds template design editor style overrides.
================================================================================
{% endcomment %}
<style data-voog-style>
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
  /* VoogStyle
    "path": ["Main Styles", "Links", "Normal"],
    "title": "Padding",
    "editor": "rangePicker",
    "min": 0,
    "max": 50,
    "unit": "px",
    "scope": "global"
  */
  --global-link-padding: 0;
  /* VoogStyle
    "path": ["Main Styles", "Links", "Normal"],
    "title": "Character spacing",
    "editor": "rangePicker",
    "min": 0,
    "max": 50,
    "unit": "px",
    "scope": "global"
  */
  --global-link-letter-spacing: 0;
  /* VoogStyle
    "path": ["Main Styles", "Links", "Normal"],
    "title": "Line height",
    "editor": "rangePicker",
    "min": 1,
    "max": 5,
    "unit": "",
    "scope": "global"
  */
  --global-link-line-height: 1.7;
  /* VoogStyle
    "path": ["Main Styles", "Links", "Normal"],
    "title": "Font size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global",
    "boundVariables": ["--global-link-hover-font-size"]
  */
  --global-link-font-size: 18px;
  /* VoogStyle
    "path": ["Main Styles", "Links", "Hover"],
    "title": "Font size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global"
  */
  --global-link-hover-font-size: 18px;
  /* VoogStyle
    "path": ["Main Styles", "Links", "Normal"],
    "title": "Font size",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "600",
      "off": "400"
    },
    "icon": "bold",
    "scope": "global",
    "boundVariables": ["--global-link-font-hover-weight"]
  */
  --global-link-font-weight: 400;
  /* VoogStyle
    "path": ["Main Styles", "Links", "Hover"],
    "title": "Font size",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "600",
      "off": "400"
    },
    "icon": "bold",
    "scope": "global"
  */
  --global-link-font-hover-weight: 400;
  /* VoogStyle
    "path": ["Main Styles", "Links", "Normal"],
    "title": "Font style",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "italic",
      "off": "normal"
    },
    "icon": "italic",
    "scope": "global",
    "boundVariables": ["--global-link-hover-font-style"]
  */
  --global-link-font-style: normal;
  /* VoogStyle
    "path": ["Main Styles", "Links", "Hover"],
    "title": "Font style",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "italic",
      "off": "normal"
    },
    "icon": "italic",
    "scope": "global"
  */
  --global-link-hover-font-style: normal;
  /* VoogStyle
    "path": ["Main Styles", "Links", "Normal"],
    "title": "Text decoration",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "underline",
      "off": "none"
    },
    "icon": "underline",
    "scope": "global",
    "boundVariables": ["--global-link-hover-text-decoration"]
  */
  --global-link-text-decoration: none;
  /* VoogStyle
    "path": ["Main Styles", "Links", "Hover"],
    "title": "Text decoration",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "underline",
      "off": "none"
    },
    "icon": "underline",
    "scope": "global"
  */
  --global-link-hover-text-decoration: none;
  /* VoogStyle
    "path": ["Main Styles", "Links", "Normal"],
    "title": "Text transform",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "uppercase",
      "off": "none"
    },
    "icon": "uppercase",
    "scope": "global",
    "boundVariables": ["--global-link-hover-text-transform"]
  */
  --global-link-text-transform: none;
  /* VoogStyle
    "path": ["Main Styles", "Links", "Hover"],
    "title": "Text transform",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "uppercase",
      "off": "none"
    },
    "icon": "uppercase",
    "scope": "global"
  */
  --global-link-hover-text-transform: none;
  /* VoogStyle
    "path": ["Main Styles", "Links", "Normal"],
    "title": "Text transform",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global",
    "boundVariables": ["--global-link-hover-color"]
  */
  --global-link-color: black;
  /* VoogStyle
    "path": ["Main Styles", "Links", "Hover"],
    "title": "Text transform",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global"
  */
  --global-link-hover-color: rgba(0, 0, 0, 0.8);
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

.page-content .content-area a, .site-footer .content-area a {
  padding-right: var(--global-link-padding);
  padding-left: var(--global-link-padding);
  font-size: var(--global-link-font-size);
  font-style: var(--global-link-font-style);
  font-weight: var(--global-link-font-weight);
  line-height: var(--global-link-line-height);
  letter-spacing: var(--global-link-letter-spacing);
  color: var(--global-link-color);
  text-decoration: var(--global-link-text-decoration);
  text-transform: var(--global-link-text-transform);
}
.page-content .content-area a:hover, .site-footer .content-area a:hover {
  font-size: var(--global-link-hover-font-size);
  font-style: var(--global-link-hover-font-style);
  font-weight: var(--global-link-font-hover-weight);
  color: var(--global-link-hover-color);
  text-decoration: var(--global-link-hover-text-decoration);
  text-transform: var(--global-link-hover-text-transform);
}
</style>

{{ site.style_tag }}</style>

{{ site.style_tag }}