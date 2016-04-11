{% comment %}Template custom styles definitions.{% endcomment %}
<style data-voog-style>
:root {
  /* VoogStyle
    "path": ["Button", "Normal"],
    "title": "Padding",
    "editor": "rangePicker",
    "min": 0,
    "max": 200,
    "step": 1,
    "unit": "px",
    "scope": "global"
  */
  --global-content-button-padding: 20;
  /* VoogStyle
    "path": ["Button", "Normal"],
    "title": "Font",
    "editor": "listPicker",
    "list": {{ base_font_set }},
    "featured": true,
    "scope": "global"
  */
  --global-content-button-font-family: "Avenir Next", "Helvetica Neue", "Helvetica", "Segoe UI", sans-serif;
  /* VoogStyle
    "path": ["Button", "Normal"],
    "title": "Character spacing",
    "editor": "rangePicker",
    "min": 0,
    "max": 5,
    "step": 0.1,
    "unit": "em",
    "scope": "global"
  */
  --global-content-button-letter-spacing: 0;
  /* VoogStyle
    "path": ["Button", "Normal"],
    "title": "Line height",
    "editor": "rangePicker",
    "min": 1,
    "max": 5,
    "step": 0.1,
    "unit": "",
    "scope": "global"
  */
  --global-content-button-line-height: 1.3;
  /* VoogStyle
    "path": ["Button", "Normal"],
    "title": "Background color",
    "editor": "colorPicker",
    "scope": "global",
    "boundVariables": [
      "--global-content-button-hover-background-color"
    ]
  */
  --global-content-button-background-color: transparent;
  /* VoogStyle
    "path": ["Button", "Hover"],
    "title": "Background color",
    "editor": "colorPicker",
    "scope": "global"
  */
  --global-content-button-hover-background-color: transparent;
  /* VoogStyle
    "path": ["Button", "Normal"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "featured": true,
    "scope": "global",
    "boundVariables": [
      "--global-content-button-hover-font-size"
    ]
  */
  --global-content-button-font-size: 18px;
  /* VoogStyle
    "path": ["Button", "Hover"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global"
  */
  --global-content-button-hover-font-size: 18px;
  /* VoogStyle
    "path": ["Button", "Normal"],
    "title": "Font size",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "600",
      "off": "400"
    },
    "icon": "bold",
    "scope": "global",
    "boundVariables": [
      "--global-content-button-hover-font-weight"
    ]
  */
  --global-content-button-font-weight: 400;
  /* VoogStyle
    "path": ["Button", "Hover"],
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
  --global-content-button-hover-font-weight: 400;
  /* VoogStyle
    "path": ["Button", "Normal"],
    "title": "Font style",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "italic",
      "off": "normal"
    },
    "icon": "italic",
    "scope": "global",
    "boundVariables": [
      "--global-content-button-hover-font-style"
    ]
  */
  --global-content-button-font-style: normal;
  /* VoogStyle
    "path": ["Button", "Hover"],
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
  --global-content-button-hover-font-style: normal;
  /* VoogStyle
    "path": ["Button", "Normal"],
    "title": "Text decoration",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "underline",
      "off": "none"
    },
    "icon": "underline",
    "scope": "global",
    "boundVariables": [
      "--global-content-button-hover-text-decoration"
    ]
  */
  --global-content-button-text-decoration: none;
  /* VoogStyle
    "path": ["Button", "Hover"],
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
  --global-content-button-hover-text-decoration: none;
  /* VoogStyle
    "path": ["Button", "Normal"],
    "title": "Text transform",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "uppercase",
      "off": "none"
    },
    "icon": "uppercase",
    "scope": "global",
    "boundVariables": [
      "--global-content-button-hover-text-transform"
    ]
  */
  --global-content-button-text-transform: none;
  /* VoogStyle
    "path": ["Button", "Hover"],
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
  --global-content-button-hover-text-transform: none;
  /* VoogStyle
    "path": ["Button", "Normal"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "featured": true,
    "scope": "global",
    "boundVariables": [
      "--global-content-button-hover-color"
    ]
  */
  --global-content-button-color: black;
  /* VoogStyle
    "path": ["Button", "Hover"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global"
  */
  --global-content-button-hover-color: black;
}

</style>
