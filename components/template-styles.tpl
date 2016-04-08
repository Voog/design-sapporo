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
      "--global-content-subheading-color"
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
    "path": ["Content", "Body"],
    "title": "Font",
    "editor": "listPicker",
    "list": {{ base_font_set }},
    "featured": true,
    "scope": "global"
  */
  --global-content-body-font-family: "Avenir Next", "Helvetica Neue", "Helvetica", "Segoe UI", sans-serif;
  /* VoogStyle
    "path": ["Content", "Body"],
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
    "path": ["Content", "Body"],
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
    "path": ["Content", "Body"],
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
    "path": ["Content", "Body"],
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
    "path": ["Content", "Body"],
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
    "path": ["Content", "Body"],
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
    "path": ["Content", "Body"],
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
    "path": ["Content", "Body"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "featured": true,
    "scope": "global"
  */
  --global-content-body-color: rgba(0, 0, 0, 0.8);
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
    "title": "Padding",
    "editor": "rangePicker",
    "min": 0,
    "max": 200,
    "step": 1,
    "unit": "px",
    "scope": "global"
  */
  --global-footer-padding: 0;
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
    "title": "Alignment",
    "editor": "listPicker",
    "list": {{ base_alignment_set }},
    "scope": "global"
  */
  --global-footer-text-alignment: right;
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
  --global-footer-line-height: 1.7;
  /* VoogStyle
    "path": ["Footer"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global",
    "featured": true
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
    "scope": "global",
    "featured": true
  */
  --global-footer-color: rgba(0, 0, 0, 0.8);
}

body {
  font-family: var(--global-main-font-family);
  color: var(--global-secondary-color);
  background-color: var(--global-body-background-color);
}

.wrap {
  max-width: var(--global-wrap-max-width);
  padding-right: var(--global-wrap-padding);
  padding-left: var(--global-wrap-padding);
}

.page-content {
  padding: var(--global-content-padding);
  background-color: var(--global-content-background-color);
}
.page-content .inner {
  max-width: var(--global-content-max-width);
}

.loader::before {
  border-top-color: var(--global-secondary-color);
}

.menu-btn {
  border-color: var(--global-secondary-color);
}
.menu-btn::before {
  background-color: var(--global-secondary-color);
}
.menu-main-opened .menu-btn {
  background-color: var(--global-secondary-color);
}

.menu-public a {
  color: var(--global-secondary-color);
}

.header-menu-compact .menu-main {
  background-color: var(--global-menu-main-compact-background-color);
}
.menu-main .btn:hover {
  stroke: var(--global-secondary-color);
}

.site-search-btn:hover .search-ico, .site-search-opened .site-search-btn .search-ico {
  fill: var(--global-secondary-color);
}

.search-ico {
  fill: var(--global-secondary-color);
}

.search-input {
  color: var(--global-secondary-color);
}

.search-clear {
  fill: var(--global-secondary-color);
}

.voog-search-modal-result h3 a {
  color: var(--global-secondary-color);
}

.header-menu-wide .menu-level-1 > .menu-item:not(:last-child) {
  margin-right: var(--global-menu-main-margin);
}
.menu-level-1 > .menu-item:hover > a {
  font-size: var(--global-menu-main-hover-font-size);
  font-style: var(--global-menu-main-hover-font-style);
  font-weight: var(--global-menu-main-hover-font-weight);
  color: var(--global-menu-main-hover-color);
  text-decoration: var(--global-menu-main-hover-text-decoration);
  text-transform: var(--global-menu-main-hover-text-transform);
  background-color: var(--global-menu-main-hover-background-color);
  opacity: var(--global-menu-main-hover-opacity);
}
.menu-level-1 > .menu-item.item-current > a {
  font-size: var(--global-menu-main-active-font-size);
  font-style: var(--global-menu-main-active-font-style);
  font-weight: var(--global-menu-main-active-font-weight);
  color: var(--global-menu-main-active-color);
  text-decoration: var(--global-menu-main-active-text-decoration);
  text-transform: var(--global-menu-main-active-text-transform);
  background-color: var(--global-menu-main-active-background-color);
  opacity: var(--global-menu-main-active-opacity);
}
.menu-level-1 > .menu-item > a {
  padding-right: var(--global-menu-main-padding);
  padding-left: var(--global-menu-main-padding);
  font-family: var(--global-menu-main-font-family);
  font-size: var(--global-menu-main-font-size);
  font-style: var(--global-menu-main-font-style);
  font-weight: var(--global-menu-main-font-weight);
  line-height: var(--global-menu-main-line-height);
  letter-spacing: var(--global-menu-main-letter-spacing);
  color: var(--global-menu-main-color);
  text-decoration: var(--global-menu-main-text-decoration);
  text-transform: var(--global-menu-main-text-transform);
  background-color: var(--global-menu-main-background-color);
  opacity: var(--global-menu-main-opacity);
}

