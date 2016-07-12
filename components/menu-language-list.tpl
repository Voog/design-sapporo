<nav class="menu-language menu-list js-menu-language-list">
  <ul class="menu menu-horizontal menu-public">
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

  {% comment %}
  {% if editmode %}
    <ul class="menu menu-vertical menu-cms">
      {% if editmode %}
        <li class="menu-item">{% languageadd %}</li>
      {% endif %}
    </ul>

    <ul class="menu menu-vertical menu-cms-options menu-language-options">
      <li class="menu-item">
        <button class="js-toggle-language-flags">
          <span class="language-flags-enable">{{ "enable_lang_flags" | lc: editor_locale }}</span>
          <span class="language-flags-disable">{{ "disable_lang_flags" | lc: editor_locale }}</span>
        </button>
      </li>

      <li class="menu-item">
        <button class="js-toggle-language-menu-style">
          <span class="language-flags-list">{{ "list_lang_menu" | lc: editor_locale }}</span>
          <span class="language-flags-popover">{{ "popover_lang_menu" | lc: editor_locale }}</span>
        </button>
      </li>
    </ul>
  {% endif %}
  {% endcomment %}
</nav>
