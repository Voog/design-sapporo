{% if site.has_language_tags? %}
  {% assign page_path = level_1.path %}
  
  {% blogcontext page_path %}
    <nav class="menu-sub">
      <ul class="menu menu-vertical menu-level-2">
        {% for tag in blog.tags %}
          {% assign activestr = "" %}
          {% for tmptag in tags %}
            {% if tmptag.name == tag.name %}
              {% assign activestr = "active" %}
            {% endif %}
          {% endfor %}

          <li class="menu-item">
            <a {% if activestr %}class="{{ activestr }}"{% endif %} href="/{{ level_1.path }}/tagged/{{ tag.path }}">{{ tag.name }}</a>
          </li>
        {% endfor %}
      </ul>
    </nav>
  {% endblogcontext %}
{% endif %}
