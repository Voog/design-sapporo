{% comment %}Template custom styles definitions.{% endcomment %}
<style data-voog-style>
:root {
  /* VoogStyle
    "path": ["Headings", "Title"],
    "title": "Font",
    "editor": "listPicker",
    "list": {{ base_font_set }},
    "scope": "global"
  */
  --global-headings-title-font-family: "Avenir Next", "Helvetica Neue", "Helvetica", "Segoe UI", sans-serif;
  /* VoogStyle
    "path": ["Headings", "Title"],
    "title": "Alignment",
    "editor": "listPicker",
    "list": {{ base_alignment_set }},
    "scope": "global"
  */
  --global-headings-title-text-alignment: center;
  /* VoogStyle
    "path": ["Headings", "Title"],
    "title": "Character spacing",
    "editor": "rangePicker",
    "min": 0,
    "max": 5,
    "step": 0.1,
    "unit": "em",
    "scope": "global"
  */
  --global-headings-title-letter-spacing: 0;
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
  --global-headings-title-line-height: 1.3;
  /* VoogStyle
    "path": ["Headings", "Title"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global"
  */
  --global-headings-title-font-size: 50px;
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
  --global-headings-title-font-weight: 600;
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
  --global-headings-title-font-style: normal;
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
  --global-headings-title-text-decoration: none;
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
  --global-headings-title-text-transform: none;
  /* VoogStyle
    "path": ["Headings", "Title"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global"
  */
  --global-headings-title-color: black;
  /* VoogStyle
    "path": ["Headings", "Heading"],
    "title": "Font",
    "editor": "listPicker",
    "list": {{ base_font_set }},
    "scope": "global"
  */
  --global-headings-heading-font-family: "Avenir Next", "Helvetica Neue", "Helvetica", "Segoe UI", sans-serif;
  /* VoogStyle
    "path": ["Headings", "Heading"],
    "title": "Alignment",
    "editor": "listPicker",
    "list": {{ base_alignment_set }},
    "scope": "global"
  */
  --global-headings-heading-text-alignment: left;
  /* VoogStyle
    "path": ["Headings", "Heading"],
    "title": "Character spacing",
    "editor": "rangePicker",
    "min": 0,
    "max": 5,
    "step": 0.1,
    "unit": "em",
    "scope": "global"
  */
  --global-headings-heading-letter-spacing: 0;
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
  --global-headings-heading-line-height: 1.3;
  /* VoogStyle
    "path": ["Headings", "Heading"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global"
  */
  --global-headings-heading-font-size: 27px;
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
  --global-headings-heading-font-weight: 600;
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
  --global-headings-heading-font-style: normal;
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
  --global-headings-heading-text-decoration: none;
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
  --global-headings-heading-text-transform: none;
  /* VoogStyle
    "path": ["Headings", "Heading"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global"
  */
  --global-headings-heading-color: black;
  /* VoogStyle
    "path": ["Headings", "Subheading"],
    "title": "Font",
    "editor": "listPicker",
    "list": {{ base_font_set }},
    "scope": "global"
  */
  --global-headings-subheading-font-family: "Avenir Next", "Helvetica Neue", "Helvetica", "Segoe UI", sans-serif;
  /* VoogStyle
    "path": ["Headings", "Subheading"],
    "title": "Alignment",
    "editor": "listPicker",
    "list": {{ base_alignment_set }},
    "scope": "global"
  */
  --global-headings-subheading-text-alignment: left;
  /* VoogStyle
    "path": ["Headings", "Subheading"],
    "title": "Character spacing",
    "editor": "rangePicker",
    "min": 0,
    "max": 5,
    "step": 0.1,
    "unit": "em",
    "scope": "global"
  */
  --global-headings-subheading-letter-spacing: 0;
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
  --global-headings-subheading-line-height: 1.3;
  /* VoogStyle
    "path": ["Headings", "Subheading"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global"
  */
  --global-headings-subheading-font-size: 24px;
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
  --global-headings-subheading-font-weight: 600;
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
  --global-headings-subheading-font-style: normal;
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
  --global-headings-subheading-text-decoration: none;
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
  --global-headings-subheading-text-transform: none;
  /* VoogStyle
    "path": ["Headings", "Subheading"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global"
  */
  --global-headings-subheading-color: black;
}

</style>
