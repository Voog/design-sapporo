<!DOCTYPE html>
{% include "template-variables" %}

{% if product.image == blank %}
  {% assign product_image_state = "without-image" %}
{% else %}
  {% assign product_image_state = "with-image" %}
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
              <div class="flex-col mar_r-40">
                <div class="content-illustrations">
                  <div class="content-item-box {{ product_image_state }} product-content">
                    <div class="item-top">
                      {%- if product.image != blank -%}
                      <div class="top-inner aspect-ratio-inner">
                        {%- assign image_class = "item-image " | append: "not-cropped" -%}
                        {% image product.image target_width: "1280" class: image_class loading: "lazy" %}
                      </div>
                      {%- endif -%}
                    </div>
                  </div>

                  <div class="content-gallery content-area" data-search-indexing-allowed="true">
                    {% content bind=product name="gallery" %}
                  </div>
                </div>
              </div>
              <div class="flex-col">
                <div class="content-body">
                  <div class="product-content-right">
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
