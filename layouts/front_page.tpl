<!DOCTYPE html>
<html class="front-page" lang="{{ page.language_code }}">
  <head prefix="og: http://ogp.me/ns#">
    {% include "html-head" %}
  </head>

  <body class="{{ mode_class }}">
    <div class="site-container">
      {% include "site-header" %}

      <main class="page-content" role="main">
        <section class="content-area" data-search-indexing-allowed="true">{% content %}</section>
      </main>

      {% include "site-footer" %}

      {% include "template-javascripts" %}
    </div>
  </body>
</html>
