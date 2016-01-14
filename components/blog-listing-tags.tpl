{% if site.has_language_tags? %}
  {% assign page_path = level_1.path %}

  {% blogcontext page_path %}
    <nav class="menu-sub">
      <ul class="menu menu-vertical menu-level-2">
        {% for tag in blog.tags %}
          {% assign current_class = "" %}
          {% for tmptag in tags %}
            {% if tmptag.name == tag.name %}
              {% assign current_class = "selected current" %}
            {% endif %}
          {% endfor %}

          <li class="menu-item">
            <a {% if current_class %}class="{{ current_class }}"{% endif %} href="/{{ level_1.path }}/tagged/{{ tag.path }}">{{ tag.name }}</a>
          </li>
        {% endfor %}
      </ul>
    </nav>
  {% endblogcontext %}
{% endif %}
