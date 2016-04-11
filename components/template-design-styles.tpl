{% comment %}
================================================================================
TEMPLATE DESIGN EDITOR STYLES.
Adds template design editor style overrides.
================================================================================
{% endcomment %}
<style data-voog-style>
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

.header-menu-compact .menu-main {
  background-color: var(--global-menu-main-compact-background-color);
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

.header-menu-wide .menu-level-1 > .menu-item:not(:last-child) {
  margin-right: var(--global-menu-main-margin);
}
.menu-level-1 > .menu-item:hover > a {
  font-size: var(--global-menu-main-hover-font-size);
  font-style: var(--global-menu-main-hover-font-style);
  font-weight: var(--global-menu-main-hover-font-weight);
  color: var(--global-menu-main-hover-color);
  text-decoration: var(--global-menu-main-hover-text-decoration);
  text-transform: var(--global-menu-main-hover-text-transform);
  background-color: var(--global-menu-main-hover-background-color);
  opacity: var(--global-menu-main-hover-opacity);
}
.menu-level-1 > .menu-item.item-current > a {
  font-size: var(--global-menu-main-active-font-size);
  font-style: var(--global-menu-main-active-font-style);
  font-weight: var(--global-menu-main-active-font-weight);
  color: var(--global-menu-main-active-color);
  text-decoration: var(--global-menu-main-active-text-decoration);
  text-transform: var(--global-menu-main-active-text-transform);
  background-color: var(--global-menu-main-active-background-color);
  opacity: var(--global-menu-main-active-opacity);
}
.menu-level-1 > .menu-item > a {
  padding-right: var(--global-menu-main-padding);
  padding-left: var(--global-menu-main-padding);
  font-family: var(--global-menu-main-font-family);
  font-size: var(--global-menu-main-font-size);
  font-style: var(--global-menu-main-font-style);
  font-weight: var(--global-menu-main-font-weight);
  line-height: var(--global-menu-main-line-height);
  letter-spacing: var(--global-menu-main-letter-spacing);
  color: var(--global-menu-main-color);
  text-decoration: var(--global-menu-main-text-decoration);
  text-transform: var(--global-menu-main-text-transform);
  background-color: var(--global-menu-main-background-color);
  opacity: var(--global-menu-main-opacity);
}

.menu-level-2 .menu-item a {
  font-family: var(--global-menu-sub-font-family);
  font-size: var(--global-menu-sub-font-size);
  font-style: var(--global-menu-sub-font-style);
  font-weight: var(--global-menu-sub-font-weight);
  line-height: var(--global-menu-sub-line-height);
  letter-spacing: var(--global-menu-sub-letter-spacing);
  color: var(--global-menu-sub-color);
  text-decoration: var(--global-menu-sub-text-decoration);
  text-transform: var(--global-menu-sub-text-transform);
  background-color: var(--global-menu-sub-background-color);
  opacity: var(--global-menu-sub-opacity);
}
.menu-level-2 .menu-item a:hover {
  font-size: var(--global-menu-sub-hover-font-size);
  font-style: var(--global-menu-sub-hover-font-style);
  font-weight: var(--global-menu-sub-hover-font-weight);
  color: var(--global-menu-sub-hover-color);
  text-decoration: var(--global-menu-sub-hover-text-decoration);
  text-transform: var(--global-menu-sub-hover-text-transform);
  background-color: var(--global-menu-sub-hover-background-color);
  opacity: var(--global-menu-sub-hover-opacity);
}
.menu-level-2 .menu-item a.selected {
  font-size: var(--global-menu-sub-active-font-size);
  font-style: var(--global-menu-sub-active-font-style);
  font-weight: var(--global-menu-sub-active-font-weight);
  color: var(--global-menu-sub-active-color);
  text-decoration: var(--global-menu-sub-active-text-decoration);
  text-transform: var(--global-menu-sub-active-text-transform);
  background-color: var(--global-menu-sub-active-background-color);
  opacity: var(--global-menu-sub-active-opacity);
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

.blog-listing-page .blog-article-newer:not(.cms-blog-article-add-button) .top-inner {
  opacity: var(--global-article-box-opacity);
}
.blog-listing-page .blog-article-newer:not(.cms-blog-article-add-button):hover .top-inner {
  opacity: var(--global-article-box-hover-opacity);
}
.blog-listing-page .blog-article-newer:not(.cms-blog-article-add-button):hover .article-title {
  font-size: var(--global-article-box-hover-font-size);
  font-style: var(--global-article-box-hover-font-style);
  font-weight: var(--global-article-box-hover-font-weight);
  color: var(--global-article-box-hover-color);
  text-decoration: var(--global-article-box-hover-text-decoration);
  text-transform: var(--global-article-box-hover-text-transform);
}
.blog-listing-page .blog-article-newer:not(.cms-blog-article-add-button) .article-title {
  font-family: var(--global-article-box-font-family);
  font-size: var(--global-article-box-font-size);
  font-style: var(--global-article-box-font-style);
  font-weight: var(--global-article-box-font-weight);
  line-height: var(--global-article-box-line-height);
  letter-spacing: var(--global-article-box-letter-spacing);
  color: var(--global-article-box-color);
  text-decoration: var(--global-article-box-text-decoration);
  text-transform: var(--global-article-box-text-transform);
}
@media screen and (min-width: 641px) {
  .blog-listing-page .blog-article-newer {
    width: var(--global-article-box-width);
  }
}

.article-top .top-inner {
  border-radius: var(--global-article-box-image-radius);
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
.site-header .content-area {
  font-family: var(--global-header-body-font-family);
  font-size: var(--global-header-body-font-size);
  font-style: var(--global-header-body-font-style);
  font-weight: var(--global-header-body-font-weight);
  line-height: var(--global-header-body-line-height);
  letter-spacing: var(--global-header-body-letter-spacing);
  color: var(--global-header-body-color);
  text-decoration: var(--global-header-body-text-decoration);
  text-transform: var(--global-header-body-text-transform);
}
.page-content .content-area {
  font-family: var(--global-content-body-font-family);
  font-size: var(--global-content-body-font-size);
  font-style: var(--global-content-body-font-style);
  font-weight: var(--global-content-body-font-weight);
  line-height: var(--global-content-body-line-height);
  letter-spacing: var(--global-content-body-letter-spacing);
  color: var(--global-content-body-color);
  text-align: var(--global-content-body-text-alignment);
  text-decoration: var(--global-content-body-text-decoration);
  text-transform: var(--global-content-body-text-transform);
}
.site-footer .content-area {
  font-family: var(--global-footer-body-font-family);
  font-size: var(--global-footer-body-font-size);
  font-style: var(--global-footer-body-font-style);
  font-weight: var(--global-footer-body-font-weight);
  line-height: var(--global-footer-body-line-height);
  letter-spacing: var(--global-footer-body-letter-spacing);
  color: var(--global-footer-body-color);
  text-align: var(--global-footer-body-text-alignment);
  text-decoration: var(--global-footer-body-text-decoration);
  text-transform: var(--global-footer-body-text-transform);
}
.content-area h1 {
  font-family: var(--global-content-title-font-family);
  font-size: var(--global-content-title-font-size);
  font-style: var(--global-content-title-font-style);
  font-weight: var(--global-content-title-font-weight);
  line-height: var(--global-content-title-line-height);
  letter-spacing: var(--global-content-title-letter-spacing);
  color: var(--global-content-title-color);
  text-align: var(--global-content-title-text-alignment);
  text-decoration: var(--global-content-title-text-decoration);
  text-transform: var(--global-content-title-text-transform);
}
.content-area h2:not(.comments-title) {
  font-family: var(--global-content-heading-font-family);
  font-size: var(--global-content-heading-font-size);
  font-style: var(--global-content-heading-font-style);
  font-weight: var(--global-content-heading-font-weight);
  line-height: var(--global-content-heading-line-height);
  letter-spacing: var(--global-content-heading-letter-spacing);
  color: var(--global-content-heading-color);
  text-align: var(--global-content-heading-text-alignment);
  text-decoration: var(--global-content-heading-text-decoration);
  text-transform: var(--global-content-heading-text-transform);
}
.content-area h3,
.content-area h4,
.content-area h5,
.content-area h6 {
  font-family: var(--global-content-subheading-font-family);
  font-size: var(--global-content-subheading-font-size);
  font-style: var(--global-content-subheading-font-style);
  font-weight: var(--global-content-subheading-font-weight);
  line-height: var(--global-content-subheading-line-height);
  letter-spacing: var(--global-content-subheading-letter-spacing);
  color: var(--global-content-subheading-color);
  text-align: var(--global-content-subheading-text-alignment);
  text-decoration: var(--global-content-subheading-text-decoration);
  text-transform: var(--global-content-subheading-text-transform);
}
.site-header .content-area a {
  color: var(--global-header-body-color);
}
.site-header .content-area a:hover {
  font-size: var(--global-header-body-hover-font-size);
  font-style: var(--global-header-body-hover-font-style);
  font-weight: var(--global-header-body-hover-font-weight);
  color: var(--global-header-body-hover-color);
  text-decoration: var(--global-header-body-hover-text-decoration);
  text-transform: var(--global-header-body-hover-text-transform);
  background-color: var(--global-header-body-hover-background-color);
}
.page-content .content-area a, .site-footer .content-area a {
  padding-right: var(--global-content-link-padding);
  padding-left: var(--global-content-link-padding);
  font-family: var(--global-content-link-font-family);
  font-style: var(--global-content-link-font-style);
  font-weight: var(--global-content-link-font-weight);
  line-height: var(--global-content-link-line-height);
  letter-spacing: var(--global-content-link-letter-spacing);
  color: var(--global-content-link-color);
  text-decoration: var(--global-content-link-text-decoration);
  text-transform: var(--global-content-link-text-transform);
  background-color: var(--global-content-link-background-color);
}
.page-content .content-area a:hover, .site-footer .content-area a:hover {
  font-style: var(--global-content-link-hover-font-style);
  font-weight: var(--global-content-link-hover-font-weight);
  color: var(--global-content-link-hover-color);
  text-decoration: var(--global-content-link-hover-text-decoration);
  text-transform: var(--global-content-link-hover-text-transform);
  background-color: var(--global-content-link-hover-background-color);
}
.page-content .content-area a {
  font-size: var(--global-content-link-font-size);
}
.page-content .content-area a:hover {
  font-size: var(--global-content-link-hover-font-size);
}
.content-area a.custom-btn {
  padding-right: var(--global-content-button-padding);
  padding-left: var(--global-content-button-padding);
  font-family: var(--global-content-button-font-family);
  font-size: var(--global-content-button-font-size);
  font-style: var(--global-content-button-font-style);
  font-weight: var(--global-content-button-font-weight);
  line-height: var(--global-content-button-line-height);
  letter-spacing: var(--global-content-button-letter-spacing);
  color: var(--global-content-button-color);
  text-decoration: var(--global-content-button-text-decoration);
  text-transform: var(--global-content-button-text-transform);
  background-color: var(--global-content-button-background-color);
}
.content-area a.custom-btn:hover {
  font-size: var(--global-content-button-hover-font-size);
  font-style: var(--global-content-button-hover-font-style);
  font-weight: var(--global-content-button-hover-font-weight);
  color: var(--global-content-button-hover-color);
  text-decoration: var(--global-content-button-hover-text-decoration);
  text-transform: var(--global-content-button-hover-text-transform);
  background-color: var(--global-content-button-hover-background-color);
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