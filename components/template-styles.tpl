{% comment %}
================================================================================
TEMPLATE DESIGN EDITOR STYLES.
Adds template design editor style overrides.
================================================================================
{% endcomment %}
<style data-voog-style>
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
    "list": {% include "template-fonts" %},
    "featured": true,
    "scope": "global"
  */
  --global-main-font-family: "Avenir Next", "Helvetica Neue", "Helvetica", "Segoe UI", sans-serif;
  /* VoogStyle
    "path": ["Main Styles"],
    "title": "Main color",
    "editor": "colorPicker",
    "scope": "global"
  */
  --global-main-color: rgba(0, 0, 0, 0.8);
  /* VoogStyle
    "path": ["Main Styles"],
    "title": "Secondary color",
    "editor": "colorPicker",
    "scope": "global"
  */
  --global-secondary-color: black;
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

{{ site.style_tag }}</style>

{{ site.style_tag }}