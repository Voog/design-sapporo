body {
  font-family: var(--main-font-family);
  color: var(--secondary-color);
  background-color: var(--body-background-color);
}

.wrap {
  max-width: var(--wrap-max-width);
}

.page-content {
  padding: var(--content-padding);
  background-color: var(--content-background-color);
}
.page-content .inner {
  max-width: var(--content-max-width);
}

.loader::before {
  border-top-color: var(--secondary-color);
}

.menu-btn {
  border-color: var(--secondary-color);
}
.menu-btn::before {
  background-color: var(--secondary-color);
}
.menu-main-opened .menu-btn {
  background-color: var(--secondary-color);
}

.menu-public a {
  color: var(--secondary-color);
}

.header-menu-wide .menu-horizontal .menu-item a {
  color: var(--menu-main-color);
}

.menu-main .btn:hover {
  stroke: var(--secondary-color);
}

.site-search-btn:hover .search-ico, .site-search-opened .site-search-btn .search-ico {
  fill: var(--secondary-color);
}

.search-ico {
  fill: var(--secondary-color);
}

.search-input {
  color: var(--secondary-color);
}

.search-clear {
  fill: var(--secondary-color);
}

.voog-search-modal-result h3 a {
  color: var(--secondary-color);
}

.menu-level-1 > .menu-item:hover > a {
  font-style: var(--menu-main-hover-font-style);
  font-weight: var(--menu-main-hover-font-weight);
  -webkit-text-decoration: var(--menu-main-hover-text-decoration);
          text-decoration: var(--menu-main-hover-text-decoration);
  text-transform: var(--menu-main-hover-text-transform);
}
.header-menu-wide .menu-level-1 > .menu-item:hover > a:not(.untranslated) {
  color: var(--menu-main-hover-color);
}
.menu-level-1 > .menu-item.item-current > a {
  font-style: var(--menu-main-active-font-style);
  font-weight: var(--menu-main-active-font-weight);
  -webkit-text-decoration: var(--menu-main-active-text-decoration);
          text-decoration: var(--menu-main-active-text-decoration);
  text-transform: var(--menu-main-active-text-transform);
}
.header-menu-wide .menu-level-1 > .menu-item.item-current > a:not(.untranslated) {
  color: var(--menu-main-active-color);
}
.menu-level-1 > .menu-item > a {
  font-size: var(--menu-main-font-size);
  font-style: var(--menu-main-font-style);
  font-weight: var(--menu-main-font-weight);
  -webkit-text-decoration: var(--menu-main-text-decoration);
          text-decoration: var(--menu-main-text-decoration);
  text-transform: var(--menu-main-text-transform);
}
.header-menu-wide .menu-level-1 > .menu-item > a:not(.untranslated) {
  color: var(--menu-main-color);
}

.menu-level-2 .menu-item a {
  font-size: var(--menu-sub-font-size);
  font-style: var(--menu-sub-font-style);
  font-weight: var(--menu-sub-font-weight);
  line-height: var(--menu-sub-line-height);
  -webkit-text-decoration: var(--menu-sub-text-decoration);
          text-decoration: var(--menu-sub-text-decoration);
  text-transform: var(--menu-sub-text-transform);
}
.menu-level-2 .menu-item a:hover {
  font-style: var(--menu-sub-hover-font-style);
  font-weight: var(--menu-sub-hover-font-weight);
  -webkit-text-decoration: var(--menu-sub-hover-text-decoration);
          text-decoration: var(--menu-sub-hover-text-decoration);
  text-transform: var(--menu-sub-hover-text-transform);
}
.menu-level-2 .menu-item a.selected {
  font-style: var(--menu-sub-active-font-style);
  font-weight: var(--menu-sub-active-font-weight);
  color: var(--menu-sub-active-color);
  -webkit-text-decoration: var(--menu-sub-active-text-decoration);
          text-decoration: var(--menu-sub-active-text-decoration);
  text-transform: var(--menu-sub-active-text-transform);
}
.menu-level-2 .menu-item a:not(.untranslated) {
  color: var(--menu-sub-color);
}
.menu-level-2 .menu-item a:not(.untranslated):hover {
  color: var(--menu-sub-hover-color);
}

.menu-language-btn {
  color: var(--secondary-color);
}

.menu-language .menu-item a {
  color: var(--secondary-color);
}

.menu-language-btn-circle {
  stroke: var(--secondary-color);
}

.menu-language-options button {
  color: var(--secondary-color);
}

.voog-reference a {
  color: var(--secondary-color);
}

.article-nav {
  max-width: var(--content-max-width);
}

