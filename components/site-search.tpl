{% comment %}Site search settings are located in "sources/javascript/base.js" file –> "bindSiteSearch" function.{% endcomment %}
{% if site.search.enabled %}
  <button class="site-search-btn js-toggle-site-search js-prevent-sideclick">
    <svg class="ico-search" width="18" height="19" viewBox="0 0 18 19" xmlns="http://www.w3.org/2000/svg">
      <use xlink:href="#ico-search"></use>
    </svg>
  </button>

  <div class="site-search js-prevent-sideclick">
    <form class="search-form js-search-form" method="get">
      <input class="search-input js-search-input" type="search" placeholder="{{ 'search' | lc }}...">
    </form>

    <div class="voog-search-modal js-voog-search-modal">

    </div>
  </div>
{% endif %}
