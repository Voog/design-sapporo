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
    "path": ["Main Styles", "Headings"],
    "title": "Padding",
    "editor": "rangePicker",
    "min": 0,
    "max": 50,
    "unit": "px",
    "scope": "global"
  */
  --global-headings-padding: 0;
  /* VoogStyle
    "path": ["Main Styles", "Headings"],
    "title": "Font",
    "editor": "listPicker",
    "list": [
      {
        "title": "Avenir Next",
        "value": "'Avenir Next', 'Helvetica Neue', 'Helvetica', 'Segoe UI', sans-serif"
      },
      {
        "title": "Fira Sans",
        "value": "'Fira Sans', sans-serif"
      },
      {
        "title": "Lato",
        "value": "'Lato', sans-serif"
      },
      {
        "title": "Montserrat",
        "value": "'Montserrat', sans-serif"
      },
      {
        "title": "Open Sans",
        "value": "'Open Sans', sans-serif"
      },
      {
        "title": "Roboto",
        "value": "'Roboto', sans-serif"
      },
      {
        "title": "Source Sans Pro",
        "value": "'Source Sans Pro', sans-serif"
      },
      {
        "title": "Ubuntu",
        "value": "'Ubuntu', sans-serif"
      },
      {
        "title": "Arvo",
        "value": "'Arvo', sans-serif"
      },
      {
        "title": "Crimson Text",
        "value": "'Crimson Text', sans-serif"
      },
      {
        "title": "Lora",
        "value": "'Lora', sans-serif"
      },
      {
        "title": "Noto Serif",
        "value": "'Noto Serif', sans-serif"
      },
      {
        "title": "Playfair Display",
        "value": "'Playfair Display', sans-serif"
      },
      {
        "title": "PT Serif",
        "value": "'PT Serif', sans-serif"
      },
      {
        "title": "Roboto Slab",
        "value": "'Roboto Slab', sans-serif"
      },
      {
        "title": "Anonymous Pro",
        "value": "'Anonymous Pro', monospace"
      },
      {
        "title": "Cousine",
        "value": "'Cousine', monospace"
      },
      {
        "title": "Roboto Mono",
        "value": "'Roboto Mono', monospace"
      },
      {
        "title": "Ubuntu Mono",
        "value": "'Ubuntu Mono', monospace"
      }
    ],
    "featured": true,
    "scope": "global"
  */
  --global-headings-font-family: 'Avenir Next', 'Helvetica Neue', 'Helvetica', 'Segoe UI', sans-serif;
  /* VoogStyle
    "path": ["Main Styles", "Headings"],
    "title": "Character spacing",
    "editor": "rangePicker",
    "min": 0,
    "max": 50,
    "unit": "px",
    "scope": "global"
  */
  --global-headings-letter-spacing: 0;
  /* VoogStyle
    "path": ["Main Styles", "Headings"],
    "title": "Line height",
    "editor": "rangePicker",
    "min": 1,
    "max": 5,
    "step": 0.1,
    "unit": "",
    "scope": "global",
    "boundVariables": [
      "--global-link-line-height"
    ]
  */
  --global-headings-line-height: 1.7;
  /* VoogStyle
    "path": ["Main Styles", "Headings"],
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
  --global-headings-font-weight: 600;
  /* VoogStyle
    "path": ["Main Styles", "Headings"],
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
  --global-headings-font-style: normal;
  /* VoogStyle
    "path": ["Main Styles", "Headings"],
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
  --global-headings-text-decoration: none;
  /* VoogStyle
    "path": ["Main Styles", "Headings"],
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
  --global-headings-text-transform: none;
  /* VoogStyle
    "path": ["Main Styles", "Headings"],
    "title": "Text transform",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global",
    "featured": true
  */
  --global-headings-color: black;
  /* VoogStyle
    "path": ["Main Styles", "Text"],
    "title": "Padding",
    "editor": "rangePicker",
    "min": 0,
    "max": 50,
    "unit": "px",
    "scope": "global"
  */
  --global-text-padding: 0;
  /* VoogStyle
    "path": ["Main Styles", "Text"],
    "title": "Font",
    "editor": "listPicker",
    "list": [
      {
        "title": "Avenir Next",
        "value": "'Avenir Next', 'Helvetica Neue', 'Helvetica', 'Segoe UI', sans-serif"
      },
      {
        "title": "Fira Sans",
        "value": "'Fira Sans', sans-serif"
      },
      {
        "title": "Lato",
        "value": "'Lato', sans-serif"
      },
      {
        "title": "Montserrat",
        "value": "'Montserrat', sans-serif"
      },
      {
        "title": "Open Sans",
        "value": "'Open Sans', sans-serif"
      },
      {
        "title": "Roboto",
        "value": "'Roboto', sans-serif"
      },
      {
        "title": "Source Sans Pro",
        "value": "'Source Sans Pro', sans-serif"
      },
      {
        "title": "Ubuntu",
        "value": "'Ubuntu', sans-serif"
      },
      {
        "title": "Arvo",
        "value": "'Arvo', sans-serif"
      },
      {
        "title": "Crimson Text",
        "value": "'Crimson Text', sans-serif"
      },
      {
        "title": "Lora",
        "value": "'Lora', sans-serif"
      },
      {
        "title": "Noto Serif",
        "value": "'Noto Serif', sans-serif"
      },
      {
        "title": "Playfair Display",
        "value": "'Playfair Display', sans-serif"
      },
      {
        "title": "PT Serif",
        "value": "'PT Serif', sans-serif"
      },
      {
        "title": "Roboto Slab",
        "value": "'Roboto Slab', sans-serif"
      },
      {
        "title": "Anonymous Pro",
        "value": "'Anonymous Pro', monospace"
      },
      {
        "title": "Cousine",
        "value": "'Cousine', monospace"
      },
      {
        "title": "Roboto Mono",
        "value": "'Roboto Mono', monospace"
      },
      {
        "title": "Ubuntu Mono",
        "value": "'Ubuntu Mono', monospace"
      }
    ],
    "featured": true,
    "scope": "global",
    "boundVariables": [
      "--global-headings-font-family",
      "--global-link-font-family"
    ]
  */
  --global-text-font-family: 'Avenir Next', 'Helvetica Neue', 'Helvetica', 'Segoe UI', sans-serif;
  /* VoogStyle
    "path": ["Main Styles", "Text"],
    "title": "Character spacing",
    "editor": "rangePicker",
    "min": 0,
    "max": 50,
    "unit": "px",
    "scope": "global",
    "boundVariables": [
      "--global-link-letter-spacing"
    ]
  */
  --global-text-letter-spacing: 0;
  /* VoogStyle
    "path": ["Main Styles", "Text"],
    "title": "Line height",
    "editor": "rangePicker",
    "min": 1,
    "max": 5,
    "step": 0.1,
    "unit": "",
    "scope": "global",
    "boundVariables": [
      "--global-link-line-height"
    ]
  */
  --global-text-line-height: 1.7;
  /* VoogStyle
    "path": ["Main Styles", "Text"],
    "title": "Font size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global",
    "featured": true,
    "boundVariables": [
      "--global-link-font-size"
    ]
  */
  --global-text-font-size: 18;
  /* VoogStyle
    "path": ["Main Styles", "Text"],
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
      "--global-link-font-weight"
    ]
  */
  --global-text-font-weight: 400;
  /* VoogStyle
    "path": ["Main Styles", "Text"],
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
      "--global-link-font-style"
    ]
  */
  --global-text-font-style: normal;
  /* VoogStyle
    "path": ["Main Styles", "Text"],
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
      "--global-link-text-decoration"
    ]
  */
  --global-text-text-decoration: none;
  /* VoogStyle
    "path": ["Main Styles", "Text"],
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
      "--global-link-text-transform"
    ]
  */
  --global-text-text-transform: none;
  /* VoogStyle
    "path": ["Main Styles", "Text"],
    "title": "Text transform",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global",
    "featured": true
  */
  --global-text-color: black;
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
    "title": "Font",
    "editor": "listPicker",
    "list": [
      {
        "title": "Avenir Next",
        "value": "'Avenir Next', 'Helvetica Neue', 'Helvetica', 'Segoe UI', sans-serif"
      },
      {
        "title": "Fira Sans",
        "value": "'Fira Sans', sans-serif"
      },
      {
        "title": "Lato",
        "value": "'Lato', sans-serif"
      },
      {
        "title": "Montserrat",
        "value": "'Montserrat', sans-serif"
      },
      {
        "title": "Open Sans",
        "value": "'Open Sans', sans-serif"
      },
      {
        "title": "Roboto",
        "value": "'Roboto', sans-serif"
      },
      {
        "title": "Source Sans Pro",
        "value": "'Source Sans Pro', sans-serif"
      },
      {
        "title": "Ubuntu",
        "value": "'Ubuntu', sans-serif"
      },
      {
        "title": "Arvo",
        "value": "'Arvo', sans-serif"
      },
      {
        "title": "Crimson Text",
        "value": "'Crimson Text', sans-serif"
      },
      {
        "title": "Lora",
        "value": "'Lora', sans-serif"
      },
      {
        "title": "Noto Serif",
        "value": "'Noto Serif', sans-serif"
      },
      {
        "title": "Playfair Display",
        "value": "'Playfair Display', sans-serif"
      },
      {
        "title": "PT Serif",
        "value": "'PT Serif', sans-serif"
      },
      {
        "title": "Roboto Slab",
        "value": "'Roboto Slab', sans-serif"
      },
      {
        "title": "Anonymous Pro",
        "value": "'Anonymous Pro', monospace"
      },
      {
        "title": "Cousine",
        "value": "'Cousine', monospace"
      },
      {
        "title": "Roboto Mono",
        "value": "'Roboto Mono', monospace"
      },
      {
        "title": "Ubuntu Mono",
        "value": "'Ubuntu Mono', monospace"
      }
    ],
    "featured": true,
    "scope": "global"
  */
  --global-link-font-family: 'Avenir Next', 'Helvetica Neue', 'Helvetica', 'Segoe UI', sans-serif;
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
    "step": 0.1,
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
    "featured": true,
    "boundVariables": [
      "--global-link-hover-font-size",
      "--global-link-active-font-size"
    ]
  */
  --global-link-font-size: 18;
  /* VoogStyle
    "path": ["Main Styles", "Links", "Hover"],
    "title": "Font size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global",
    "boundVariables": ["--global-link-active-font-size"]
  */
  --global-link-hover-font-size: 18;
  /* VoogStyle
    "path": ["Main Styles", "Links", "Active"],
    "title": "Font size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global"
  */
  --global-link-active-font-size: 18;
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
    "boundVariables": [
      "--global-link-hover-font-weight",
      "--global-link-active-font-weight"
    ]
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
    "scope": "global",
    "boundVariables": ["--global-link-active-font-weight"]
  */
  --global-link-hover-font-weight: 400;
  /* VoogStyle
    "path": ["Main Styles", "Links", "Active"],
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
  --global-link-active-font-weight: 400;
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
    "boundVariables": [
      "--global-link-hover-font-style",
      "--global-link-active-font-style"
    ]
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
    "scope": "global",
    "boundVariables": ["--global-link-active-font-style"]
  */
  --global-link-hover-font-style: normal;
  /* VoogStyle
    "path": ["Main Styles", "Links", "Active"],
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
  --global-link-active-font-style: normal;
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
    "boundVariables": [
      "--global-link-hover-text-decoration",
      "--global-link-active-text-decoration"
    ]
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
    "scope": "global",
    "boundVariables": ["--global-link-active-text-decoration"]
  */
  --global-link-hover-text-decoration: none;
  /* VoogStyle
    "path": ["Main Styles", "Links", "Active"],
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
  --global-link-active-text-decoration: none;
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
    "boundVariables": [
      "--global-link-hover-text-transform",
      "--global-link-active-text-transform"
    ]
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
    "scope": "global",
    "boundVariables": ["--global-link-active-text-transform"]
  */
  --global-link-hover-text-transform: none;
  /* VoogStyle
    "path": ["Main Styles", "Links", "Active"],
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
  --global-link-active-text-transform: none;
  /* VoogStyle
    "path": ["Main Styles", "Links", "Normal"],
    "title": "Text transform",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global",
    "featured": true,
    "boundVariables": [
      "--global-link-hover-color",
      "--global-link-active-color"
    ]
  */
  --global-link-color: black;
  /* VoogStyle
    "path": ["Main Styles", "Links", "Hover"],
    "title": "Text transform",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global",
    "boundVariables": ["--global-link-active-color"]
  */
  --global-link-hover-color: rgba(0, 0, 0, 0.8);
  /* VoogStyle
    "path": ["Main Styles", "Links", "Active"],
    "title": "Text transform",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global"
  */
  --global-link-active-color: rgba(0, 0, 0, 0.8);
}

