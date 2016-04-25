:root {
  /* VoogStyle
    "pathI18n": ["custom_styles.table"],
    "titleI18n": "custom_styles.padding",
    "editor": "rangePicker",
    "min": 0,
    "max": 200,
    "step": 1,
    "unit": "px",
    "scope": "global"
  */
  --table-padding: 10px;
  /* VoogStyle
    "pathI18n": ["custom_styles.table"],
    "titleI18n": "custom_styles.border_thickness",
    "editor": "rangePicker",
    "min": 1,
    "max": 10,
    "step": 1,
    "unit": "px",
    "featured": true,
    "scope": "global"
  */
  --table-border-width: 1px;
  /* VoogStyle
    "pathI18n": ["custom_styles.table"],
    "titleI18n": "custom_styles.border_style",
    "editor": "listPicker",
    "list": {{ base_border_style_set }},
    "featured": true,
    "scope": "global"
  */
  --table-border-style: solid;
  /* VoogStyle
    "pathI18n": ["custom_styles.table"],
    "titleI18n": "custom_styles.border_color",
    "editor": "colorPicker",
    "featured": true,
    "scope": "global"
  */
  --table-border-color: #d2d2d2;
  /* VoogStyle
    "pathI18n": ["custom_styles.table"],
    "titleI18n": "custom_styles.size",
    "editor": "rangePicker",
    "min": 8,
    "max": 100,
    "unit": "px",
    "scope": "global"
  */
  --table-font-size: 18px;
  /* VoogStyle
    "pathI18n": ["custom_styles.table"],
    "titleI18n": "custom_styles.font_size",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "600",
      "off": "400"
    },
    "icon": "bold",
    "scope": "global"
  */
  --table-font-weight: 400;
  /* VoogStyle
    "pathI18n": ["custom_styles.table"],
    "titleI18n": "custom_styles.font_style",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "italic",
      "off": "normal"
    },
    "icon": "italic",
    "scope": "global"
  */
  --table-font-style: normal;
  /* VoogStyle
    "pathI18n": ["custom_styles.table"],
    "titleI18n": "custom_styles.text_decoration",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "underline",
      "off": "none"
    },
    "icon": "underline",
    "scope": "global"
  */
  --table-text-decoration: none;
  /* VoogStyle
    "pathI18n": ["custom_styles.table"],
    "titleI18n": "custom_styles.text_transform",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "uppercase",
      "off": "none"
    },
    "icon": "uppercase",
    "scope": "global"
  */
  --table-text-transform: none;
  /* VoogStyle
    "pathI18n": ["custom_styles.table"],
    "titleI18n": "custom_styles.color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global"
  */
  --table-text-color: rgba(0, 0, 0, 0.8);
}
