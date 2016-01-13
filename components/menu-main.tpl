<nav class="menu-main js-menu-main js-prevent-sideclick">
  <button class="btn btn-menu-back js-toggle-menu-prev{% if page.level == 0 %} hidden{% endif %}">
    <svg width="7px" height="13px" viewBox="0 0 7 13" xmlns="http://www.w3.org/2000/svg">
      <use xlink:href="#ico-arrow"></use>
    </svg>
  </button>

  <div class="inner">
    {% include "menu-level-1" %}
  </div>
</nav>
