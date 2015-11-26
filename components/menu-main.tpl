<nav class="menu-main js-menu-main js-prevent-sideclick">
  <button class="btn menu-back-btn js-toggle-menu-prev{% if page.level == 0 %} hidden{% endif %}">
    <svg width="7px" height="13px" viewBox="0 0 7 13" xmlns="http://www.w3.org/2000/svg">
      <use xlink:href="#ico-arrow"></use>
    </svg>
  </button>

  <ul class="menu menu-horizontal menu-level-1 menu-public{% if page.level == 0 %} menu-current{% endif %}">
    {% unless site.root_item.hidden? %}
      <li class="menu-item">{% menulink site.root_item %}</li>
    {% endunless %}

    {% for level_1 in site.visible_menuitems %}
      <li class="menu-item{% if level_1.selected? %} item-current{% endif %}">
        {% if level_1.link? == false and editmode or level_1.children? %}
          <button class="btn js-toggle-menu-sub{% if page.level > 0 %} hidden{% endif %}">
            <svg width="7px" height="13px" viewBox="0 0 7 13" xmlns="http://www.w3.org/2000/svg">
              <use xlink:href="#ico-arrow"></use>
            </svg>
          </button>
        {% endif %}

        {% menulink level_1 %}

        {% if editmode or level_1.children? %}
          <div class="menu-sub">
            <ul class="menu menu-vertical menu-level-2">
              {% for level_2 in level_1.visible_children %}
                <li class="menu-item">{% menulink level_2 %}</li>
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
      </li>
    {% endfor %}
  </ul>

  {% if editmode %}
    <ul class="menu menu-horizontal menu-cms">
      {% if site.hidden_menuitems.size > 0 %}
        <li class="menu-item">{% menubtn site.hidden_menuitems %}</li>
      {% endif %}

      <li class="menu-item">{% menuadd %}</li>
    </ul>
  {% endif %}
</nav>