body {
  font-family: var(--global-text-font-family);
  color: var(--global-text-color);
  background-color: var(--global-background-color);
}

.wrap {
  padding-right: var(--global-padding);
  padding-left: var(--global-padding);
}

.content-area {
  line-height: var(--global-text-line-height);
  color: var(--global-text-color);
}
.page-content .content-area {
  padding-right: var(--global-text-padding);
  padding-left: var(--global-text-padding);
  font-size: var(--global-text-font-size);
  font-style: var(--global-text-font-style);
  font-weight: var(--global-text-font-weight);
  letter-spacing: var(--global-text-letter-spacing);
  text-decoration: var(--global-text-text-decoration);
  text-transform: var(--global-text-text-transform);
}
.content-area h1,
.content-area h2,
.content-area h3,
.content-area h4,
.content-area h5,
.content-area h6 {
  padding-right: var(--global-headings-padding);
  padding-left: var(--global-headings-padding);
  font-family: var(--global-headings-font-family);
  font-style: var(--global-headings-font-style);
  font-weight: var(--global-headings-font-weight);
  line-height: var(--global-headings-line-height);
  letter-spacing: var(--global-headings-letter-spacing);
  color: var(--global-headings-color);
  text-decoration: var(--global-headings-text-decoration);
  text-transform: var(--global-headings-text-transform);
}
.page-content .content-area a, .site-footer .content-area a {
  padding-right: var(--global-link-padding);
  padding-left: var(--global-link-padding);
  font-family: var(--global-link-font-family);
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
  font-weight: var(--global-link-hover-font-weight);
  color: var(--global-link-hover-color);
  text-decoration: var(--global-link-hover-text-decoration);
  text-transform: var(--global-link-hover-text-transform);
}
.page-content .content-area a:active, .site-footer .content-area a:active {
  font-size: var(--global-link-active-font-size);
  font-style: var(--global-link-active-font-style);
  font-weight: var(--global-link-active-font-weight);
  color: var(--global-link-active-color);
  text-decoration: var(--global-link-active-text-decoration);
  text-transform: var(--global-link-active-text-transform);
}
</style>

{{ site.style_tag }}