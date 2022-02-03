<!DOCTYPE html>
{% include "template-variables" %}

{%- assign productImage = product.image -%}
{% if productImage == blank %}
  {% assign product_image_state = "without-image" %}
{% else %}
  {% assign product_image_state = "with-image" %}

  {% if productImage.width > productImage.height %}
    {% assign product_image_orientation = "image-landscape" %}
  {% elsif productImage.width == productImage.height %}
    {% assign product_image_orientation = "image-square" %}
  {% else %}
    {% assign product_image_orientation = "image-portrait" %}
  {% endif %}
{% endif %}

<html class="{{ view_mode }} {{ language_flags_mode }} {{ language_names_mode }} {{ language_menu_mode }} {{ site_search_mode }}" lang="{{ page.language_code }}">
  <head prefix="og: http://ogp.me/ns#">
    {% include "template-head" %}
  </head>

  <body class="item-page product-page header-menu-wide">
    {% include "template-svg-spritesheet" %}
    <div class="site-container">
      <div class="container-inner">
        <div class="wrap">
          {% include "site-header" %}

          <main class="page-content" role="main">
            <div class="items-body pad_t-20">
              <div class="content-illustrations">
                <div class="content-item-box {{ product_image_state }}">
                  <div class="item-top">
                    {%- if productImage != blank -%}
                    <div class="loader js-loader"></div>
                    <div class="top-inner aspect-ratio-inner">
                      {%- assign imageClass = "item-image " | append: "not-cropped " | append: product_image_orientation -%}
                      {% image productImage target_width: "1280" class: imageClass loading: "lazy" %}
                    </div>
                    {%- endif -%}
                  </div>
                </div>

                <div class="content-gallery content-area" data-search-indexing-allowed="true">
                  {% content bind=product name="gallery" %}
                </div>
              </div>

              <div class="content-body">
                <header class="content-header">
                  <div class="content-item-title content-area" data-search-indexing-allowed="true">
                    <h1>{%- editable product.name -%}</h1>
                  </div>
                </header>

                <div class="content-area area-normal" data-search-indexing-allowed="true">
                  {%- if editmode or product.description != blank -%}
                    <div class="content-product-description">
                      {%- editable product.description -%}
                    </div>
                  {%- endif -%}

                  {% content bind=product %}
                  {% include "buy-button" %}
                </div>
              </div>
            </div>
          </main>

          {% include "site-footer" %}
        </div>
      </div>
    </div>

    {% if show_language_menu_popover %}
      {% include "menu-language-popover" %}
    {% endif %}

    {% include "site-signout" %}
    {% include "template-javascripts" %}
    {% include "template-tools" %}
  </body>
</html>