.menu-level-2 .menu-item a {
  font-family: var(--global-menu-sub-font-family);
  font-size: var(--global-menu-sub-font-size);
  font-style: var(--global-menu-sub-font-style);
  font-weight: var(--global-menu-sub-font-weight);
  line-height: var(--global-menu-sub-line-height);
  letter-spacing: var(--global-menu-sub-letter-spacing);
  color: var(--global-menu-sub-color);
  text-decoration: var(--global-menu-sub-text-decoration);
  text-transform: var(--global-menu-sub-text-transform);
  background-color: var(--global-menu-sub-background-color);
  opacity: var(--global-menu-sub-opacity);
}
.menu-level-2 .menu-item a:hover {
  font-size: var(--global-menu-sub-hover-font-size);
  font-style: var(--global-menu-sub-hover-font-style);
  font-weight: var(--global-menu-sub-hover-font-weight);
  color: var(--global-menu-sub-hover-color);
  text-decoration: var(--global-menu-sub-hover-text-decoration);
  text-transform: var(--global-menu-sub-hover-text-transform);
  background-color: var(--global-menu-sub-hover-background-color);
  opacity: var(--global-menu-sub-hover-opacity);
}
.menu-level-2 .menu-item a.selected {
  font-size: var(--global-menu-sub-active-font-size);
  font-style: var(--global-menu-sub-active-font-style);
  font-weight: var(--global-menu-sub-active-font-weight);
  color: var(--global-menu-sub-active-color);
  text-decoration: var(--global-menu-sub-active-text-decoration);
  text-transform: var(--global-menu-sub-active-text-transform);
  background-color: var(--global-menu-sub-active-background-color);
  opacity: var(--global-menu-sub-active-opacity);
}

.menu-language-btn {
  color: var(--global-secondary-color);
}

.menu-language .menu-item a {
  color: var(--global-secondary-color);
}

.menu-language-btn-circle {
  stroke: var(--global-secondary-color);
}

.menu-language-options button {
  color: var(--global-secondary-color);
}

.site-footer {
  padding-right: var(--global-footer-padding);
  padding-left: var(--global-footer-padding);
}

.voog-reference a {
  color: var(--global-secondary-color);
}

.blog-listing-page .blog-article-newer:not(.cms-blog-article-add-button) .top-inner {
  opacity: var(--global-article-box-opacity);
}
.blog-listing-page .blog-article-newer:not(.cms-blog-article-add-button):hover .top-inner {
  opacity: var(--global-article-box-hover-opacity);
}
.blog-listing-page .blog-article-newer:not(.cms-blog-article-add-button):hover .article-title {
  font-size: var(--global-article-box-hover-font-size);
  font-style: var(--global-article-box-hover-font-style);
  font-weight: var(--global-article-box-hover-font-weight);
  color: var(--global-article-box-hover-color);
  text-decoration: var(--global-article-box-hover-text-decoration);
  text-transform: var(--global-article-box-hover-text-transform);
}
.blog-listing-page .blog-article-newer:not(.cms-blog-article-add-button) .article-title {
  font-family: var(--global-article-box-font-family);
  font-size: var(--global-article-box-font-size);
  font-style: var(--global-article-box-font-style);
  font-weight: var(--global-article-box-font-weight);
  line-height: var(--global-article-box-line-height);
  letter-spacing: var(--global-article-box-letter-spacing);
  color: var(--global-article-box-color);
  text-decoration: var(--global-article-box-text-decoration);
  text-transform: var(--global-article-box-text-transform);
}
@media screen and (min-width: 641px) {
  .blog-listing-page .blog-article-newer {
    width: var(--global-article-box-width);
  }
}

