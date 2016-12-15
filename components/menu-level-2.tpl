{% if editmode or level_1.children? %}
  <div class="menu-sub js-menu-sub">
    <ul class="menu menu-vertical menu-level-2">
      {% if level_1.children? %}
        <li class="menu-item hidden-mobile">
          <a class="{% if level_1.current? %} selected current{% endif %}" href="{{ level_1.url }}">{{ level_1.title }}</a>
        </li>
      {% endif %}

      {% for level_2 in level_1.visible_children %}
        {% unless level_2.layout_title == product_layout %}
          <li class="menu-item">{% menulink level_2 %}</li>
        {% endunless %}
      {% endfor %}
    </ul>

    {% if editmode %}
      <ul class="menu menu-vertical menu-cms">
        {% if level_1.hidden_children.size > 0 %}
          <li class="menu-item">{% menubtn level_1.hidden_children %}</li>
        {% endif %}

        <li class="menu-item">{% menuadd parent="level_1" %}</li>
      </ul>
    {% endif %}
  </div>
{% endif %}
