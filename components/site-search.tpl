{% comment %}Site search settings are located in "sources/javascript/base.js" file –> "bindSiteSearch" function.{% endcomment %}
{% if site.search.enabled %}
  <div class="site-search js-prevent-sideclick">
    <form class="search-form js-search-form" method="get">
      <input class="search-input" type="search" placeholder="{{ 'search' | lc }}...">
    </form>

    <div class="voog-search-modal js-voog-search-modal"></div>
  </div>
{% endif %}
