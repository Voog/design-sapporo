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
    "title": "Background color",
    "editor": "colorPicker",
    "scope": "global"
  */
  --global-body-background-color: rgba(0, 0, 0, 0.02);
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
      "--global-headings-font-family"
    ]
  */
  --global-main-font-family: "Avenir Next", "Helvetica Neue", "Helvetica", "Segoe UI", sans-serif;
  /* VoogStyle
    "path": ["Main Styles"],
    "title": "Main color",
    "editor": "colorPicker",
    "scope": "global",
    "boundVariables": [
      "--global-headings-color"
    ]
  */
  --global-main-color: rgba(0, 0, 0, 0.8);
  /* VoogStyle
    "path": ["Main Styles"],
    "title": "Secondary color",
    "editor": "colorPicker",
    "scope": "global",
    "boundVariables": [
      "--global-headings-color"
    ]
  */
  --global-secondary-color: black;
  /* VoogStyle
    "path": ["Headings"],
    "title": "Background color",
    "editor": "colorPicker",
    "scope": "global",
    "boundVariables": [
      "--global-title-background-color",
      "--global-heading-background-color",
      "--global-subheading-background-color"
    ]
  */
  --global-headings-background-color: transparent;
  /* VoogStyle
    "path": ["Headings", "Text"],
    "title": "Font",
    "editor": "listPicker",
    "list": {{ base_font_set }},
    "featured": true,
    "scope": "global",
    "boundVariables": [
      "--global-title-font-family",
      "--global-heading-font-family",
      "--global-subheading-font-family"
    ]
  */
  --global-headings-font-family: "Avenir Next", "Helvetica Neue", "Helvetica", "Segoe UI", sans-serif;
  /* VoogStyle
    "path": ["Headings", "Text"],
    "title": "Character spacing",
    "editor": "rangePicker",
    "min": 0,
    "max": 50,
    "unit": "px",
    "scope": "global",
    "boundVariables": [
      "--global-title-letter-spacing",
      "--global-heading-letter-spacing",
      "--global-subheading-letter-spacing"
    ]
  */
  --global-headings-letter-spacing: 0;
  /* VoogStyle
    "path": ["Headings", "Text"],
    "title": "Line height",
    "editor": "rangePicker",
    "min": 1,
    "max": 5,
    "step": 0.1,
    "unit": "",
    "scope": "global",
    "boundVariables": [
      "--global-title-line-height",
      "--global-heading-line-height",
      "--global-subheading-line-height"
    ]
  */
  --global-headings-line-height: 1.3;
  /* VoogStyle
    "path": ["Headings", "Text"],
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
      "--global-title-font-weight",
      "--global-heading-font-weight",
      "--global-subheading-font-weight"
    ]
  */
  --global-headings-font-weight: 600;
  /* VoogStyle
    "path": ["Headings", "Text"],
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
      "--global-title-font-style",
      "--global-heading-font-style",
      "--global-subheading-font-style"
    ]
  */
  --global-headings-font-style: normal;
  /* VoogStyle
    "path": ["Headings", "Text"],
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
      "--global-title-text-decoration",
      "--global-heading-text-decoration",
      "--global-subheading-text-decoration"
    ]
  */
  --global-headings-text-decoration: none;
  /* VoogStyle
    "path": ["Headings", "Text"],
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
      "--global-title-text-transform",
      "--global-heading-text-transform",
      "--global-subheading-text-transform"
    ]
  */
  --global-headings-text-transform: none;
  /* VoogStyle
    "path": ["Headings", "Text"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global",
    "featured": true,
    "boundVariables": [
      "--global-title-color",
      "--global-heading-color",
      "--global-subheading-color"
    ]
  */
  --global-headings-color: black;
  /* VoogStyle
    "path": ["Headings", "Title"],
    "title": "Background color",
    "editor": "colorPicker",
    "scope": "global"
  */
  --global-title-background-color: transparent;
  /* VoogStyle
    "path": ["Headings", "Title"],
    "title": "Font",
    "editor": "listPicker",
    "list": {{ base_font_set }},
    "featured": true,
    "scope": "global"
  */
  --global-title-font-family: "Avenir Next", "Helvetica Neue", "Helvetica", "Segoe UI", sans-serif;
  /* VoogStyle
    "path": ["Headings", "Title"],
    "title": "Alignment",
    "editor": "listPicker",
    "list": {{ base_alignment_set }},
    "scope": "global"
  */
  --global-title-text-alignment: center;
  /* VoogStyle
    "path": ["Headings", "Title"],
    "title": "Character spacing",
    "editor": "rangePicker",
    "min": 0,
    "max": 50,
    "unit": "px",
    "scope": "global"
  */
  --global-title-letter-spacing: 0;
  /* VoogStyle
    "path": ["Headings", "Title"],
    "title": "Line height",
    "editor": "rangePicker",
    "min": 1,
    "max": 5,
    "step": 0.1,
    "unit": "",
    "scope": "global"
  */
  --global-title-line-height: 1.3;
  /* VoogStyle
    "path": ["Headings", "Title"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global",
    "featured": true
  */
  --global-title-font-size: 50;
  /* VoogStyle
    "path": ["Headings", "Title"],
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
  --global-title-font-weight: 600;
  /* VoogStyle
    "path": ["Headings", "Title"],
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
  --global-title-font-style: normal;
  /* VoogStyle
    "path": ["Headings", "Title"],
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
  --global-title-text-decoration: none;
  /* VoogStyle
    "path": ["Headings", "Title"],
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
  --global-title-text-transform: none;
  /* VoogStyle
    "path": ["Headings", "Title"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global",
    "featured": true
  */
  --global-title-color: black;
  /* VoogStyle
    "path": ["Headings", "Heading"],
    "title": "Background color",
    "editor": "colorPicker",
    "scope": "global"
  */
  --global-heading-background-color: transparent;
  /* VoogStyle
    "path": ["Headings", "Heading"],
    "title": "Font",
    "editor": "listPicker",
    "list": {{ base_font_set }},
    "featured": true,
    "scope": "global"
  */
  --global-heading-font-family: "Avenir Next", "Helvetica Neue", "Helvetica", "Segoe UI", sans-serif;
  /* VoogStyle
    "path": ["Headings", "Heading"],
    "title": "Alignment",
    "editor": "listPicker",
    "list": {{ base_alignment_set }},
    "scope": "global"
  */
  --global-heading-text-alignment: center;
  /* VoogStyle
    "path": ["Headings", "Heading"],
    "title": "Character spacing",
    "editor": "rangePicker",
    "min": 0,
    "max": 50,
    "unit": "px",
    "scope": "global"
  */
  --global-heading-letter-spacing: 0;
  /* VoogStyle
    "path": ["Headings", "Heading"],
    "title": "Line height",
    "editor": "rangePicker",
    "min": 1,
    "max": 5,
    "step": 0.1,
    "unit": "",
    "scope": "global"
  */
  --global-heading-line-height: 1.3;
  /* VoogStyle
    "path": ["Headings", "Heading"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global",
    "featured": true
  */
  --global-heading-font-size: 27;
  /* VoogStyle
    "path": ["Headings", "Heading"],
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
  --global-heading-font-weight: 600;
  /* VoogStyle
    "path": ["Headings", "Heading"],
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
  --global-heading-font-style: normal;
  /* VoogStyle
    "path": ["Headings", "Heading"],
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
  --global-heading-text-decoration: none;
  /* VoogStyle
    "path": ["Headings", "Heading"],
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
  --global-heading-text-transform: none;
  /* VoogStyle
    "path": ["Headings", "Heading"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global",
    "featured": true
  */
  --global-heading-color: black;
  /* VoogStyle
    "path": ["Headings", "Subheading"],
    "title": "Background color",
    "editor": "colorPicker",
    "scope": "global"
  */
  --global-subheading-background-color: transparent;
  /* VoogStyle
    "path": ["Headings", "Subheading"],
    "title": "Font",
    "editor": "listPicker",
    "list": {{ base_font_set }},
    "featured": true,
    "scope": "global"
  */
  --global-subheading-font-family: "Avenir Next", "Helvetica Neue", "Helvetica", "Segoe UI", sans-serif;
  /* VoogStyle
    "path": ["Headings", "Subheading"],
    "title": "Alignment",
    "editor": "listPicker",
    "list": {{ base_alignment_set }},
    "scope": "global"
  */
  --global-subheading-text-alignment: center;
  /* VoogStyle
    "path": ["Headings", "Subheading"],
    "title": "Character spacing",
    "editor": "rangePicker",
    "min": 0,
    "max": 50,
    "unit": "px",
    "scope": "global"
  */
  --global-subheading-letter-spacing: 0;
  /* VoogStyle
    "path": ["Headings", "Subheading"],
    "title": "Line height",
    "editor": "rangePicker",
    "min": 1,
    "max": 5,
    "step": 0.1,
    "unit": "",
    "scope": "global"
  */
  --global-subheading-line-height: 1.3;
  /* VoogStyle
    "path": ["Headings", "Subheading"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global",
    "featured": true
  */
  --global-subheading-font-size: 24;
  /* VoogStyle
    "path": ["Headings", "Subheading"],
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
  --global-subheading-font-weight: 600;
  /* VoogStyle
    "path": ["Headings", "Subheading"],
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
  --global-subheading-font-style: normal;
  /* VoogStyle
    "path": ["Headings", "Subheading"],
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
  --global-subheading-text-decoration: none;
  /* VoogStyle
    "path": ["Headings", "Subheading"],
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
  --global-subheading-text-transform: none;
  /* VoogStyle
    "path": ["Headings", "Subheading"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global",
    "featured": true
  */
  --global-subheading-color: black;
  /* VoogStyle
    "path": ["Content"],
    "title": "Background color",
    "editor": "colorPicker",
    "scope": "global"
  */
  --global-content-background-color: transparent;
  /* VoogStyle
    "path": ["Content"],
    "title": "Font",
    "editor": "listPicker",
    "list": {{ base_font_set }},
    "featured": true,
    "scope": "global"
  */
  --global-content-font-family: "Avenir Next", "Helvetica Neue", "Helvetica", "Segoe UI", sans-serif;
  /* VoogStyle
    "path": ["Content"],
    "title": "Character spacing",
    "editor": "rangePicker",
    "min": 0,
    "max": 50,
    "unit": "px",
    "scope": "global"
  */
  --global-content-letter-spacing: 0;
  /* VoogStyle
    "path": ["Content"],
    "title": "Line height",
    "editor": "rangePicker",
    "min": 1,
    "max": 5,
    "step": 0.1,
    "unit": "",
    "scope": "global"
  */
  --global-content-line-height: 1.3;
  /* VoogStyle
    "path": ["Content"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global",
    "featured": true
  */
  --global-content-font-size: 18;
  /* VoogStyle
    "path": ["Content"],
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
  --global-content-font-weight: 400;
  /* VoogStyle
    "path": ["Content"],
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
  --global-content-font-style: normal;
  /* VoogStyle
    "path": ["Content"],
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
  --global-content-text-decoration: none;
  /* VoogStyle
    "path": ["Content"],
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
  --global-content-text-transform: none;
  /* VoogStyle
    "path": ["Content"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global",
    "featured": true
  */
  --global-content-color: rgba(0, 0, 0, 0.8);
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

