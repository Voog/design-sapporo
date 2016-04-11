{% comment %}Template custom styles definitions.{% endcomment %}
<style data-voog-style>
:root {
  /* VoogStyle
    "path": ["Header", "Title", "Normal"],
    "title": "Font",
    "editor": "listPicker",
    "list": {{ base_font_set }},
    "featured": true,
    "scope": "global"
  */
  --global-header-body-font-family: "Avenir Next", "Helvetica Neue", "Helvetica", "Segoe UI", sans-serif;
  /* VoogStyle
    "path": ["Header", "Title", "Normal"],
    "title": "Character spacing",
    "editor": "rangePicker",
    "min": 0,
    "max": 5,
    "step": 0.1,
    "unit": "em",
    "scope": "global"
  */
  --global-header-body-letter-spacing: 0.1;
  /* VoogStyle
    "path": ["Header", "Title", "Normal"],
    "title": "Line height",
    "editor": "rangePicker",
    "min": 1,
    "max": 5,
    "step": 0.1,
    "unit": "",
    "scope": "global"
  */
  --global-header-body-line-height: 1.3;
  /* VoogStyle
    "path": ["Header", "Title", "Normal"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "featured": true,
    "scope": "global",
    "boundVariables": [
      "--global-header-body-hover-font-size"
    ]
  */
  --global-header-body-font-size: 30px;
  /* VoogStyle
    "path": ["Header", "Title", "Hover"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global"
  */
  --global-header-body-hover-font-size: 30px;
  /* VoogStyle
    "path": ["Header", "Title", "Normal"],
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
      "--global-header-body-hover-font-weight"
    ]
  */
  --global-header-body-font-weight: 400;
  /* VoogStyle
    "path": ["Header", "Title", "Hover"],
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
  --global-header-body-hover-font-weight: 400;
  /* VoogStyle
    "path": ["Header", "Title", "Normal"],
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
      "--global-header-body-hover-font-style"
    ]
  */
  --global-header-body-font-style: normal;
  /* VoogStyle
    "path": ["Header", "Title", "Hover"],
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
  --global-header-body-hover-font-style: normal;
  /* VoogStyle
    "path": ["Header", "Title", "Normal"],
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
      "--global-header-body-hover-text-decoration"
    ]
  */
  --global-header-body-text-decoration: none;
  /* VoogStyle
    "path": ["Header", "Title", "Hover"],
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
  --global-header-body-hover-text-decoration: none;
  /* VoogStyle
    "path": ["Header", "Title", "Normal"],
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
      "--global-header-body-hover-text-transform"
    ]
  */
  --global-header-body-text-transform: none;
  /* VoogStyle
    "path": ["Header", "Title", "Hover"],
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
  --global-header-body-hover-text-transform: none;
  /* VoogStyle
    "path": ["Header", "Title", "Normal"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "featured": true,
    "scope": "global"
  */
  --global-header-body-color: rgba(0, 0, 0, 0.8);
  /* VoogStyle
    "path": ["Header", "Title", "Hover"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global"
  */
  --global-header-body-hover-color: black;
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
    "title": "Sidebar menu bg color",
    "editor": "colorPicker",
    "scope": "global"
  */
  --global-menu-main-compact-background-color: white;
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
}

</style>
