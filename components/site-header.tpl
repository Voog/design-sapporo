<header class="site-header">
  <div class="header-title content-area">
    {% editable site.header %}
  </div>

  <div class="header-menu">
    {% include "menu-main" %}

    {% if editmode or site.has_many_languages? %}
      <button class="menu-language-btn ico-flags ico-flag-{{ page.language_code }} js-toggle-menu-language js-menu-language-offset-item js-prevent-sideclick">
        <span>{{ current_language_title }}</span>
        <svg class="menu-language-btn-circle" width="9" height="9" viewBox="0 0 9 9" xmlns="http://www.w3.org/2000/svg">
          <use xlink:href="#ico-circle"></use>
        </svg>
      </button>
    {% endif %}

    {% include "site-search" %}

    <button class="btn menu-btn js-toggle-menu-main js-prevent-sideclick">{{ "menu" | lc }}</button>
  </div>
</header>
