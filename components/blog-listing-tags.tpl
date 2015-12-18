{% if site.has_language_tags? %}
  <nav class="menu-sub">
    <ul class="menu menu-vertical menu-level-2">
      {% for tag in site.language_tags %}
        <li class="menu-item">
          <a href="{{ page.path }}/tagged/{{ tag.path }}">{{ tag.name }}</a>
        </li>
      {% endfor %}
    </ul>
  </nav>
{% endif %}
