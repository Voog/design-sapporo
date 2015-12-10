<header class="site-header">
  <div class="header-title content-area">
    {% editable site.header %}
  </div>

  <div class="header-menu">
    <button class="btn menu-btn js-toggle-menu-main js-prevent-sideclick">{{ "menu" | lc }}</button>
    {% include "menu-main" %}

    {% if editmode or site.has_many_languages? %}
      <button class="menu-language-btn ico-flags ico-flag-{{ page.language_code }} js-toggle-menu-language js-prevent-sideclick">
        <span>{{ current_language_title }}</span>
        <svg class="menu-language-btn-triangle" width="7" height="5" viewBox="0 0 7 5" xmlns="http://www.w3.org/2000/svg">
          <use xlink:href="#ico-triangle"></use>
        </svg>
      </button>
    {% endif %}

    {% include "site-search" %}
  </div>
</header>
