{% comment %}TEMPLATE'S GLOBAL JAVASCRIPTS{% endcomment %}
{% include "template-tools" %}

{% comment %}Main template functionality.{% endcomment %}
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.lazyload/1.9.1/jquery.lazyload.min.js" integrity="sha256-rXnOfjTRp4iAm7hTAxEz3irkXzwZrElV2uRsdJAYjC4=" crossorigin="anonymous"></script> 
<script src="{{ javascripts_path }}/main.min.js"></script>

{% comment %}Site search related javascript components.{% endcomment %}
{% if site.search.enabled %}
  <script src="{{ site.static_asset_host }}/libs/edicy-search/latest/edicy-search.js"></script>
  <script>template.bindSiteSearch($('.js-search-form').get(0), '{{ page.language_code }}');</script>
{% endif %}

{% comment %}CMS related javascripts components.{% endcomment %}
{% sitejs_include %}

{% comment %}Google analytics initiation.{% endcomment %}
{{ site.analytics }}
