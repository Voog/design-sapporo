<ul class="menu menu-horizontal menu-public menu-level-1{% if menu_current %} menu-current{% endif %}">
  {% unless site.root_item.hidden? %}
    <li class="menu-item{% if site.root_item.selected? %} item-current{% endif %} js-prevent-link-click">
      {% menulink site.root_item %}

      {% if blog_pages_size == 1 %}
        {% include "blog-list-tags" with blog_first.path %}
      {% endif %}
    </li>
  {% endunless %}

  {% for level_1 in site.visible_menuitems %}
    {% if level_1.blog? %}
      {% if blog_pages_size > 1 %}
        {% include "menu-level-1-link" %}
      {% endif %}
    {% else %}
      {% if site.root_item.layout_title == product_list_layout %}
        {% if editmode %}
          {% unless level_1.layout_title == product_layout %}
            {% include "menu-level-1-link" render_hidden_categories: true %}
          {% endunless %}
        {% else %}
          {% if hide_categories_from_main_menu %}
            {% unless level_1.layout_title == product_list_layout or level_1.layout_title == product_layout %}
              {% include "menu-level-1-link" %}
            {% endunless %}
          {% else %}
            {% unless level_1.layout_title == product_layout %}
              {% include "menu-level-1-link" %}
            {% endunless %}
          {% endif %}
        {% endif %}
      {% else %}
        {% include "menu-level-1-link" %}
      {% endif %}
    {% endif %}
  {% endfor %}

  {% if editmode %}
    {% if site.hidden_menuitems.size > 0 %}
      <li class="menu-item menu-item-cms">{% menubtn site.hidden_menuitems %}</li>
    {% endif %}

    <li class="menu-item menu-item-cms" {{ edy_intro_add_page }}>{% menuadd %}</li>
  {% endif %}
</ul>
