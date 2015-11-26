<!DOCTYPE html>
{% include "template-variables" %}
<html class="common-page {{ view_mode }} menu-main-closed site-search-closed {{ language_flags_mode }}" lang="{{ page.language_code }}">
  <head prefix="og: http://ogp.me/ns#">
    {% include "template-head" %}
  </head>

  <body>
    {% include "template-svg-spritesheet" %}

    <div class="site-container">
      <div class="wrap">
        {% include "site-header" %}

        <main class="page-content" role="main">
          <header class="content-area">
            {% contentblock name="content_header" publish_default_content="true" %}<h1>{{ page.title }}</h1>{% endcontentblock %}
          </header>

          <section class="inner content-area" data-search-indexing-allowed="true">{% content %}</section>
        </main>

        {% include "site-footer" %}
      </div>
    </div>

    {% include "menu-language-popover" %}

    {% include "template-javascripts" %}
  </body>
</html>
