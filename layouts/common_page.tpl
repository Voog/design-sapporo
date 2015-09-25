<!DOCTYPE html>
<html class="common-page" lang="{{ page.language_code }}">
  <head prefix="og: http://ogp.me/ns#">
    {% include "html-head" %}
  </head>

  <body class="{{ mode_class }}">
    <div class="site-container">
      {% include "site-header" %}

      <main class="page-content" role="main">
        <header class="content-area">
          {% contentblock name="content_header" publish_default_content="true" %}<h1>{{ page.title }}</h1>{% endcontentblock %}
        </header>

        <section class="inner content-area" data-search-indexing-allowed="true">{% content %}</section>
      </main>

      {% include "site-footer" %}

      {% include "site-javascripts" %}
    </div>
  </body>
</html>
