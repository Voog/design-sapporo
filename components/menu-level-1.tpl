<ul class="menu menu-horizontal menu-public menu-level-1{% if menu_current %} menu-current{% endif %}">
  {% unless site.root_item.hidden? %}
    <li class="menu-item{% if site.root_item.selected? %} item-current{% endif %} js-prevent-link-click">
      {% menulink site.root_item %}
    </li>
  {% endunless %}

  {% for level_1 in site.visible_menuitems %}
    {% include "menu-level-1-link" %}
  {% endfor %}

  {% if editmode %}
    {% if site.hidden_menuitems.size > 0 %}
      <li class="menu-item menu-item-cms">{% menubtn site.hidden_menuitems %}</li>
    {% endif %}

    <li class="menu-item menu-item-cms">{% menuadd %}</li>
  {% endif %}
</ul>