.voog-reference a {
  color: var(--global-secondary-color);
}

.blog-article-newer {
  color: var(--global-main-color);
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
  font-family: var(--global-content-font-family);
  font-size: var(--global-content-font-size);
  font-style: var(--global-content-font-style);
  font-weight: var(--global-content-font-weight);
  line-height: var(--global-content-line-height);
  letter-spacing: var(--global-content-letter-spacing);
  color: var(--global-content-color);
  text-align: var(--global-content-text-alignment);
  text-decoration: var(--global-content-text-decoration);
  text-transform: var(--global-content-text-transform);
  background-color: var(--global-content-background-color);
}
.content-area h1,
.content-area h2,
.content-area h3,
.content-area h4,
.content-area h5,
.content-area h6 {
  font-family: var(--global-headings-font-family);
  font-style: var(--global-headings-font-style);
  font-weight: var(--global-headings-font-weight);
  line-height: var(--global-headings-line-height);
  letter-spacing: var(--global-headings-letter-spacing);
  color: var(--global-headings-color);
  text-decoration: var(--global-headings-text-decoration);
  text-transform: var(--global-headings-text-transform);
  background-color: var(--global-headings-background-color);
}
.content-area h1 {
  font-family: var(--global-title-font-family);
  font-size: var(--global-title-font-size);
  font-style: var(--global-title-font-style);
  font-weight: var(--global-title-font-weight);
  line-height: var(--global-title-line-height);
  letter-spacing: var(--global-title-letter-spacing);
  color: var(--global-title-color);
  text-align: var(--global-title-text-alignment);
  text-decoration: var(--global-title-text-decoration);
  text-transform: var(--global-title-text-transform);
  background-color: var(--global-title-background-color);
}
.content-area h2 {
  font-family: var(--global-heading-font-family);
  font-size: var(--global-heading-font-size);
  font-style: var(--global-heading-font-style);
  font-weight: var(--global-heading-font-weight);
  line-height: var(--global-heading-line-height);
  letter-spacing: var(--global-heading-letter-spacing);
  color: var(--global-heading-color);
  text-decoration: var(--global-heading-text-decoration);
  text-transform: var(--global-heading-text-transform);
  background-color: var(--global-heading-background-color);
}
.content-area h3,
.content-area h4,
.content-area h5,
.content-area h6 {
  font-family: var(--global-subheading-font-family);
  font-size: var(--global-subheading-font-size);
  font-style: var(--global-subheading-font-style);
  font-weight: var(--global-subheading-font-weight);
  line-height: var(--global-subheading-line-height);
  letter-spacing: var(--global-subheading-letter-spacing);
  color: var(--global-subheading-color);
  text-decoration: var(--global-subheading-text-decoration);
  text-transform: var(--global-subheading-text-transform);
  background-color: var(--global-subheading-background-color);
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