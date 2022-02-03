<!DOCTYPE html>
{% include "template-variables" %}

{% if product.image == blank %}
  {% assign product_image_state = "without-image" %}
{% else %}
  {% assign product_image_state = "with-image" %}
{% endif %}

<html class="{{ view_mode }} {{ language_flags_mode }} {{ language_names_mode }} {{ language_menu_mode }} {{ site_search_mode }}" lang="{{ page.language_code }}">
  <head prefix="og: http://ogp.me/ns#">
    {% include "template-head" with "product_page" %}
  </head>

  <body class="item-page product-page header-menu-wide">
    {% capture bottom_content_html %}
      {% unless editmode %}
        {% content bind=product name="content" %}
      {% endunless %}
    {% endcapture %}

    {% assign bottom_content_size = bottom_content_html | strip | size %}

    {% capture gallery_content_html %}
      {% unless editmode %}
        {% content bind=product name="gallery" %}
      {% endunless %}
    {% endcapture %}

    {% assign gallery_content_size = gallery_content_html | strip | size %}

    {% include "template-svg-spritesheet" %}
    <div class="site-container">
      <div class="container-inner">
        <div class="wrap">
          {% include "site-header" %}

          <main class="page-content" role="main">
            {% include "menu-breadcrumbs-sd" %}
            <div class="items-body pad_t-20">
              <div class="flex-col mar_r-40">
                <div class="content-illustrations">
                  <div class="content-item-box {{ product_image_state }} product-content js-content-item-box">
                    <div class="item-top">
                      {%- if product.image != blank -%}
                      <div class="top-inner aspect-ratio-inner">
                        {%- assign image_class = "item-image " | append: "not-cropped" -%}
                        {% image product.image target_width: "1280" class: image_class loading: "lazy" %}
                      </div>
                      {%- endif -%}
                    </div>
                  </div>

                  {% if editmode or gallery_content_size > 0 %}
                    <div class="content-gallery js-product-gallery content-area" data-search-indexing-allowed="true">
                      {% content bind=product name="gallery" %}
                    </div>
                  {% endif %}
                </div>
              </div>
              <div class="flex-col">
                <div class="content-body">
                  <div class="product-content-right js-product-right-content">
                    <header class="content-header">
                      <div class="content-item-title content-area" data-search-indexing-allowed="true">
                        <h1>{%- editable product.name -%}</h1>
                      </div>
                    </header>

                    <div class="product-price">
                      {%- if product.price_max_with_tax != product.price_min_with_tax -%}
                        {{ product.price_min_with_tax | money_with_currency: product.currency -}}
                        <span class="product-price-divider">–</span>
                      {%- endif -%}
                      {{ product.price_max_with_tax | money_with_currency: product.currency -}}
                    </div>

                    <div class="content-area area-normal" data-search-indexing-allowed="true">
                      {%- if editmode or product.description != blank -%}
                        <div class="content-product-description">
                          {%- editable product.description -%}
                        </div>
                      {%- endif -%}

                      <div class="buy-btn-content js-buy-btn-content">
                        {% include "buy-button" %}
                      </div>
                      {% content bind=product %}
                      
                    </div>
                  </div>
                </div>
              </div>
            </div>

            {%- if bottom_content_size > 0 or editmode -%}
              <section
                class="content-product-wide content-area"
                data-search-indexing-allowed="true">
                {% content bind=product name="content" %}
              </section>
            {%- endif -%}
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

    <script> 
      if (template) {
        template.handleProductPageContent();
      }
    </script>
  </body>
</html>
