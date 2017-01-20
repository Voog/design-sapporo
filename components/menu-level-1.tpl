<ul class="menu menu-horizontal menu-public menu-level-1{% if menu_current %} menu-current{% endif %}">
  {% unless site.root_item.hidden? %}
    <li class="menu-item{% if site.root_item.selected? %} item-current{% endif %}{% if site.root_item.layout_title == product_list_layout and show_product_related_pages_in_main_menu != true %}{% if page.layout_title == product_list_layout or page.layout_title == product_layout %} item-product-selected{% endif %}{% endif %} js-prevent-link-click">
      {% menulink site.root_item %}

      {% if blog_pages_size == 1 %}
        {% include "blog-list-tags" with blog_first.path %}
      {% endif %}
    </li>
  {% endunless %}

  {% for level_1 in site.visible_menuitems %}
    {% if level_1.blog? %}
      {% if blog_pages_size > 1 or site.root_item.layout_title != front_page_layout %}
        {% include "menu-level-1-link" %}
      {% endif %}
    {% else %}
      {% if site.root_item.layout_title == product_list_layout %}
        {% if editmode %}
          {% include "menu-level-1-link" render_product_related_pages: true %}
        {% else %}
          {% unless show_product_related_pages_in_main_menu %}
            {% unless item.layout_title == product_list_layout or item.layout_title == product_layout %}
              {% include "menu-level-1-link" render_product_related_pages: true %}
            {% endunless %}
          {% else %}
            {% unless item.layout_title == product_layout %}
              {% include "menu-level-1-link" %}
            {% endunless %}
          {% endunless %}
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
