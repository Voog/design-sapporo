{% comment %}
================================================================================
TEMPLATE DESIGN EDITOR VARIABLES.
Adds template design editor style variables.
================================================================================
{% endcomment %}
<style data-voog-style>
:root {
  /* VoogStyle
    "path": ["Main Styles"],
    "title": "Maximum width",
    "editor": "rangePicker",
    "min": 600,
    "max": 2000,
    "step": 1,
    "unit": "px",
    "scope": "global"
  */
  --global-wrap-max-width: 1140px;
  /* VoogStyle
    "path": ["Main Styles"],
    "title": "Padding",
    "editor": "rangePicker",
    "min": 0,
    "max": 200,
    "step": 1,
    "unit": "px",
    "scope": "global"
  */
  --global-wrap-padding: 20px;
  /* VoogStyle
    "path": ["Main Styles"],
    "title": "Font",
    "editor": "listPicker",
    "list": {{ base_font_set }},
    "featured": true,
    "scope": "global",
    "boundVariables": [
      "--global-content-title-font-family",
      "--global-content-heading-font-family",
      "--global-content-subheading-font-family",
      "--global-content-body-font-family"
    ]
  */
  --global-main-font-family: "Avenir Next", "Helvetica Neue", "Helvetica", "Segoe UI", sans-serif;
  /* VoogStyle
    "path": ["Main Styles", "Colors"],
    "title": "Main color",
    "editor": "colorPicker",
    "featured": true,
    "scope": "global",
    "boundVariables": [
      "--global-content-color",
      "--global-menu-main-color",
      "--global-menu-sub-color",
      "--global-article-box-font-family"
    ]
  */
  --global-main-color: rgba(0, 0, 0, 0.8);
  /* VoogStyle
    "path": ["Main Styles", "Colors"],
    "title": "Secondary color",
    "editor": "colorPicker",
    "featured": true,
    "scope": "global",
    "boundVariables": [
      "--global-content-title-color",
      "--global-content-heading-color",
      "--global-content-subheading-color",
      "--global-content-link-color",
      "--global-footer-link-color"
    ]
  */
  --global-secondary-color: black;
  /* VoogStyle
    "path": ["Main Styles", "Colors"],
    "title": "Background color",
    "editor": "colorPicker",
    "featured": true,
    "scope": "global"
  */
  --global-body-background-color: rgba(0, 0, 0, 0.02);
  /* VoogStyle
    "path": ["Header", "Main menu", "Normal"],
    "title": "Margin",
    "editor": "rangePicker",
    "min": 0,
    "max": 200,
    "step": 1,
    "unit": "px",
    "scope": "global"
  */
  --global-menu-main-margin: 15px;
  /* VoogStyle
    "path": ["Header", "Main menu", "Normal"],
    "title": "Padding",
    "editor": "rangePicker",
    "min": 0,
    "max": 200,
    "step": 1,
    "unit": "px",
    "scope": "global"
  */
  --global-menu-main-padding: 5px;
  /* VoogStyle
    "path": ["Header", "Main menu", "Normal"],
    "title": "Font",
    "editor": "listPicker",
    "list": {{ base_font_set }},
    "featured": true,
    "scope": "global"
  */
  --global-menu-main-font-family: "Avenir Next", "Helvetica Neue", "Helvetica", "Segoe UI", sans-serif;
  /* VoogStyle
    "path": ["Header", "Main menu", "Normal"],
    "title": "Character spacing",
    "editor": "rangePicker",
    "min": 0,
    "max": 5,
    "step": 0.1,
    "unit": "em",
    "scope": "global"
  */
  --global-menu-main-letter-spacing: .2em;
  /* VoogStyle
    "path": ["Header", "Main menu", "Normal"],
    "title": "Line height",
    "editor": "rangePicker",
    "min": 1,
    "max": 5,
    "step": 0.1,
    "unit": "",
    "scope": "global"
  */
  --global-menu-main-line-height: 1.3;
  /* VoogStyle
    "path": ["Header", "Main menu", "Normal"],
    "title": "Opacity",
    "editor": "rangePicker",
    "min": 0.1,
    "max": 1,
    "step": 0.1,
    "unit": "",
    "scope": "global"
  */
  --global-menu-main-opacity: .5;
  /* VoogStyle
    "path": ["Header", "Main menu", "Hover"],
    "title": "Opacity",
    "editor": "rangePicker",
    "min": 0.1,
    "max": 1,
    "step": 0.1,
    "unit": "",
    "scope": "global"
  */
  --global-menu-main-hover-opacity: .75;
  /* VoogStyle
    "path": ["Header", "Main menu", "Active"],
    "title": "Opacity",
    "editor": "rangePicker",
    "min": 0.1,
    "max": 1,
    "step": 0.1,
    "unit": "",
    "scope": "global"
  */
  --global-menu-main-active-opacity: 1;
  /* VoogStyle
    "path": ["Header", "Main menu", "Normal"],
    "title": "Background color",
    "editor": "colorPicker",
    "scope": "global",
    "boundVariables": [
      "--global-menu-main-hover-background-color",
      "--global-menu-main-active-background-color"
    ]
  */
  --global-menu-main-background-color: transparent;
  /* VoogStyle
    "path": ["Header", "Main menu", "Hover"],
    "title": "Background color",
    "editor": "colorPicker",
    "scope": "global",
    "boundVariables": [
      "--global-menu-main-active-background-color"
    ]
  */
  --global-menu-main-hover-background-color: transparent;
  /* VoogStyle
    "path": ["Header", "Main menu", "Active"],
    "title": "Background color",
    "editor": "colorPicker",
    "scope": "global"
  */
  --global-menu-main-active-background-color: transparent;
  /* VoogStyle
    "path": ["Header", "Main menu", "Normal"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "featured": true,
    "scope": "global",
    "boundVariables": [
      "--global-menu-main-hover-font-size",
      "--global-menu-main-active-font-size"
    ]
  */
  --global-menu-main-font-size: 13px;
  /* VoogStyle
    "path": ["Header", "Main menu", "Hover"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global",
    "boundVariables": [
      "--global-menu-main-active-font-size"
    ]
  */
  --global-menu-main-hover-font-size: 13px;
  /* VoogStyle
    "path": ["Header", "Main menu", "Active"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global"
  */
  --global-menu-main-active-font-size: 13px;
  /* VoogStyle
    "path": ["Header", "Main menu", "Normal"],
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
      "--global-menu-main-hover-font-weight",
      "--global-menu-main-active-font-weight"
    ]
  */
  --global-menu-main-font-weight: 400;
  /* VoogStyle
    "path": ["Header", "Main menu", "Hover"],
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
      "--global-menu-main-active-font-weight"
    ]
  */
  --global-menu-main-hover-font-weight: 400;
  /* VoogStyle
    "path": ["Header", "Main menu", "Active"],
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
  --global-menu-main-active-font-weight: 400;
  /* VoogStyle
    "path": ["Header", "Main menu", "Normal"],
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
      "--global-menu-main-hover-font-style",
      "--global-menu-main-active-font-style"
    ]
  */
  --global-menu-main-font-style: normal;
  /* VoogStyle
    "path": ["Header", "Main menu", "Hover"],
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
      "--global-menu-main-active-font-style"
    ]
  */
  --global-menu-main-hover-font-style: normal;
  /* VoogStyle
    "path": ["Header", "Main menu", "Active"],
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
  --global-menu-main-active-font-style: normal;
  /* VoogStyle
    "path": ["Header", "Main menu", "Normal"],
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
      "--global-menu-main-hover-text-decoration",
      "--global-menu-main-active-text-decoration"
    ]
  */
  --global-menu-main-text-decoration: none;
  /* VoogStyle
    "path": ["Header", "Main menu", "Hover"],
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
      "--global-menu-main-active-text-decoration"
    ]
  */
  --global-menu-main-hover-text-decoration: none;
  /* VoogStyle
    "path": ["Header", "Main menu", "Active"],
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
  --global-menu-main-active-text-decoration: none;
  /* VoogStyle
    "path": ["Header", "Main menu", "Normal"],
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
      "--global-menu-main-hover-text-transform",
      "--global-menu-main-active-text-transform"
    ]
  */
  --global-menu-main-text-transform: uppercase;
  /* VoogStyle
    "path": ["Header", "Main menu", "Hover"],
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
      "--global-menu-main-active-text-transform"
    ]
  */
  --global-menu-main-hover-text-transform: uppercase;
  /* VoogStyle
    "path": ["Header", "Main menu", "Active"],
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
  --global-menu-main-active-text-transform: uppercase;
  /* VoogStyle
    "path": ["Header", "Main menu", "Normal"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "featured": true,
    "scope": "global",
    "boundVariables": [
      "--global-menu-main-hover-color",
      "--global-menu-main-active-color"
    ]
  */
  --global-menu-main-color: rgba(0, 0, 0, 0.8);
  /* VoogStyle
    "path": ["Header", "Main menu", "Hover"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global",
    "boundVariables": [
      "--global-menu-main-active-color"
    ]
  */
  --global-menu-main-hover-color: rgba(0, 0, 0, 0.8);
  /* VoogStyle
    "path": ["Header", "Main menu", "Active"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global"
  */
  --global-menu-main-active-color: rgba(0, 0, 0, 0.8);
  /* VoogStyle
    "path": ["Header", "Sub menu", "Normal"],
    "title": "Font",
    "editor": "listPicker",
    "list": {{ base_font_set }},
    "featured": true,
    "scope": "global"
  */
  --global-menu-sub-font-family: "Avenir Next", "Helvetica Neue", "Helvetica", "Segoe UI", sans-serif;
  /* VoogStyle
    "path": ["Header", "Sub menu", "Normal"],
    "title": "Character spacing",
    "editor": "rangePicker",
    "min": 0,
    "max": 5,
    "step": 0.1,
    "unit": "em",
    "scope": "global"
  */
  --global-menu-sub-letter-spacing: 0;
  /* VoogStyle
    "path": ["Header", "Sub menu", "Normal"],
    "title": "Line height",
    "editor": "rangePicker",
    "min": 1,
    "max": 5,
    "step": 0.1,
    "unit": "",
    "scope": "global"
  */
  --global-menu-sub-line-height: 1.4;
  /* VoogStyle
    "path": ["Header", "Sub menu", "Normal"],
    "title": "Opacity",
    "editor": "rangePicker",
    "min": 0.1,
    "max": 1,
    "step": 0.1,
    "unit": "",
    "scope": "global"
  */
  --global-menu-sub-opacity: .5;
  /* VoogStyle
    "path": ["Header", "Sub menu", "Hover"],
    "title": "Opacity",
    "editor": "rangePicker",
    "min": 0.1,
    "max": 1,
    "step": 0.1,
    "unit": "",
    "scope": "global"
  */
  --global-menu-sub-hover-opacity: .75;
  /* VoogStyle
    "path": ["Header", "Sub menu", "Active"],
    "title": "Opacity",
    "editor": "rangePicker",
    "min": 0.1,
    "max": 1,
    "step": 0.1,
    "unit": "",
    "scope": "global"
  */
  --global-menu-sub-active-opacity: 1;
  /* VoogStyle
    "path": ["Header", "Sub menu", "Normal"],
    "title": "Background color",
    "editor": "colorPicker",
    "scope": "global",
    "boundVariables": [
      "--global-menu-sub-hover-background-color",
      "--global-menu-sub-active-background-color"
    ]
  */
  --global-menu-sub-background-color: transparent;
  /* VoogStyle
    "path": ["Header", "Sub menu", "Hover"],
    "title": "Background color",
    "editor": "colorPicker",
    "scope": "global",
    "boundVariables": [
      "--global-menu-sub-active-background-color"
    ]
  */
  --global-menu-sub-hover-background-color: transparent;
  /* VoogStyle
    "path": ["Header", "Sub menu", "Active"],
    "title": "Background color",
    "editor": "colorPicker",
    "scope": "global"
  */
  --global-menu-sub-active-background-color: transparent;
  /* VoogStyle
    "path": ["Header", "Sub menu", "Normal"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "featured": true,
    "scope": "global",
    "boundVariables": [
      "--global-menu-sub-hover-font-size",
      "--global-menu-sub-active-font-size"
    ]
  */
  --global-menu-sub-font-size: 13px;
  /* VoogStyle
    "path": ["Header", "Sub menu", "Hover"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global",
    "boundVariables": [
      "--global-menu-sub-active-font-size"
    ]
  */
  --global-menu-sub-hover-font-size: 13px;
  /* VoogStyle
    "path": ["Header", "Sub menu", "Active"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global"
  */
  --global-menu-sub-active-font-size: 13px;
  /* VoogStyle
    "path": ["Header", "Sub menu", "Normal"],
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
      "--global-menu-sub-hover-font-weight",
      "--global-menu-sub-active-font-weight"
    ]
  */
  --global-menu-sub-font-weight: 400;
  /* VoogStyle
    "path": ["Header", "Sub menu", "Hover"],
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
      "--global-menu-sub-active-font-weight"
    ]
  */
  --global-menu-sub-hover-font-weight: 400;
  /* VoogStyle
    "path": ["Header", "Sub menu", "Active"],
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
  --global-menu-sub-active-font-weight: 400;
  /* VoogStyle
    "path": ["Header", "Sub menu", "Normal"],
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
      "--global-menu-sub-hover-font-style",
      "--global-menu-sub-active-font-style"
    ]
  */
  --global-menu-sub-font-style: normal;
  /* VoogStyle
    "path": ["Header", "Sub menu", "Hover"],
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
      "--global-menu-sub-active-font-style"
    ]
  */
  --global-menu-sub-hover-font-style: normal;
  /* VoogStyle
    "path": ["Header", "Sub menu", "Active"],
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
  --global-menu-sub-active-font-style: normal;
  /* VoogStyle
    "path": ["Header", "Sub menu", "Normal"],
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
      "--global-menu-sub-hover-text-decoration",
      "--global-menu-sub-active-text-decoration"
    ]
  */
  --global-menu-sub-text-decoration: none;
  /* VoogStyle
    "path": ["Header", "Sub menu", "Hover"],
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
      "--global-menu-sub-active-text-decoration"
    ]
  */
  --global-menu-sub-hover-text-decoration: none;
  /* VoogStyle
    "path": ["Header", "Sub menu", "Active"],
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
  --global-menu-sub-active-text-decoration: none;
  /* VoogStyle
    "path": ["Header", "Sub menu", "Normal"],
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
      "--global-menu-sub-hover-text-transform",
      "--global-menu-sub-active-text-transform"
    ]
  */
  --global-menu-sub-text-transform: none;
  /* VoogStyle
    "path": ["Header", "Sub menu", "Hover"],
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
      "--global-menu-sub-active-text-transform"
    ]
  */
  --global-menu-sub-hover-text-transform: none;
  /* VoogStyle
    "path": ["Header", "Sub menu", "Active"],
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
  --global-menu-sub-active-text-transform: none;
  /* VoogStyle
    "path": ["Header", "Sub menu", "Normal"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "featured": true,
    "scope": "global",
    "boundVariables": [
      "--global-menu-sub-hover-color",
      "--global-menu-sub-active-color"
    ]
  */
  --global-menu-sub-color: rgba(0, 0, 0, 0.8);
  /* VoogStyle
    "path": ["Header", "Sub menu", "Hover"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global",
    "boundVariables": [
      "--global-menu-sub-active-color"
    ]
  */
  --global-menu-sub-hover-color: rgba(0, 0, 0, 0.8);
  /* VoogStyle
    "path": ["Header", "Sub menu", "Active"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global"
  */
  --global-menu-sub-active-color: rgba(0, 0, 0, 0.8);
  /* VoogStyle
    "path": ["Header"],
    "title": "Sidebar menu bg color",
    "editor": "colorPicker",
    "scope": "global",
    "featured": true
  */
  --global-menu-main-compact-background-color: white;
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
    "path": ["Content", "Headings", "Title"],
    "title": "Font",
    "editor": "listPicker",
    "list": {{ base_font_set }},
    "scope": "global"
  */
  --global-content-title-font-family: "Avenir Next", "Helvetica Neue", "Helvetica", "Segoe UI", sans-serif;
  /* VoogStyle
    "path": ["Content", "Headings", "Title"],
    "title": "Alignment",
    "editor": "listPicker",
    "list": {{ base_alignment_set }},
    "scope": "global"
  */
  --global-content-title-text-alignment: center;
  /* VoogStyle
    "path": ["Content", "Headings", "Title"],
    "title": "Character spacing",
    "editor": "rangePicker",
    "min": 0,
    "max": 5,
    "step": 0.1,
    "unit": "em",
    "scope": "global"
  */
  --global-content-title-letter-spacing: 0;
  /* VoogStyle
    "path": ["Content", "Headings", "Title"],
    "title": "Line height",
    "editor": "rangePicker",
    "min": 1,
    "max": 5,
    "step": 0.1,
    "unit": "",
    "scope": "global"
  */
  --global-content-title-line-height: 1.3;
  /* VoogStyle
    "path": ["Content", "Headings", "Title"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global"
  */
  --global-content-title-font-size: 50px;
  /* VoogStyle
    "path": ["Content", "Headings", "Title"],
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
  --global-content-title-font-weight: 600;
  /* VoogStyle
    "path": ["Content", "Headings", "Title"],
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
  --global-content-title-font-style: normal;
  /* VoogStyle
    "path": ["Content", "Headings", "Title"],
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
  --global-content-title-text-decoration: none;
  /* VoogStyle
    "path": ["Content", "Headings", "Title"],
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
  --global-content-title-text-transform: none;
  /* VoogStyle
    "path": ["Content", "Headings", "Title"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global"
  */
  --global-content-title-color: black;
  /* VoogStyle
    "path": ["Content", "Headings", "Heading"],
    "title": "Font",
    "editor": "listPicker",
    "list": {{ base_font_set }},
    "scope": "global"
  */
  --global-content-heading-font-family: "Avenir Next", "Helvetica Neue", "Helvetica", "Segoe UI", sans-serif;
  /* VoogStyle
    "path": ["Content", "Headings", "Heading"],
    "title": "Alignment",
    "editor": "listPicker",
    "list": {{ base_alignment_set }},
    "scope": "global"
  */
  --global-content-heading-text-alignment: left;
  /* VoogStyle
    "path": ["Content", "Headings", "Heading"],
    "title": "Character spacing",
    "editor": "rangePicker",
    "min": 0,
    "max": 5,
    "step": 0.1,
    "unit": "em",
    "scope": "global"
  */
  --global-content-heading-letter-spacing: 0;
  /* VoogStyle
    "path": ["Content", "Headings", "Heading"],
    "title": "Line height",
    "editor": "rangePicker",
    "min": 1,
    "max": 5,
    "step": 0.1,
    "unit": "",
    "scope": "global"
  */
  --global-content-heading-line-height: 1.3;
  /* VoogStyle
    "path": ["Content", "Headings", "Heading"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global"
  */
  --global-content-heading-font-size: 27px;
  /* VoogStyle
    "path": ["Content", "Headings", "Heading"],
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
  --global-content-heading-font-weight: 600;
  /* VoogStyle
    "path": ["Content", "Headings", "Heading"],
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
  --global-content-heading-font-style: normal;
  /* VoogStyle
    "path": ["Content", "Headings", "Heading"],
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
  --global-content-heading-text-decoration: none;
  /* VoogStyle
    "path": ["Content", "Headings", "Heading"],
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
  --global-content-heading-text-transform: none;
  /* VoogStyle
    "path": ["Content", "Headings", "Heading"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global"
  */
  --global-content-heading-color: black;
  /* VoogStyle
    "path": ["Content", "Headings", "Subheading"],
    "title": "Font",
    "editor": "listPicker",
    "list": {{ base_font_set }},
    "scope": "global"
  */
  --global-content-subheading-font-family: "Avenir Next", "Helvetica Neue", "Helvetica", "Segoe UI", sans-serif;
  /* VoogStyle
    "path": ["Content", "Headings", "Subheading"],
    "title": "Alignment",
    "editor": "listPicker",
    "list": {{ base_alignment_set }},
    "scope": "global"
  */
  --global-content-subheading-text-alignment: left;
  /* VoogStyle
    "path": ["Content", "Headings", "Subheading"],
    "title": "Character spacing",
    "editor": "rangePicker",
    "min": 0,
    "max": 5,
    "step": 0.1,
    "unit": "em",
    "scope": "global"
  */
  --global-content-subheading-letter-spacing: 0;
  /* VoogStyle
    "path": ["Content", "Headings", "Subheading"],
    "title": "Line height",
    "editor": "rangePicker",
    "min": 1,
    "max": 5,
    "step": 0.1,
    "unit": "",
    "scope": "global"
  */
  --global-content-subheading-line-height: 1.3;
  /* VoogStyle
    "path": ["Content", "Headings", "Subheading"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global"
  */
  --global-content-subheading-font-size: 24px;
  /* VoogStyle
    "path": ["Content", "Headings", "Subheading"],
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
  --global-content-subheading-font-weight: 600;
  /* VoogStyle
    "path": ["Content", "Headings", "Subheading"],
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
  --global-content-subheading-font-style: normal;
  /* VoogStyle
    "path": ["Content", "Headings", "Subheading"],
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
  --global-content-subheading-text-decoration: none;
  /* VoogStyle
    "path": ["Content", "Headings", "Subheading"],
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
  --global-content-subheading-text-transform: none;
  /* VoogStyle
    "path": ["Content", "Headings", "Subheading"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global"
  */
  --global-content-subheading-color: black;
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
    "path": ["Content", "Links", "Normal"],
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
    "path": ["Content", "Links", "Normal"],
    "title": "Font",
    "editor": "listPicker",
    "list": {{ base_font_set }},
    "featured": true,
    "scope": "global"
  */
  --global-content-link-font-family: "Avenir Next", "Helvetica Neue", "Helvetica", "Segoe UI", sans-serif;
  /* VoogStyle
    "path": ["Content", "Links", "Normal"],
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
    "path": ["Content", "Links", "Normal"],
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
    "path": ["Content", "Links", "Normal"],
    "title": "Background color",
    "editor": "colorPicker",
    "scope": "global",
    "boundVariables": [
      "--global-content-link-hover-background-color"
    ]
  */
  --global-content-link-background-color: transparent;
  /* VoogStyle
    "path": ["Content", "Links", "Hover"],
    "title": "Background color",
    "editor": "colorPicker",
    "scope": "global"
  */
  --global-content-link-hover-background-color: transparent;
  /* VoogStyle
    "path": ["Content", "Links", "Normal"],
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
    "path": ["Content", "Links", "Hover"],
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
    "path": ["Content", "Links", "Normal"],
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
    "path": ["Content", "Links", "Hover"],
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
    "path": ["Content", "Links", "Normal"],
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
    "path": ["Content", "Links", "Hover"],
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
    "path": ["Content", "Links", "Normal"],
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
    "path": ["Content", "Links", "Hover"],
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
    "path": ["Content", "Links", "Normal"],
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
    "path": ["Content", "Links", "Hover"],
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
    "path": ["Content", "Links", "Normal"],
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
    "path": ["Content", "Links", "Hover"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global"
  */
  --global-content-link-hover-color: black;
  /* VoogStyle
    "path": ["Blog"],
    "title": "Nr of rows",
    "editor": "listPicker",
    "list": [
      {
        "title": "1",
        "value": "100%"
      },
      {
        "title": "2",
        "value": "50%"
      },
      {
        "title": "3",
        "value": "33.3%"
      },
      {
        "title": "4",
        "value": "25%"
      },
      {
        "title": "5",
        "value": "20%"
      },
      {
        "title": "6",
        "value": "16.6%"
      },
      {
        "title": "7",
        "value": "14.2%"
      },
      {
        "title": "8",
        "value": "12.5%"
      },
      {
        "title": "9",
        "value": "11.1%"
      },
      {
        "title": "10",
        "value": "10%"
      }
    ],
    "featured": true,
    "scope": "global"
  */
  --global-article-box-width: 33.3%;
  /* VoogStyle
    "path": ["Blog", "Article box"],
    "title": "Image radius",
    "editor": "rangePicker",
    "min": 0,
    "max": 100,
    "step": 1,
    "unit": "%",
    "scope": "global"
  */
  --global-article-box-image-radius: 0;
  /* VoogStyle
    "path": ["Blog", "Article box", "Normal"],
    "title": "Font",
    "editor": "listPicker",
    "list": {{ base_font_set }},
    "featured": true,
    "scope": "global"
  */
  --global-article-box-font-family: "Avenir Next", "Helvetica Neue", "Helvetica", "Segoe UI", sans-serif;
  /* VoogStyle
    "path": ["Blog", "Article box", "Normal"],
    "title": "Character spacing",
    "editor": "rangePicker",
    "min": 0,
    "max": 5,
    "step": 0.1,
    "unit": "em",
    "scope": "global"
  */
  --global-article-box-letter-spacing: 0;
  /* VoogStyle
    "path": ["Blog", "Article box", "Normal"],
    "title": "Line height",
    "editor": "rangePicker",
    "min": 1,
    "max": 5,
    "step": 0.1,
    "unit": "",
    "scope": "global"
  */
  --global-article-box-line-height: 1.2;
  /* VoogStyle
    "path": ["Blog", "Article box", "Normal"],
    "title": "Opacity",
    "editor": "rangePicker",
    "min": 0.1,
    "max": 1,
    "step": 0.1,
    "unit": "",
    "scope": "global"
  */
  --global-article-box-opacity: 1;
  /* VoogStyle
    "path": ["Blog", "Article box", "Hover"],
    "title": "Opacity",
    "editor": "rangePicker",
    "min": 0.1,
    "max": 1,
    "step": 0.1,
    "unit": "",
    "scope": "global"
  */
  --global-article-box-hover-opacity: .8;
  /* VoogStyle
    "path": ["Blog", "Article box", "Normal"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "featured": true,
    "scope": "global",
    "boundVariables": [
      "--global-article-box-hover-font-size"
    ]
  */
  --global-article-box-font-size: 18px;
  /* VoogStyle
    "path": ["Blog", "Article box", "Hover"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global"
  */
  --global-article-box-hover-font-size: 18px;
  /* VoogStyle
    "path": ["Blog", "Article box", "Normal"],
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
      "--global-article-box-hover-font-weight"
    ]
  */
  --global-article-box-font-weight: 400;
  /* VoogStyle
    "path": ["Blog", "Article box", "Hover"],
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
  --global-article-box-hover-font-weight: 400;
  /* VoogStyle
    "path": ["Blog", "Article box", "Normal"],
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
      "--global-article-box-hover-font-style"
    ]
  */
  --global-article-box-font-style: normal;
  /* VoogStyle
    "path": ["Blog", "Article box", "Hover"],
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
  --global-article-box-hover-font-style: normal;
  /* VoogStyle
    "path": ["Blog", "Article box", "Normal"],
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
      "--global-article-box-hover-text-decoration"
    ]
  */
  --global-article-box-text-decoration: none;
  /* VoogStyle
    "path": ["Blog", "Article box", "Hover"],
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
  --global-article-box-hover-text-decoration: none;
  /* VoogStyle
    "path": ["Blog", "Article box", "Normal"],
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
      "--global-article-box-hover-text-transform"
    ]
  */
  --global-article-box-text-transform: none;
  /* VoogStyle
    "path": ["Blog", "Article box", "Hover"],
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
  --global-article-box-hover-text-transform: none;
  /* VoogStyle
    "path": ["Blog", "Article box", "Normal"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "featured": true,
    "scope": "global",
    "boundVariables": [
      "--global-article-box-hover-color"
    ]
  */
  --global-article-box-color: rgba(0, 0, 0, 0.8);
  /* VoogStyle
    "path": ["Blog", "Article box", "Hover"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global"
  */
  --global-article-box-hover-color: rgba(0, 0, 0, 0.8);
  /* VoogStyle
    "path": ["Footer"],
    "title": "Font",
    "editor": "listPicker",
    "list": {{ base_font_set }},
    "featured": true,
    "scope": "global"
  */
  --global-footer-font-family: "Avenir Next", "Helvetica Neue", "Helvetica", "Segoe UI", sans-serif;
  /* VoogStyle
    "path": ["Footer"],
    "title": "Character spacing",
    "editor": "rangePicker",
    "min": 0,
    "max": 5,
    "step": 0.1,
    "unit": "em",
    "scope": "global"
  */
  --global-footer-letter-spacing: 0;
  /* VoogStyle
    "path": ["Footer"],
    "title": "Line height",
    "editor": "rangePicker",
    "min": 1,
    "max": 5,
    "step": 0.1,
    "unit": "",
    "scope": "global"
  */
  --global-footer-line-height: 1.3;
  /* VoogStyle
    "path": ["Footer"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "featured": true,
    "scope": "global"
  */
  --global-footer-font-size: 13px;
  /* VoogStyle
    "path": ["Footer"],
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
  --global-footer-font-weight: 400;
  /* VoogStyle
    "path": ["Footer"],
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
  --global-footer-font-style: normal;
  /* VoogStyle
    "path": ["Footer"],
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
  --global-footer-text-decoration: none;
  /* VoogStyle
    "path": ["Footer"],
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
  --global-footer-text-transform: none;
  /* VoogStyle
    "path": ["Footer"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "featured": true,
    "scope": "global"
  */
  --global-footer-color: rgba(0, 0, 0, 0.8);
}
</style>