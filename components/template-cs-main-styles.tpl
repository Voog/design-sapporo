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
  --wrap-max-width: 1140px;
  /* VoogStyle
    "pathI18n": ["custom_styles.main_styles"],
    "titleI18n": "custom_styles.font",
    "editor": "listPicker",
    "list": {{ base_font_set }},
    "featured": true,
    "scope": "global"
  */
  --main-font-family: "Avenir Next", "Helvetica Neue", "Helvetica", "Segoe UI", sans-serif;
  /* VoogStyle
    "pathI18n": ["custom_styles.main_styles", "custom_styles.colors"],
    "titleI18n": "custom_styles.primary_color",
    "editor": "colorPicker",
    "featured": true,
    "scope": "global",
    "boundVariables": [
      "--content-color",
      "--header-body-color",
      "--menu-main-color",
      "--menu-sub-color",
      "--content-body-color",
      "--list-color",
      "--table-text-color",
      "--article-box-color",
      "--footer-body-color"
    ]
  */
  --main-color: rgba(0, 0, 0, 0.8);
  /* VoogStyle
    "pathI18n": ["custom_styles.main_styles", "custom_styles.colors"],
    "titleI18n": "custom_styles.secondary_color",
    "editor": "colorPicker",
    "featured": true,
    "scope": "global",
    "boundVariables": [
      "--header-body-hover-color",
      "--headings-title-color",
      "--headings-heading-color",
      "--headings-subheading-color",
      "--content-link-color",
      "--form-field-color",
      "--footer-link-color"
    ]
  */
  --secondary-color: black;
  /* VoogStyle
    "pathI18n": ["custom_styles.main_styles", "custom_styles.colors"],
    "titleI18n": "custom_styles.background_color",
    "editor": "colorPicker",
    "featured": true,
    "scope": "global"
  */
  --body-background-color: rgba(0, 0, 0, 0.02);
}
