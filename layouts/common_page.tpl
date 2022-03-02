<!DOCTYPE html>
{%- include "template-settings" -%}
{%- include "template-variables" -%}
<html class="{{ view_mode }} {{ language_flags_mode }} {{ language_names_mode }} {{ language_menu_mode }} {{ site_search_mode }}" lang="{{ page.language_code }}">
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

            <section class="content-body" {{ edy_intro_edit_text }}>
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

    {% include "site-signout" %} 
    {% include "template-javascripts" %}
  </body>
</html>
