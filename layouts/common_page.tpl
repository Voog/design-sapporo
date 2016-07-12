<!DOCTYPE html>
{% include "template-variables" %}
<html class="{{ view_mode }} {{ language_flags_mode }} {{ language_menu_mode }}" lang="{{ page.language_code }}">
  <head prefix="og: http://ogp.me/ns#">
    {% include "template-head" %}
  </head>

  <body class="common-page header-menu-wide">
    {% include "template-svg-spritesheet" %}

    <div class="site-container">
      <div class="container-inner">
        <div class="wrap">
          {% include "site-header" %}

          <main class="page-content" role="main">
            <header class="content-header">
              <div class="content-area">{% contentblock name="content_header" publish_default_content="true" %}<h1>{{ page.title }}</h1>{% endcontentblock %}</div>
            </header>

            <section class="content-body">
              <div class="content-area area-normal inner" data-search-indexing-allowed="true">{% content %}</div>

              <div class="content-bottom content-area" data-search-indexing-allowed="true">{% content name="bottom" %}</div>
            </section>
          </main>


          {% include "site-footer" %}
        </div>
      </div>
    </div>

    {% if show_language_menu_popover %}
      {% include "menu-language-popover" %}
    {% endif %}

    {% include "menu-language-settings" %}

    {% include "template-javascripts" %}
  </body>
</html>
