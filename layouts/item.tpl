<!DOCTYPE html>
{% include "template-variables" %}

{% unless page.image %}
  {% assign page_image_state = "without-image" %}
{% else %}
  {% assign page_image_state = "with-image" %}

  {% if page.image.width > page.image.height %}
    {% assign page_image_orientation = "image-landscape" %}
  {% elsif page.image.width == page.image.height %}
    {% assign page_image_orientation = "image-square" %}
  {% else %}
    {% assign page_image_orientation = "image-portrait" %}
  {% endif %}

  {% if page.data.image_crop_state %}
    {% assign page_image_crop_state = page.data.image_crop_state %}
  {% else %}
    {% assign page_image_crop_state = "not-cropped" %}
  {% endif %}
{% endunless %}

<html class="{{ view_mode }} {{ language_flags_mode }} {{ language_names_mode }} {{ language_menu_mode }} {{ site_search_mode }}" lang="{{ page.language_code }}">
  <head prefix="og: http://ogp.me/ns#">
    {% include "template-head" %}
  </head>

  <body class="item-page header-menu-wide">
    {% include "template-svg-spritesheet" %}

    <div class="site-container">
      <div class="container-inner">
        <div class="wrap">
          {% include "site-header" %}

          <main class="page-content" role="main">
            <div class="items-body" {{ edy_intro_edit_text }}>
              {% if editmode %}
                <div class="blog-article-newer {{ page_image_state }} js-blog-article-newer" data-item-type="page" data-article-id="{{ page.page_id }}">
                  <div class="article-top js-bg-picker-area">
                    <button class="btn bg-picker-btn js-bg-picker-btn" data-bg-key="image" data-bg-picture-boolean="true" data-bg-color-boolean="false" data-bg-image="{{ page.image.for-width-680.url }}" data-bg-target-width="680"></button>

                    <button class="btn bg-crop-btn {% if page_image_orientation == "image-square" or page.image == nil %}is-hidden{% else %}is-visible{% endif %} js-toggle-crop-state">
                      <svg width="45" height="45" viewBox="0 0 45 45" xmlns="http://www.w3.org/2000/svg">
                        <use xlink:href="#ico-toggle"></use>
                      </svg>
                    </button>

                    <div class="top-inner aspect-ratio-inner image-drop-area {{ page_image_orientation }} {{ page_image_crop_state }} js-img-drop-area" data-image="{{ page.image.for-width-680.url }}"></div>
                  </div>
                </div>
              {% else %}
                <div class="blog-article-newer {{ page_image_state }} js-blog-article-newer" href="{{ page.url }}">
                  <div class="article-top">
                    <div class="top-inner aspect-ratio-inner">
                      {% if page.image %}
                        <div class="loader js-loader"></div>
                        <img class="article-image {{ page_image_orientation }} {{ page_image_crop_state }} js-lazyload" data-original="{{ page.image.for-width-680.url }}">
                      {% else %}
                        <div class="article-placeholder">{{ page.title | truncate: 50 }}</div>
                      {% endif %}
                    </div>
                  </div>
                </div>
              {% endif %}

              <div class="content-body">
                <header class="content-header">
                  <div class="content-area">
                    <h1 class="align-left">{% contentblock name="content_header" publish_default_content="true" single="plaintext" %}{{ page.title }}{% endcontentblock %}</h1>
                  </div>
                </header>

                <div class="content-area area-normal" data-search-indexing-allowed="true">{% content %}</div>
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

    {% include "template-javascripts" %}
    {% include "blog-listing-tools" %}

    <script>template.initBlogPage();</script>
  </body>
</html>