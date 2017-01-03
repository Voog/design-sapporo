<!DOCTYPE html>
{% include "template-variables" %}
{% include "blog-list-variables" %}
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
            {% include "product-breadcrumbs" %}

            <section class="content-body">
              <div class="content-area" {{ edy_intro_edit_text }}>{% content %}</div>
            </section>

            <section class="content-item-boxes">
              {% if site.root_item.selected? %}
                {% for level_1 in site.visible_menuitems_with_data %}
                  {% if level_1.layout_title == product_list_layout or level_1.layout_title == product_layout %}
                    {% include "product-list-item" menu_level: level_1 %}
                  {% endif %}
                {% endfor %}
              {% else %}
                {% for level_1 in site.visible_menuitems %}
                  {% if level_1.selected? %}
                    {% for level_2 in level_1.visible_children_with_data %}
                      {% if level_1.current? %}
                        {% if level_2.layout_title == product_list_layout or level_2.layout_title == product_layout %}
                          {% include "product-list-item" menu_level: level_2 %}
                        {% endif %}
                      {% else %}
                        {% if level_2.selected? %}
                          {% for level_3 in level_2.visible_children_with_data %}
                            {% if level_3.layout_title == product_list_layout or level_3.layout_title == product_layout %}
                              {% include "product-list-item" menu_level: level_3 %}
                            {% endif %}
                          {% endfor %}
                        {% endif %}
                      {% endif %}
                    {% endfor %}
                  {% endif %}
                {% endfor %}
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

    {% include "template-javascripts" %}
    {% include "blog-list-tools" %}

    <script>template.initItemsPage();</script>
  </body>
</html>
