:root {
  /* VoogStyle
    "pathI18n": ["custom_styles.main_styles"],
    "titleI18n": "custom_styles.maximum_width",
    "editor": "rangePicker",
    "min": 600,
    "max": 2000,
    "step": 1,
    "unit": "px",
    "scope": "global"
  */
  --global-wrap-max-width: 1140px;
  /* VoogStyle
    "pathI18n": ["custom_styles.main_styles"],
    "titleI18n": "custom_styles.padding",
    "editor": "rangePicker",
    "min": 0,
    "max": 200,
    "step": 1,
    "unit": "px",
    "scope": "global"
  */
  --global-wrap-padding: 20px;
  /* VoogStyle
    "pathI18n": ["custom_styles.main_styles"],
    "titleI18n": "custom_styles.font",
    "editor": "listPicker",
    "list": {{ base_font_set }},
    "featured": true,
    "scope": "global",
    "boundVariables": [
      "--global-headings-title-font-family",
      "--global-headings-heading-font-family",
      "--global-headings-subheading-font-family",
      "--global-content-body-font-family"
    ]
  */
  --global-main-font-family: "Avenir Next", "Helvetica Neue", "Helvetica", "Segoe UI", sans-serif;
  /* VoogStyle
    "pathI18n": ["custom_styles.main_styles", "custom_styles.colors"],
    "titleI18n": "custom_styles.primary_color",
    "editor": "colorPicker",
    "featured": true,
    "scope": "global",
    "boundVariables": [
      "--global-content-color",
      "--global-header-body-color",
      "--global-menu-main-color",
      "--global-menu-sub-color",
      "--global-content-body-color",
      "--global-list-color",
      "--global-article-box-color",
      "--global-footer-body-color"
    ]
  */
  --global-main-color: rgba(0, 0, 0, 0.8);
  /* VoogStyle
    "pathI18n": ["custom_styles.main_styles", "custom_styles.colors"],
    "titleI18n": "custom_styles.secondary_color",
    "editor": "colorPicker",
    "featured": true,
    "scope": "global",
    "boundVariables": [
      "--global-header-body-hover-color",
      "--global-headings-title-color",
      "--global-headings-heading-color",
      "--global-headings-subheading-color",
      "--global-content-link-color",
      "--global-content-button-color",
      "--global-form-field-color",
      "--global-footer-link-color"
    ]
  */
  --global-secondary-color: black;
  /* VoogStyle
    "pathI18n": ["custom_styles.main_styles", "custom_styles.colors"],
    "titleI18n": "custom_styles.background_color",
    "editor": "colorPicker",
    "featured": true,
    "scope": "global"
  */
  --global-body-background-color: rgba(0, 0, 0, 0.02);
}
