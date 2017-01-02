<li class="menu-item{% if level_1.selected? %} item-current{% endif %}{% if render_product_related_pages == true and level_1.layout_title == product_list_layout or level_1.layout_title == product_layout %}{% unless show_product_related_pages_in_main_menu %} is-hidden{% endunless %} js-menu-item-products{% endif %}">
  {% unless level_1.link? == true %}
    {% if level_1.children? or editmode %}
      <button class="btn btn-menu-forward js-toggle-menu-sub{% if page.level > 1 or page.path == level_1.path %} hidden{% endif %}">
        <svg width="7px" height="13px" viewBox="0 0 7 13" xmlns="http://www.w3.org/2000/svg">
          <use xlink:href="#ico-arrow"></use>
        </svg>
      </button>
    {% endif %}
  {% endunless %}

  {% menulink level_1 %}

  {% if level_1.blog? %}
    {% include "blog-list-tags" with level_1.path %}
  {% else %}
    {% include "menu-level-2" %}
  {% endif %}
</li>