.article-top .top-inner {
  border-radius: var(--global-article-box-image-radius);
}

.article-add-ico {
  stroke: var(--global-main-color);
}

.article-date {
  color: var(--global-secondary-color);
}

.content-area {
  color: var(--global-main-color);
}
.page-content .content-area {
  font-family: var(--global-content-body-font-family);
  font-size: var(--global-content-body-font-size);
  font-style: var(--global-content-body-font-style);
  font-weight: var(--global-content-body-font-weight);
  line-height: var(--global-content-body-line-height);
  letter-spacing: var(--global-content-body-letter-spacing);
  color: var(--global-content-body-color);
  text-align: var(--global-content-body-text-alignment);
  text-decoration: var(--global-content-body-text-decoration);
  text-transform: var(--global-content-body-text-transform);
}
.site-footer .content-area {
  font-family: var(--global-footer-font-family);
  font-size: var(--global-footer-font-size);
  font-style: var(--global-footer-font-style);
  font-weight: var(--global-footer-font-weight);
  line-height: var(--global-footer-line-height);
  letter-spacing: var(--global-footer-letter-spacing);
  color: var(--global-footer-color);
  text-align: var(--global-footer-text-alignment);
  text-decoration: var(--global-footer-text-decoration);
  text-transform: var(--global-footer-text-transform);
}
.content-area h1 {
  font-family: var(--global-content-title-font-family);
  font-size: var(--global-content-title-font-size);
  font-style: var(--global-content-title-font-style);
  font-weight: var(--global-content-title-font-weight);
  line-height: var(--global-content-title-line-height);
  letter-spacing: var(--global-content-title-letter-spacing);
  color: var(--global-content-title-color);
  text-align: var(--global-content-title-text-alignment);
  text-decoration: var(--global-content-title-text-decoration);
  text-transform: var(--global-content-title-text-transform);
}
.content-area h2:not(.comments-title) {
  font-family: var(--global-content-heading-font-family);
  font-size: var(--global-content-heading-font-size);
  font-style: var(--global-content-heading-font-style);
  font-weight: var(--global-content-heading-font-weight);
  line-height: var(--global-content-heading-line-height);
  letter-spacing: var(--global-content-heading-letter-spacing);
  color: var(--global-content-heading-color);
  text-align: var(--global-content-heading-text-alignment);
  text-decoration: var(--global-content-heading-text-decoration);
  text-transform: var(--global-content-heading-text-transform);
}
.content-area h3,
.content-area h4,
.content-area h5,
.content-area h6 {
  font-family: var(--global-content-subheading-font-family);
  font-size: var(--global-content-subheading-font-size);
  font-style: var(--global-content-subheading-font-style);
  font-weight: var(--global-content-subheading-font-weight);
  line-height: var(--global-content-subheading-line-height);
  letter-spacing: var(--global-content-subheading-letter-spacing);
  color: var(--global-content-subheading-color);
  text-align: var(--global-content-subheading-text-alignment);
  text-decoration: var(--global-content-subheading-text-decoration);
  text-transform: var(--global-content-subheading-text-transform);
}
.site-header .content-area a {
  color: var(--global-main-color);
}
.site-header .content-area a:hover {
  color: var(--global-secondary-color);
}
.page-content .content-area a, .site-footer .content-area a {
  color: var(--global-secondary-color);
}
.page-content .content-area a:hover, .site-footer .content-area a:hover {
  color: var(--global-main-color);
}
.content-area .custom-btn {
  font-family: var(--global-main-font-family);
}

.form_field_textfield,
.form_field_textarea {
  font-family: var(--global-main-font-family);
  color: var(--global-secondary-color);
}

.form_submit input {
  font-family: var(--global-main-font-family);
}

label .form_field_checkbox + .form_control_indicator::before {
  border-color: var(--global-secondary-color);
}
label .form_field_checkbox:checked + .form_control_indicator::before {
  background-color: var(--global-secondary-color);
}
label .form_field_radio + .form_control_indicator::before {
  outline-color: var(--global-secondary-color);
}
label .form_field_radio:checked + .form_control_indicator::before {
  background-color: var(--global-secondary-color);
}
</style>

{{ site.style_tag }}