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
            <section class="content-item-boxes">
              {% if site.root_item.selected? %}
                {% if editmode %}
                  <ul class="menu menu-horizontal menu-cms">
                    {% if site.untranslated_menuitems.size > 0 %}
                      <li class="menu-item menu-item-cms">{% menubtn site.untranslated_menuitems %}</li>
                    {% endif %}

                    {% if site.hidden_menuitems.size > 0 %}
                      <li class="menu-item menu-item-cms">{% menubtn site.hidden_menuitems %}</li>
                    {% endif %}

                    <li class="menu-item menu-item-cms">{% menuadd %}</li>

                    {% if site.root_item.selected? %}
                      <li class="menu-item menu-item-cms float-right">
                        <a class="js-root-item-settings-toggle"></a>
                      </li>
                    {% endif %}
                  </ul>
                {% endif %}

                {% for level_1 in site.visible_menuitems_with_data %}
                  {% if level_1.layout_title == product_list_layout or level_1.layout_title == product_layout %}
                    {% include "product-list-item" menu_level: level_1 %}
                  {% endif %}
                {% endfor %}
              {% else %}
                {% for level_1 in site.visible_menuitems %}
                  {% if level_1.selected? and level_1.children? or editmode %}
                    {% if page.level == 1 and editmode %}
                      <ul class="menu menu-horizontal menu-cms">
                        {% if level_1.hidden_children.size > 0 %}
                          <li class="menu-item menu-item-cms">{% menubtn level_1.hidden_children %}</li>
                        {% endif %}
                        <li class="menu-item menu-item-cms">{% menuadd parent="level_1" %}</li>
                      </ul>
                    {% endif %}

                    {% for level_2 in level_1.visible_children_with_data %}
                      {% if page.level == 1 %}
                        {% if level_2.layout_title == product_list_layout or level_2.layout_title == product_layout %}
                          {% include "product-list-item" menu_level: level_2 %}
                        {% endif %}
                      {% elsif page.level == 2 %}
                        {% if level_2.selected? and level_2.children? or editmode %}
                          {% comment %}TODO: Convert to custom boxes{% endcomment %}
                          {% if editmode %}
                            <ul class="menu menu-horizontal menu-cms">
                              {% if level_2.hidden_children.size > 0 %}
                                <li class="menu-item menu-item-cms">{% menubtn level_1.hidden_children %}</li>
                              {% endif %}
                              <li class="menu-item menu-item-cms">{% menuadd parent="level_2" %}</li>
                            </ul>
                          {% endif %}

                          {% for level_3 in level_2.visible_children_with_data %}
                            {% if level_2.layout_title == product_list_layout or level_2.layout_title == product_layout %}
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
