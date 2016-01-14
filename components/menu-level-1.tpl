<ul class="menu menu-horizontal menu-public menu-level-1{% if menu_current %} menu-current{% endif %}">
  {% unless site.root_item.hidden? %}
    <li class="menu-item">{% menulink site.root_item %}</li>
  {% endunless %}

  {% for level_1 in site.visible_menuitems %}
    <li class="menu-item{% if level_1.selected? %} item-current{% endif %}">
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

      {% unless level_1.blog? %}
        {% include "menu-level-2" %}
      {% else %}
        {% include "blog-listing-tags" %}
      {% endunless %}
    </li>
  {% endfor %}
</ul>

{% if editmode %}
  <ul class="menu menu-horizontal menu-cms{% if page.level == 0 %} menu-current{% endif %}">
    {% if site.hidden_menuitems.size > 0 %}
      <li class="menu-item">{% menubtn site.hidden_menuitems %}</li>
    {% endif %}

    <li class="menu-item">{% menuadd %}</li>
  </ul>
{% endif %}
