:root {
  /* VoogStyle
    "pathI18n": ["custom_styles.blog"],
    "titleI18n": "custom_styles.nr_of_rows",
    "editor": "listPicker",
    "list": {{ base_number_of_columns_set }},
    "featured": true,
    "scope": "global"
  */
  --global-article-box-width: 33.3%;
  /* VoogStyle
    "pathI18n": ["custom_styles.blog", "custom_styles.article_box"],
    "titleI18n": "custom_styles.image_radius",
    "editor": "rangePicker",
    "min": 0,
    "max": 100,
    "step": 1,
    "unit": "%",
    "scope": "global"
  */
  --global-article-box-image-radius: 0;
  /* VoogStyle
    "pathI18n": ["custom_styles.blog", "custom_styles.article_box", "custom_styles.normal"],
    "titleI18n": "custom_styles.font",
    "editor": "listPicker",
    "list": {{ base_font_set }},
    "featured": true,
    "scope": "global"
  */
  --global-article-box-font-family: "Avenir Next", "Helvetica Neue", "Helvetica", "Segoe UI", sans-serif;
  /* VoogStyle
    "pathI18n": ["custom_styles.blog", "custom_styles.article_box", "custom_styles.normal"],
    "titleI18n": "custom_styles.character_spacing",
    "editor": "rangePicker",
    "min": 0,
    "max": 5,
    "step": 0.1,
    "unit": "em",
    "scope": "global"
  */
  --global-article-box-letter-spacing: 0;
  /* VoogStyle
    "pathI18n": ["custom_styles.blog", "custom_styles.article_box", "custom_styles.normal"],
    "titleI18n": "custom_styles.line_height",
    "editor": "rangePicker",
    "min": 1,
    "max": 5,
    "step": 0.1,
    "unit": "",
    "scope": "global"
  */
  --global-article-box-line-height: 1.2;
  /* VoogStyle
    "pathI18n": ["custom_styles.blog", "custom_styles.article_box", "custom_styles.normal"],
    "titleI18n": "custom_styles.opacity",
    "editor": "rangePicker",
    "min": 0.1,
    "max": 1,
    "step": 0.1,
    "unit": "",
    "scope": "global"
  */
  --global-article-box-opacity: 1;
  /* VoogStyle
    "pathI18n": ["custom_styles.blog", "custom_styles.article_box", "custom_styles.hover"],
    "titleI18n": "custom_styles.opacity",
    "editor": "rangePicker",
    "min": 0.1,
    "max": 1,
    "step": 0.1,
    "unit": "",
    "scope": "global"
  */
  --global-article-box-hover-opacity: .8;
  /* VoogStyle
    "pathI18n": ["custom_styles.blog", "custom_styles.article_box", "custom_styles.normal"],
    "titleI18n": "custom_styles.size",
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
    "pathI18n": ["custom_styles.blog", "custom_styles.article_box", "custom_styles.hover"],
    "titleI18n": "custom_styles.size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global"
  */
  --global-article-box-hover-font-size: 18px;
  /* VoogStyle
    "pathI18n": ["custom_styles.blog", "custom_styles.article_box", "custom_styles.normal"],
    "titleI18n": "custom_styles.font_size",
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
    "pathI18n": ["custom_styles.blog", "custom_styles.article_box", "custom_styles.hover"],
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
  --global-article-box-hover-font-weight: 400;
  /* VoogStyle
    "pathI18n": ["custom_styles.blog", "custom_styles.article_box", "custom_styles.normal"],
    "titleI18n": "custom_styles.font_style",
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
    "pathI18n": ["custom_styles.blog", "custom_styles.article_box", "custom_styles.hover"],
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
  --global-article-box-hover-font-style: normal;
  /* VoogStyle
    "pathI18n": ["custom_styles.blog", "custom_styles.article_box", "custom_styles.normal"],
    "titleI18n": "custom_styles.text_decoration",
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
    "pathI18n": ["custom_styles.blog", "custom_styles.article_box", "custom_styles.hover"],
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
  --global-article-box-hover-text-decoration: none;
  /* VoogStyle
    "pathI18n": ["custom_styles.blog", "custom_styles.article_box", "custom_styles.normal"],
    "titleI18n": "custom_styles.text_transform",
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
    "pathI18n": ["custom_styles.blog", "custom_styles.article_box", "custom_styles.hover"],
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
  --global-article-box-hover-text-transform: none;
  /* VoogStyle
    "pathI18n": ["custom_styles.blog", "custom_styles.article_box", "custom_styles.normal"],
    "titleI18n": "custom_styles.color",
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
    "pathI18n": ["custom_styles.blog", "custom_styles.article_box", "custom_styles.hover"],
    "titleI18n": "custom_styles.color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global"
  */
  --global-article-box-hover-color: rgba(0, 0, 0, 0.8);
}