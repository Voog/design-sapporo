{% comment %}Template custom styles definitions.{% endcomment %}
<style data-voog-style>
:root {
  /* VoogStyle
    "path": ["List"],
    "title": "Font",
    "editor": "listPicker",
    "list": {{ base_font_set }},
    "featured": true,
    "scope": "global"
  */
  --global-list-font-family: "Avenir Next", "Helvetica Neue", "Helvetica", "Segoe UI", sans-serif;
  /* VoogStyle
    "path": ["List"],
    "title": "Character spacing",
    "editor": "rangePicker",
    "min": 0,
    "max": 5,
    "step": 0.1,
    "unit": "em",
    "scope": "global"
  */
  --global-list-letter-spacing: 0;
  /* VoogStyle
    "path": ["List"],
    "title": "Line height",
    "editor": "rangePicker",
    "min": 1,
    "max": 5,
    "step": 0.1,
    "unit": "",
    "scope": "global"
  */
  --global-list-line-height: 1.3;
  /* VoogStyle
    "path": ["List"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "featured": true,
    "scope": "global"
  */
  --global-list-font-size: 18px;
  /* VoogStyle
    "path": ["List"],
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
  --global-list-font-weight: 400;
  /* VoogStyle
    "path": ["List"],
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
  --global-list-font-style: normal;
  /* VoogStyle
    "path": ["List"],
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
  --global-list-text-decoration: none;
  /* VoogStyle
    "path": ["List"],
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
  --global-list-text-transform: none;
  /* VoogStyle
    "path": ["List"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "featured": true,
    "scope": "global"
  */
  --global-list-color: rgba(0, 0, 0, 0.8);
}

</style>
