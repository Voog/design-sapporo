{% if site.has_language_tags? %}
  <nav class="menu-blog-tags">
    <svg class="ico-tags" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 14 14" width="14px" height="14px">
      <use xlink:href="#ico-tags"></use>
    </svg>

    <ul class="menu menu-horizontal menu-public">
      {% for tag in site.language_tags %}
        <li class="menu-item">
          <a href="{{ page.path }}/tagged/{{ tag.path }}">{{ tag.name }}{% unless forloop.last %},{% endunless %}</a>
        </li>
      {% endfor %}
    </ul>
  </nav>
{% endif %}
