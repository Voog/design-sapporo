<!DOCTYPE html>
{% include "template-variables" %}
<html class="{{ view_mode }} menu-main-closed site-search-closed" lang="{{ page.language_code }}">
  <head prefix="og: http://ogp.me/ns#">
    {% include "template-head" %}
  </head>

  <body class="front-page {{ language_flags_mode }}">
    {% include "template-svg-spritesheet" %}

    <div class="site-container">
      <div class="wrap">
        {% include "site-header" %}

        <main class="page-content" role="main">
          <section class="inner content-area" data-search-indexing-allowed="true">{% content %}</section>
        </main>

        {% include "site-footer" %}
      </div>
    </div>

    {% include "menu-language-popover" %}

    {% include "template-javascripts" %}
  </body>
</html>
