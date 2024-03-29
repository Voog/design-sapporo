<!DOCTYPE html>
{%- include "template-settings" -%}
{%- include "template-variables" -%}
{%- include "blog-list-variables" -%}
<html class="{{ view_mode }} {{ language_flags_mode }} {{ language_names_mode }} {{ language_menu_mode }} {{ site_search_mode }}" lang="{{ page.language_code }}">
  <head prefix="og: http://ogp.me/ns#">
    {% include "template-head" with "blog_list_page" %}
  </head>

  <body class="blog-news-page item-list-page header-menu-wide" data-search-indexing-allowed="false">
    {% include "template-svg-spritesheet" %}

    <div class="site-container">
      <div class="container-inner">
        <div class="wrap">
          {% include "site-header" %}

          <main class="page-content" role="main">
            {% include "menu-breadcrumbs" %}

            <section class="content-body">
              {%- assign content_default_title = "content" | lce -%}
              {%- assign content_default_title_tooltip = "content_tooltip_specific_page" | lce -%}
              <div class="content-area" data-search-indexing-allowed="true">{% content title=content_default_title title_tooltip=content_default_title_tooltip %}</div>
            </section>

            <section class="content-item-boxes">
              {% if site.root_item.selected? %}
                {% for level_1 in site.visible_menuitems_with_data %}
                  {% if level_1.layout_title == product_list_layout or level_1.layout_title == product_layout %}
                    {% include "product-list-item" menu_level: level_1 %}
                  {% endif %}
                {% endfor %}
              {% else %}
                {% include "product-list-loop" %}
              {% endif %}
            </section>
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
    {% include "template-tools" items_page: true %}

    <script>template.initItemsPage();</script>
  </body>
</html>
