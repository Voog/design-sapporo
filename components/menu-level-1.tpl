<nav class="menu-level-1">
  <ul class="menu">
    {% unless site.root_item.hidden? %}
      <li>{% menulink site.root_item %}</li>
    {% endunless %}

    {% for item in site.visible_menuitems %}
      <li>{% menulink item %}<li>
    {% endfor %}
  </ul>

  {% if editmode %}
    <ul class="menu menu-cms">
      {% if site.hidden_menuitems.size > 0 %}
        <li>{% menubtn site.hidden_menuitems %}</li>
      {% endif %}

      <li>{% menuadd %}</li>
    </ul>
  {% endif %}
</nav>
