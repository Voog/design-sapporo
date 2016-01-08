{% if site.has_language_tags? %}
  {% assign page_path = level_1.path %}
  
  {% blogcontext page_path %}
    <nav class="menu-sub">
      <ul class="menu menu-vertical menu-level-2">
        {% for tag in blog.tags %}
          {% assign active_item = "" %}
          {% for tmptag in tags %}
            {% if tmptag.name == tag.name %}
              {% assign active_item = "active" %}
            {% endif %}
          {% endfor %}

          <li class="menu-item">
            <a {% if active_item %}class="{{ active_item }}"{% endif %} href="/{{ level_1.path }}/tagged/{{ tag.path }}">{{ tag.name }}</a>
          </li>
        {% endfor %}
      </ul>
    </nav>
  {% endblogcontext %}
{% endif %}