.item-list-page .content-item-box:not(.cms-blog-article-add-button) .item-title {
  font-size: var(--article-box-font-size);
  font-style: var(--article-box-font-style);
  font-weight: var(--article-box-font-weight);
  line-height: var(--article-box-line-height);
  color: var(--article-box-color);
  -webkit-text-decoration: var(--article-box-text-decoration);
          text-decoration: var(--article-box-text-decoration);
  text-transform: var(--article-box-text-transform);
}
@media screen and (min-width: 641px) {
  .item-list-page .content-item-box {
    width: var(--article-box-width);
  }
}

.item-top .top-inner {
  border-radius: var(--article-box-image-radius);
}

.article-add-ico {
  stroke: var(--main-color);
}

.article-date {
  color: var(--secondary-color);
}

@media screen and (min-width: 641px) {
  .blog-article-page .item-title {
    font-size: var(--headings-title-font-size);
    font-style: var(--headings-title-font-style);
    font-weight: var(--headings-title-font-weight);
    color: var(--headings-title-color);
    -webkit-text-decoration: var(--headings-title-text-decoration);
            text-decoration: var(--headings-title-text-decoration);
    text-transform: var(--headings-title-text-transform);
  }
}

.content-area {
  color: var(--main-color);
}
.site-header .content-area {
  font-size: var(--header-body-font-size);
  font-style: var(--header-body-font-style);
  font-weight: var(--header-body-font-weight);
  color: var(--header-body-color);
  -webkit-text-decoration: var(--header-body-text-decoration);
          text-decoration: var(--header-body-text-decoration);
  text-transform: var(--header-body-text-transform);
}
.page-content .content-area {
  font-size: var(--content-body-font-size);
  line-height: var(--content-body-line-height);
  color: var(--content-body-color);
  text-align: var(--content-body-text-alignment);
}
.site-footer .content-area {
  font-size: var(--footer-body-font-size);
  font-style: var(--footer-body-font-style);
  font-weight: var(--footer-body-font-weight);
  color: var(--footer-body-color);
  -webkit-text-decoration: var(--footer-body-text-decoration);
          text-decoration: var(--footer-body-text-decoration);
  text-transform: var(--footer-body-text-transform);
}
.site-header .content-area:not(.content-item-title) h1, .page-content .content-area:not(.content-item-title) h1, .site-footer .content-area:not(.content-item-title) h1 {
  text-align: var(--headings-title-text-alignment);
}
.content-area h1 {
  color: var(--headings-title-color);
}
.site-header .content-area h1, .page-content .content-area h1, .site-footer .content-area h1,
.site-header .content-area h1 a,
.page-content .content-area h1 a,
.site-footer .content-area h1 a,
.site-header .content-area h1 a:hover,
.page-content .content-area h1 a:hover,
.site-footer .content-area h1 a:hover {
  font-style: var(--headings-title-font-style);
  font-weight: var(--headings-title-font-weight);
  line-height: var(--headings-title-line-height);
  -webkit-text-decoration: var(--headings-title-text-decoration);
          text-decoration: var(--headings-title-text-decoration);
  text-transform: var(--headings-title-text-transform);
}
@media screen and (min-width: 641px) {
  .site-header .content-area h1, .page-content .content-area h1, .site-footer .content-area h1,
  .site-header .content-area h1 a,
  .page-content .content-area h1 a,
  .site-footer .content-area h1 a,
  .site-header .content-area h1 a:hover,
  .page-content .content-area h1 a:hover,
  .site-footer .content-area h1 a:hover {
    font-size: var(--headings-title-font-size);
  }
}
.content-area h2:not(.comments-title) {
  color: var(--headings-heading-color);
}
.site-header .content-area h2:not(.comments-title), .page-content .content-area h2:not(.comments-title), .site-footer .content-area h2:not(.comments-title),
.site-header .content-area h2:not(.comments-title) a,
.page-content .content-area h2:not(.comments-title) a,
.site-footer .content-area h2:not(.comments-title) a,
.site-header .content-area h2:not(.comments-title) a:hover,
.page-content .content-area h2:not(.comments-title) a:hover,
.site-footer .content-area h2:not(.comments-title) a:hover {
  font-size: var(--headings-heading-font-size);
  font-style: var(--headings-heading-font-style);
  font-weight: var(--headings-heading-font-weight);
  line-height: var(--headings-heading-line-height);
  text-align: var(--headings-heading-text-alignment);
  -webkit-text-decoration: var(--headings-heading-text-decoration);
          text-decoration: var(--headings-heading-text-decoration);
  text-transform: var(--headings-heading-text-transform);
}
.content-area h3,
.content-area h4,
.content-area h5,
.content-area h6 {
  color: var(--headings-subheading-color);
}
.site-header .content-area h3, .page-content .content-area h3, .site-footer .content-area h3,
.site-header .content-area h3 a,
.page-content .content-area h3 a,
.site-footer .content-area h3 a,
.site-header .content-area h3 a:hover,
.page-content .content-area h3 a:hover,
.site-footer .content-area h3 a:hover,
.site-header .content-area h4,
.page-content .content-area h4,
.site-footer .content-area h4,
.site-header .content-area h4 a,
.page-content .content-area h4 a,
.site-footer .content-area h4 a,
.site-header .content-area h4 a:hover,
.page-content .content-area h4 a:hover,
.site-footer .content-area h4 a:hover,
.site-header .content-area h5,
.page-content .content-area h5,
.site-footer .content-area h5,
.site-header .content-area h5 a,
.page-content .content-area h5 a,
.site-footer .content-area h5 a,
.site-header .content-area h5 a:hover,
.page-content .content-area h5 a:hover,
.site-footer .content-area h5 a:hover,
.site-header .content-area h6,
.page-content .content-area h6,
.site-footer .content-area h6,
.site-header .content-area h6 a,
.page-content .content-area h6 a,
.site-footer .content-area h6 a,
.site-header .content-area h6 a:hover,
.page-content .content-area h6 a:hover,
.site-footer .content-area h6 a:hover {
  font-size: var(--headings-subheading-font-size);
  font-style: var(--headings-subheading-font-style);
  font-weight: var(--headings-subheading-font-weight);
  line-height: var(--headings-subheading-line-height);
  text-align: var(--headings-subheading-text-alignment);
  -webkit-text-decoration: var(--headings-subheading-text-decoration);
          text-decoration: var(--headings-subheading-text-decoration);
  text-transform: var(--headings-subheading-text-transform);
}
.site-header .content-area a {
  color: var(--header-body-color);
}
.page-content .content-area a, .site-footer .content-area a {
  font-style: var(--content-link-font-style);
  font-weight: var(--content-link-font-weight);
  color: var(--content-link-color);
  -webkit-text-decoration: var(--content-link-text-decoration);
          text-decoration: var(--content-link-text-decoration);
  text-transform: var(--content-link-text-transform);
}
.page-content .content-area a:hover, .site-footer .content-area a:hover {
  font-style: var(--content-link-hover-font-style);
  font-weight: var(--content-link-hover-font-weight);
  color: var(--content-link-hover-color);
  -webkit-text-decoration: var(--content-link-hover-text-decoration);
          text-decoration: var(--content-link-hover-text-decoration);
  text-transform: var(--content-link-hover-text-transform);
}
.content-area ul,
.content-area ol,
.content-area dl {
  font-size: var(--list-font-size);
  font-style: var(--list-font-style);
  font-weight: var(--list-font-weight);
  color: var(--list-color);
  -webkit-text-decoration: var(--list-text-decoration);
          text-decoration: var(--list-text-decoration);
  text-transform: var(--list-text-transform);
}
.content-area a.custom-btn,
.content-area div.custom-btn,
.content-area .edy-product-widget-list .edy-product-widget-item-wrap .edy-product-widget-item .edy-product-widget-item-details-wrap .edy-product-widget-item-btn-wrap .edy-product-widget-item-btn {
  padding: calc(var(--content-button-padding) - 16px) var(--content-button-padding) calc(var(--content-button-padding) - 17px);
  font-size: var(--content-button-font-size);
  font-style: var(--content-button-font-style);
  font-weight: var(--content-button-font-weight);
  -webkit-text-decoration: var(--content-button-text-decoration);
          text-decoration: var(--content-button-text-decoration);
  text-transform: var(--content-button-text-transform);
}
.content-area a.custom-btn:hover,
.content-area div.custom-btn:hover,
.content-area .edy-product-widget-list .edy-product-widget-item-wrap .edy-product-widget-item .edy-product-widget-item-details-wrap .edy-product-widget-item-btn-wrap .edy-product-widget-item-btn:hover {
  font-style: var(--content-button-hover-font-style);
  font-weight: var(--content-button-hover-font-weight);
  -webkit-text-decoration: var(--content-button-hover-text-decoration);
          text-decoration: var(--content-button-hover-text-decoration);
  text-transform: var(--content-button-hover-text-transform);
}
.content-area a.custom-btn:not(.custom-btn-disabled),
.content-area div.custom-btn:not(.custom-btn-disabled),
.content-area .edy-product-widget-list .edy-product-widget-item-wrap .edy-product-widget-item .edy-product-widget-item-details-wrap .edy-product-widget-item-btn-wrap .edy-product-widget-item-btn:not(.custom-btn-disabled) {
  color: var(--content-button-color);
  background-color: var(--content-button-background-color);
}
.content-area a.custom-btn:not(.custom-btn-disabled):hover,
.content-area div.custom-btn:not(.custom-btn-disabled):hover,
.content-area .edy-product-widget-list .edy-product-widget-item-wrap .edy-product-widget-item .edy-product-widget-item-details-wrap .edy-product-widget-item-btn-wrap .edy-product-widget-item-btn:not(.custom-btn-disabled):hover {
  color: var(--content-button-hover-color);
  background-color: var(--content-button-hover-background-color);
}
.content-area .edy-buy-button-price-container .edy-buy-button-effective-price,
.content-area .edy-buy-button-price-container .edy-buy-button-price-original {
  color: var(--content-body-color);
}
.site-header .content-area table th,
.site-header .content-area table td,
.site-header .content-area table a,
.site-header .content-area table a:hover, .page-content .content-area table th,
.page-content .content-area table td,
.page-content .content-area table a,
.page-content .content-area table a:hover, .site-footer .content-area table th,
.site-footer .content-area table td,
.site-footer .content-area table a,
.site-footer .content-area table a:hover {
  font-size: var(--table-font-size);
}
.site-header .content-area td,
.site-header .content-area th, .page-content .content-area td,
.page-content .content-area th, .site-footer .content-area td,
.site-footer .content-area th {
  padding: var(--table-padding);
  border-style: var(--table-border-style);
}

