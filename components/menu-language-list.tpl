<nav class="menu-language menu-language-list">
  <ul class="menu menu-horizontal menu-public js-menu-language-list-setting-parent">
    {% for language in site.languages %}
      <li class="menu-item">
        <a class="ico-flags ico-flag-{{ language.code }}{% if language.selected? %} selected{% endif %}" href="{{ language.url }}" data-lang-code="{{ language.code }}">
          <span class="menu-language-name">{{ language.title }}</span>
          {% if language.selected? %}
            <svg class="menu-language-btn-circle" width="9" height="9" viewBox="0 0 9 9" xmlns="http://www.w3.org/2000/svg">
              <use xlink:href="#ico-circle"></use>
            </svg>
          {% endif %}
        </a>
      </li>
    {% endfor %}

    {% if editmode and language_menu_mode == "language-menu-mode-list" %}
      <li class="menu-item menu-item-cms menu-item-language-settings js-menu-language-settings">
        <button class="btn js-menu-language-settings-toggle js-prevent-sideclick"></button>
      </li>
    {% endif %}
  </ul>
</nav>
