body {
  font-family: var(--global-main-font-family);
  color: var(--global-secondary-color);
  background-color: var(--global-body-background-color);
}

.wrap {
  max-width: var(--global-wrap-max-width);
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

.menu-level-1 > .menu-item:hover > a {
  font-style: var(--global-menu-main-hover-font-style);
  font-weight: var(--global-menu-main-hover-font-weight);
  color: var(--global-menu-main-hover-color);
  text-decoration: var(--global-menu-main-hover-text-decoration);
  text-transform: var(--global-menu-main-hover-text-transform);
}
.menu-level-1 > .menu-item.item-current > a {
  font-style: var(--global-menu-main-active-font-style);
  font-weight: var(--global-menu-main-active-font-weight);
  color: var(--global-menu-main-active-color);
  text-decoration: var(--global-menu-main-active-text-decoration);
  text-transform: var(--global-menu-main-active-text-transform);
}
.menu-level-1 > .menu-item > a {
  font-size: var(--global-menu-main-font-size);
  font-style: var(--global-menu-main-font-style);
  font-weight: var(--global-menu-main-font-weight);
  color: var(--global-menu-main-color);
  text-decoration: var(--global-menu-main-text-decoration);
  text-transform: var(--global-menu-main-text-transform);
}

.menu-level-2 .menu-item a {
  font-size: var(--global-menu-sub-font-size);
  font-style: var(--global-menu-sub-font-style);
  font-weight: var(--global-menu-sub-font-weight);
  line-height: var(--global-menu-sub-line-height);
  color: var(--global-menu-sub-color);
  text-decoration: var(--global-menu-sub-text-decoration);
  text-transform: var(--global-menu-sub-text-transform);
}
.menu-level-2 .menu-item a:hover {
  font-style: var(--global-menu-sub-hover-font-style);
  font-weight: var(--global-menu-sub-hover-font-weight);
  color: var(--global-menu-sub-hover-color);
  text-decoration: var(--global-menu-sub-hover-text-decoration);
  text-transform: var(--global-menu-sub-hover-text-transform);
}
.menu-level-2 .menu-item a.selected {
  font-style: var(--global-menu-sub-active-font-style);
  font-weight: var(--global-menu-sub-active-font-weight);
  color: var(--global-menu-sub-active-color);
  text-decoration: var(--global-menu-sub-active-text-decoration);
  text-transform: var(--global-menu-sub-active-text-transform);
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
  font-size: var(--global-article-box-font-size);
  font-style: var(--global-article-box-font-style);
  font-weight: var(--global-article-box-font-weight);
  line-height: var(--global-article-box-line-height);
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
  font-size: var(--global-header-body-font-size);
  font-style: var(--global-header-body-font-style);
  font-weight: var(--global-header-body-font-weight);
  color: var(--global-header-body-color);
  text-decoration: var(--global-header-body-text-decoration);
  text-transform: var(--global-header-body-text-transform);
}
.page-content .content-area {
  font-size: var(--global-content-body-font-size);
  font-style: var(--global-content-body-font-style);
  font-weight: var(--global-content-body-font-weight);
  line-height: var(--global-content-body-line-height);
  color: var(--global-content-body-color);
  text-align: var(--global-content-body-text-alignment);
  text-decoration: var(--global-content-body-text-decoration);
  text-transform: var(--global-content-body-text-transform);
}
.site-footer .content-area {
  font-size: var(--global-footer-body-font-size);
  font-style: var(--global-footer-body-font-style);
  font-weight: var(--global-footer-body-font-weight);
  line-height: var(--global-footer-body-line-height);
  color: var(--global-footer-body-color);
  text-align: var(--global-footer-body-text-alignment);
  text-decoration: var(--global-footer-body-text-decoration);
  text-transform: var(--global-footer-body-text-transform);
}
.content-area h1 {
  color: var(--global-headings-title-color);
}
.site-header .content-area h1, .page-content .content-area h1, .site-footer .content-area h1, .site-header
.content-area h1 a, .page-content
.content-area h1 a, .site-footer
.content-area h1 a, .site-header
.content-area h1 a:hover, .page-content
.content-area h1 a:hover, .site-footer
.content-area h1 a:hover {
  font-size: var(--global-headings-title-font-size);
  font-style: var(--global-headings-title-font-style);
  font-weight: var(--global-headings-title-font-weight);
  line-height: var(--global-headings-title-line-height);
  text-align: var(--global-headings-title-text-alignment);
  text-decoration: var(--global-headings-title-text-decoration);
  text-transform: var(--global-headings-title-text-transform);
}
.content-area h2:not(.comments-title) {
  color: var(--global-headings-heading-color);
}
.site-header .content-area h2:not(.comments-title), .page-content .content-area h2:not(.comments-title), .site-footer .content-area h2:not(.comments-title), .site-header
.content-area h2:not(.comments-title) a, .page-content
.content-area h2:not(.comments-title) a, .site-footer
.content-area h2:not(.comments-title) a, .site-header
.content-area h2:not(.comments-title) a:hover, .page-content
.content-area h2:not(.comments-title) a:hover, .site-footer
.content-area h2:not(.comments-title) a:hover {
  font-size: var(--global-headings-heading-font-size);
  font-style: var(--global-headings-heading-font-style);
  font-weight: var(--global-headings-heading-font-weight);
  line-height: var(--global-headings-heading-line-height);
  text-align: var(--global-headings-heading-text-alignment);
  text-decoration: var(--global-headings-heading-text-decoration);
  text-transform: var(--global-headings-heading-text-transform);
}
.content-area h3,
.content-area h4,
.content-area h5,
.content-area h6 {
  color: var(--global-headings-subheading-color);
}
.site-header .content-area h3, .page-content .content-area h3, .site-footer .content-area h3, .site-header
.content-area h3 a, .page-content
.content-area h3 a, .site-footer
.content-area h3 a, .site-header
.content-area h3 a:hover, .page-content
.content-area h3 a:hover, .site-footer
.content-area h3 a:hover, .site-header
.content-area h4, .page-content
.content-area h4, .site-footer
.content-area h4, .site-header
.content-area h4 a, .page-content
.content-area h4 a, .site-footer
.content-area h4 a, .site-header
.content-area h4 a:hover, .page-content
.content-area h4 a:hover, .site-footer
.content-area h4 a:hover, .site-header
.content-area h5, .page-content
.content-area h5, .site-footer
.content-area h5, .site-header
.content-area h5 a, .page-content
.content-area h5 a, .site-footer
.content-area h5 a, .site-header
.content-area h5 a:hover, .page-content
.content-area h5 a:hover, .site-footer
.content-area h5 a:hover, .site-header
.content-area h6, .page-content
.content-area h6, .site-footer
.content-area h6, .site-header
.content-area h6 a, .page-content
.content-area h6 a, .site-footer
.content-area h6 a, .site-header
.content-area h6 a:hover, .page-content
.content-area h6 a:hover, .site-footer
.content-area h6 a:hover {
  font-size: var(--global-headings-subheading-font-size);
  font-style: var(--global-headings-subheading-font-style);
  font-weight: var(--global-headings-subheading-font-weight);
  line-height: var(--global-headings-subheading-line-height);
  text-align: var(--global-headings-subheading-text-alignment);
  text-decoration: var(--global-headings-subheading-text-decoration);
  text-transform: var(--global-headings-subheading-text-transform);
}
.site-header .content-area a {
  color: var(--global-header-body-color);
}
.page-content .content-area a, .site-footer .content-area a {
  font-style: var(--global-content-link-font-style);
  font-weight: var(--global-content-link-font-weight);
  color: var(--global-content-link-color);
  text-decoration: var(--global-content-link-text-decoration);
  text-transform: var(--global-content-link-text-transform);
}
.page-content .content-area a:hover, .site-footer .content-area a:hover {
  font-style: var(--global-content-link-hover-font-style);
  font-weight: var(--global-content-link-hover-font-weight);
  color: var(--global-content-link-hover-color);
  text-decoration: var(--global-content-link-hover-text-decoration);
  text-transform: var(--global-content-link-hover-text-transform);
}
.content-area ul,
.content-area ol,
.content-area dl {
  font-size: var(--global-list-font-size);
  font-style: var(--global-list-font-style);
  font-weight: var(--global-list-font-weight);
  color: var(--global-list-color);
  text-decoration: var(--global-list-text-decoration);
  text-transform: var(--global-list-text-transform);
}
.content-area a.custom-btn {
  padding: calc(var(--global-content-button-padding) - 16px) var(--global-content-button-padding) calc(var(--global-content-button-padding) - 17px);
  font-size: var(--global-content-button-font-size);
  font-style: var(--global-content-button-font-style);
  font-weight: var(--global-content-button-font-weight);
  color: var(--global-content-button-color);
  text-decoration: var(--global-content-button-text-decoration);
  text-transform: var(--global-content-button-text-transform);
  background-color: var(--global-content-button-background-color);
}
.content-area a.custom-btn:hover {
  font-style: var(--global-content-button-hover-font-style);
  font-weight: var(--global-content-button-hover-font-weight);
  color: var(--global-content-button-hover-color);
  text-decoration: var(--global-content-button-hover-text-decoration);
  text-transform: var(--global-content-button-hover-text-transform);
  background-color: var(--global-content-button-hover-background-color);
}
.site-header .content-area table th, .site-header .content-area table th:hover, .page-content .content-area table th, .page-content .content-area table th:hover, .site-footer .content-area table th, .site-footer .content-area table th:hover, .site-header
.content-area table td, .site-header
.content-area table td:hover, .page-content
.content-area table td, .page-content
.content-area table td:hover, .site-footer
.content-area table td, .site-footer
.content-area table td:hover, .site-header
.content-area table a, .site-header
.content-area table a:hover, .page-content
.content-area table a, .page-content
.content-area table a:hover, .site-footer
.content-area table a, .site-footer
.content-area table a:hover, .site-header
.content-area table a:hover, .site-header
.content-area table a:hover:hover, .page-content
.content-area table a:hover, .page-content
.content-area table a:hover:hover, .site-footer
.content-area table a:hover, .site-footer
.content-area table a:hover:hover {
  font-size: var(--global-table-font-size);
  font-style: var(--global-table-font-style);
  font-weight: var(--global-table-font-weight);
  line-height: var(--global-table-line-height);
  text-decoration: var(--global-table-text-decoration);
  text-transform: var(--global-table-text-transform);
}
.content-area table td,
.content-area table th {
  padding: var(--global-table-padding);
  color: var(--global-table-text-color);
  border-color: var(--global-table-border-color);
  border-style: var(--global-table-border-style);
  border-width: var(--global-table-border-width);
}

.content-area .form,
.content-area form {
  padding: var(--global-form-padding);
  background-color: var(--global-form-background-color);
}

.form_field_textfield,
.form_field_textarea {
  font-size: var(--global-form-field-font-size);
  font-style: var(--global-form-field-font-style);
  font-weight: var(--global-form-field-font-weight);
  line-height: var(--global-form-field-line-height);
  color: var(--global-form-field-color);
  text-decoration: var(--global-form-field-text-decoration);
  text-transform: var(--global-form-field-text-transform);
  background-color: var(--global-form-field-background-color);
  border-color: var(--global-form-field-border-color);
  border-width: var(--global-form-field-border-width);
}

.form_submit input {
  padding: calc(var(--global-form-button-padding) - 16px) var(--global-form-button-padding) calc(var(--global-form-button-padding) - 17px);
  font-size: var(--global-form-button-font-size);
  font-style: var(--global-form-button-font-style);
  font-weight: var(--global-form-button-font-weight);
  line-height: var(--global-form-button-line-height);
  color: var(--global-form-button-color);
  text-decoration: var(--global-form-button-text-decoration);
  text-transform: var(--global-form-button-text-transform);
  background-color: var(--global-form-button-background-color);
}
.form_submit input:hover {
  font-size: var(--global-form-button-hover-font-size);
  font-style: var(--global-form-button-hover-font-style);
  font-weight: var(--global-form-button-hover-font-weight);
  text-decoration: var(--global-form-button-hover-text-decoration);
  text-transform: var(--global-form-button-hover-text-transform);
  color: var(--global-form-button-hover-color);
  background-color: var(--global-form-button-hover-background-color);
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