.product-page .content-header h1 {
  font-size: var(--product-title-size);
  font-weight: var(--product-title-font-weight);
  font-style: var(--product-title-font-style);
  -webkit-text-decoration: var(--product-title-font-text-decoration);
          text-decoration: var(--product-title-font-text-decoration);
  color: var(--product-title-color);
  text-align: var(--product-title-alignment);
}

.product-page .content-area .content-product-description {
  color: var(--product-description-color);
  font-size: var(--product-description-size);
  font-weight: var(--product-description-font-weight);
  font-style: var(--product-description-font-style);
  -webkit-text-decoration: var(--product-description-font-text-decoration);
          text-decoration: var(--product-description-font-text-decoration);
}

.product-page .product-price {
  color: var(--product-price-color);
  font-size: var(--product-price-size);
  font-weight: var(--product-price-font-weight);
  font-style: var(--product-price-font-style);
  -webkit-text-decoration: var(--product-price-font-text-decoration);
          text-decoration: var(--product-price-font-text-decoration);
}

.form_field_textfield,
.form_field_textarea {
  font-size: var(--form-field-font-size);
  font-style: var(--form-field-font-style);
  font-weight: var(--form-field-font-weight);
  color: var(--form-field-color);
  -webkit-text-decoration: var(--form-field-text-decoration);
          text-decoration: var(--form-field-text-decoration);
  text-transform: var(--form-field-text-transform);
  background-color: var(--form-field-background-color);
}

