{% comment %}Template custom styles definitions.{% endcomment %}
<style data-voog-style>
:root {
  /* VoogStyle
    "path": ["Content"],
    "title": "Maximum width",
    "editor": "rangePicker",
    "min": 100,
    "max": 2000,
    "step": 1,
    "unit": "px",
    "scope": "global"
  */
  --global-content-max-width: 700px;
  /* VoogStyle
    "path": ["Content"],
    "title": "Padding",
    "editor": "rangePicker",
    "min": 0,
    "max": 200,
    "step": 1,
    "unit": "px",
    "scope": "global"
  */
  --global-content-padding: 0;
  /* VoogStyle
    "path": ["Content"],
    "title": "Background color",
    "editor": "colorPicker",
    "scope": "global"
  */
  --global-content-background-color: transparent;
  /* VoogStyle
    "path": ["Content", "Text"],
    "title": "Font",
    "editor": "listPicker",
    "list": {{ base_font_set }},
    "featured": true,
    "scope": "global"
  */
  --global-content-body-font-family: "Avenir Next", "Helvetica Neue", "Helvetica", "Segoe UI", sans-serif;
  /* VoogStyle
    "path": ["Content", "Text"],
    "title": "Character spacing",
    "editor": "rangePicker",
    "min": 0,
    "max": 5,
    "step": 0.1,
    "unit": "em",
    "scope": "global"
  */
  --global-content-body-letter-spacing: 0;
  /* VoogStyle
    "path": ["Content", "Text"],
    "title": "Line height",
    "editor": "rangePicker",
    "min": 1,
    "max": 5,
    "step": 0.1,
    "unit": "",
    "scope": "global"
  */
  --global-content-body-line-height: 1.3;
  /* VoogStyle
    "path": ["Content", "Text"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "featured": true,
    "scope": "global"
  */
  --global-content-body-font-size: 18px;
  /* VoogStyle
    "path": ["Content", "Text"],
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
  --global-content-body-font-weight: 400;
  /* VoogStyle
    "path": ["Content", "Text"],
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
  --global-content-body-font-style: normal;
  /* VoogStyle
    "path": ["Content", "Text"],
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
  --global-content-body-text-decoration: none;
  /* VoogStyle
    "path": ["Content", "Text"],
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
  --global-content-body-text-transform: none;
  /* VoogStyle
    "path": ["Content", "Text"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "featured": true,
    "scope": "global"
  */
  --global-content-body-color: rgba(0, 0, 0, 0.8);
  /* VoogStyle
    "path": ["Content", "Link", "Normal"],
    "title": "Padding",
    "editor": "rangePicker",
    "min": 0,
    "max": 200,
    "step": 1,
    "unit": "px",
    "scope": "global"
  */
  --global-content-link-padding: 0;
  /* VoogStyle
    "path": ["Content", "Link", "Normal"],
    "title": "Font",
    "editor": "listPicker",
    "list": {{ base_font_set }},
    "featured": true,
    "scope": "global"
  */
  --global-content-link-font-family: "Avenir Next", "Helvetica Neue", "Helvetica", "Segoe UI", sans-serif;
  /* VoogStyle
    "path": ["Content", "Link", "Normal"],
    "title": "Character spacing",
    "editor": "rangePicker",
    "min": 0,
    "max": 5,
    "step": 0.1,
    "unit": "em",
    "scope": "global"
  */
  --global-content-link-letter-spacing: 0;
  /* VoogStyle
    "path": ["Content", "Link", "Normal"],
    "title": "Line height",
    "editor": "rangePicker",
    "min": 1,
    "max": 5,
    "step": 0.1,
    "unit": "",
    "scope": "global"
  */
  --global-content-link-line-height: 1.3;
  /* VoogStyle
    "path": ["Content", "Link", "Normal"],
    "title": "Background color",
    "editor": "colorPicker",
    "scope": "global",
    "boundVariables": [
      "--global-content-link-hover-background-color"
    ]
  */
  --global-content-link-background-color: transparent;
  /* VoogStyle
    "path": ["Content", "Link", "Hover"],
    "title": "Background color",
    "editor": "colorPicker",
    "scope": "global"
  */
  --global-content-link-hover-background-color: transparent;
  /* VoogStyle
    "path": ["Content", "Link", "Normal"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "featured": true,
    "scope": "global",
    "boundVariables": [
      "--global-content-link-hover-font-size"
    ]
  */
  --global-content-link-font-size: 18px;
  /* VoogStyle
    "path": ["Content", "Link", "Hover"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global"
  */
  --global-content-link-hover-font-size: 18px;
  /* VoogStyle
    "path": ["Content", "Link", "Normal"],
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
      "--global-content-link-hover-font-weight"
    ]
  */
  --global-content-link-font-weight: 400;
  /* VoogStyle
    "path": ["Content", "Link", "Hover"],
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
  --global-content-link-hover-font-weight: 400;
  /* VoogStyle
    "path": ["Content", "Link", "Normal"],
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
      "--global-content-link-hover-font-style"
    ]
  */
  --global-content-link-font-style: normal;
  /* VoogStyle
    "path": ["Content", "Link", "Hover"],
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
  --global-content-link-hover-font-style: normal;
  /* VoogStyle
    "path": ["Content", "Link", "Normal"],
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
      "--global-content-link-hover-text-decoration"
    ]
  */
  --global-content-link-text-decoration: none;
  /* VoogStyle
    "path": ["Content", "Link", "Hover"],
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
  --global-content-link-hover-text-decoration: none;
  /* VoogStyle
    "path": ["Content", "Link", "Normal"],
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
      "--global-content-link-hover-text-transform"
    ]
  */
  --global-content-link-text-transform: none;
  /* VoogStyle
    "path": ["Content", "Link", "Hover"],
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
  --global-content-link-hover-text-transform: none;
  /* VoogStyle
    "path": ["Content", "Link", "Normal"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "featured": true,
    "scope": "global",
    "boundVariables": [
      "--global-content-link-hover-color"
    ]
  */
  --global-content-link-color: black;
  /* VoogStyle
    "path": ["Content", "Link", "Hover"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global"
  */
  --global-content-link-hover-color: black;
  /* VoogStyle
    "path": ["Content", "Button", "Normal"],
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
    "path": ["Content", "Button", "Normal"],
    "title": "Font",
    "editor": "listPicker",
    "list": {{ base_font_set }},
    "featured": true,
    "scope": "global"
  */
  --global-content-button-font-family: "Avenir Next", "Helvetica Neue", "Helvetica", "Segoe UI", sans-serif;
  /* VoogStyle
    "path": ["Content", "Button", "Normal"],
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
    "path": ["Content", "Button", "Normal"],
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
    "path": ["Content", "Button", "Normal"],
    "title": "Background color",
    "editor": "colorPicker",
    "scope": "global",
    "boundVariables": [
      "--global-content-button-hover-background-color"
    ]
  */
  --global-content-button-background-color: transparent;
  /* VoogStyle
    "path": ["Content", "Button", "Hover"],
    "title": "Background color",
    "editor": "colorPicker",
    "scope": "global"
  */
  --global-content-button-hover-background-color: transparent;
  /* VoogStyle
    "path": ["Content", "Button", "Normal"],
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
    "path": ["Content", "Button", "Hover"],
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
    "path": ["Content", "Button", "Normal"],
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
    "path": ["Content", "Button", "Hover"],
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
    "path": ["Content", "Button", "Normal"],
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
    "path": ["Content", "Button", "Hover"],
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
    "path": ["Content", "Button", "Normal"],
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
    "path": ["Content", "Button", "Hover"],
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
    "path": ["Content", "Button", "Normal"],
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
    "path": ["Content", "Button", "Hover"],
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
    "path": ["Content", "Button", "Normal"],
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
    "path": ["Content", "Button", "Hover"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global"
  */
  --global-content-button-hover-color: black;
}

</style>
