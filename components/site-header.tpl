<header class="site-header is-loading js-site-header">
  <div class="header-title content-area js-header-title">
    {% unless editmode %}<a href="{{ site.root_item.url }}">{% endunless %}
      {% editable site.header %}
    {% unless editmode %}</a>{% endunless %}
  </div>

  <div class="header-menu js-header-menu" data-initial-width="unset">
    {% include "menu-main" %}

    {% if show_language_menu_popover %}
      <button class="menu-language-btn ico-flags ico-flag-{{ page.language_code }} js-toggle-menu-language js-menu-language-popover-btn js-prevent-sideclick" data-lang-code="{{ page.language_code }}" {{ edy_intro_add_lang }}>
        <span>{{ current_language_title }}</span>
        <svg class="menu-language-btn-circle" width="9" height="9" viewBox="0 0 9 9" xmlns="http://www.w3.org/2000/svg">
          <use xlink:href="#ico-circle"></use>
        </svg>
      </button>
    {% endif %}

    {% include "menu-language-list" %}
    
    {% include "site-search" %}

    <button class="btn menu-btn js-toggle-menu-main js-prevent-sideclick">{{ "menu" | lc }}</button>
  </div>
</header>
