{% comment %}Template custom styles definitions.{% endcomment %}
<style data-voog-style>
:root {
  /* VoogStyle
    "path": ["Table"],
    "title": "Padding",
    "editor": "rangePicker",
    "min": 0,
    "max": 200,
    "step": 1,
    "unit": "px",
    "scope": "global"
  */
  --global-table-padding: 10px;
  /* VoogStyle
    "path": ["Table"],
    "title": "Font",
    "editor": "listPicker",
    "list": {{ base_font_set }},
    "scope": "global"
  */
  --global-table-font-family: "Avenir Next", "Helvetica Neue", "Helvetica", "Segoe UI", sans-serif;
  /* VoogStyle
    "path": ["Table"],
    "title": "Character spacing",
    "editor": "rangePicker",
    "min": 0,
    "max": 5,
    "step": 0.1,
    "unit": "em",
    "scope": "global"
  */
  --global-table-letter-spacing: 0;
  /* VoogStyle
    "path": ["Table"],
    "title": "Line height",
    "editor": "rangePicker",
    "min": 1,
    "max": 5,
    "step": 0.1,
    "unit": "",
    "scope": "global"
  */
  --global-table-line-height: 1.3;
  /* VoogStyle
    "path": ["Table"],
    "title": "Border thickness",
    "editor": "rangePicker",
    "min": 1,
    "max": 10,
    "step": 1,
    "unit": "px",
    "featured": true,
    "scope": "global"
  */
  --global-table-border-width: 1px;
  /* VoogStyle
    "path": ["Table"],
    "title": "Border style",
    "editor": "listPicker",
    "list": [
      {
        "title": "Solid",
        "value": "solid"
      },
      {
        "title": "Dotted",
        "value": "dotted"
      },
      {
        "title": "Dashed",
        "value": "dashed"
      },
      {
        "title": "Double",
        "value": "double"
      },
      {
        "title": "Groove",
        "value": "groove"
      },
      {
        "title": "Ridge",
        "value": "ridge"
      },
      {
        "title": "Inset",
        "value": "inset"
      },
      {
        "title": "Outset",
        "value": "outset"
      },
      {
        "title": "None",
        "value": "hidden"
      }
    ],
    "featured": true,
    "scope": "global"
  */
  --global-table-border-style: solid;
  /* VoogStyle
    "path": ["Table"],
    "title": "Border color",
    "editor": "colorPicker",
    "featured": true,
    "scope": "global"
  */
  --global-table-border-color: #d2d2d2;
  /* VoogStyle
    "path": ["Table"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global"
  */
  --global-table-font-size: 18px;
  /* VoogStyle
    "path": ["Table"],
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
  --global-table-font-weight: 400;
  /* VoogStyle
    "path": ["Table"],
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
  --global-table-font-style: normal;
  /* VoogStyle
    "path": ["Table"],
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
  --global-table-text-decoration: none;
  /* VoogStyle
    "path": ["Table"],
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
  --global-table-text-transform: none;
  /* VoogStyle
    "path": ["Table"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global"
  */
  --global-table-color: rgba(0, 0, 0, 0.8);
}

</style>
