{% if editmode or level_1.visible_children.size > 0 %}
  {% assign has_content_sub_pages = false %}

  {% unless editmode %}
    {% for level_2 in level_1.visible_children %}
      {% if level_2.layout_title != product_layout %}
        {% assign has_content_sub_pages = true %}
        {% break %}
      {% endif %}
    {% endfor %}
  {% endunless %}

  {% if editmode or has_content_sub_pages %}
    <div class="menu-sub js-menu-sub">
      <ul class="menu menu-vertical menu-level-2">

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
{% endif %}
