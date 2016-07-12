<nav class="menu-language menu-language-popover menu-popover js-menu-language-popover js-prevent-sideclick">
  <ul class="menu menu-vertical menu-public">
    {% for language in site.languages %}
      <li class="menu-item">
        <a class="ico-flags ico-flag-{{ language.code }}{% if language.selected? %} selected{% endif %}" href="{{ language.url }}" data-lang-code="{{ language.code }}">{{ language.title }}</a>
        {% if language.selected? %}
          <svg class="menu-language-btn-circle" width="9" height="9" viewBox="0 0 9 9" xmlns="http://www.w3.org/2000/svg">
            <use xlink:href="#ico-circle"></use>
          </svg>
        {% endif %}
      </li>
    {% endfor %}
  </ul>
</nav>