label .form_field_checkbox + .form_control_indicator::before {
  border-color: var(--secondary-color);
}
label .form_field_checkbox:checked + .form_control_indicator::before {
  background-color: var(--secondary-color);
}
label .form_field_radio + .form_control_indicator::before {
  outline-color: var(--secondary-color);
}
label .form_field_radio:checked + .form_control_indicator::before {
  background-color: var(--secondary-color);
}

.form_submit input {
  padding: calc(var(--content-button-padding) - 16px) var(--content-button-padding) calc(var(--content-button-padding) - 17px);
  font-size: var(--content-button-font-size);
  font-style: var(--content-button-font-style);
  font-weight: var(--content-button-font-weight);
  color: var(--content-button-color);
  -webkit-text-decoration: var(--content-button-text-decoration);
          text-decoration: var(--content-button-text-decoration);
  text-transform: var(--content-button-text-transform);
  background-color: var(--content-button-background-color);
}
.form_submit input:hover {
  font-style: var(--content-button-hover-font-style);
  font-weight: var(--content-button-hover-font-weight);
  color: var(--content-button-hover-color);
  -webkit-text-decoration: var(--content-button-hover-text-decoration);
          text-decoration: var(--content-button-hover-text-decoration);
  text-transform: var(--content-button-hover-text-transform);
  background-color: var(--content-button-hover-background-color);
}