{% comment %}Template custom styles definitions.{% endcomment %}
<style data-voog-style>
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
      "--global-content-title-font-family",
      "--global-content-heading-font-family",
      "--global-content-subheading-font-family",
      "--global-content-body-font-family"
    ]
  */
  --global-main-font-family: "Avenir Next", "Helvetica Neue", "Helvetica", "Segoe UI", sans-serif;
  /* VoogStyle
    "pathI18n": ["custom_styles.main_styles", "custom_styles.colors"],
    "titleI18n": "custom_styles.main_color",
    "editor": "colorPicker",
    "featured": true,
    "scope": "global",
    "boundVariables": [
      "--global-content-color",
      "--global-header-body-color",
      "--global-menu-main-color",
      "--global-menu-sub-color",
      "--global-content-body-color",
      "--global-content-list-color",
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
      "--global-content-title-color",
      "--global-content-heading-color",
      "--global-content-subheading-color",
      "--global-content-link-color",
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

</style>
