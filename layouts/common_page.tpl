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
              {%- assign page_title_content_title = "title" | lce -%}
              {%- assign page_title_content_title_tooltip = "content_tooltip_current_page_title" | lce -%}
              <div class="content-area">{% contentblock name="content_header" publish_default_content="true" title=page_title_content_title title_tooltip=page_title_content_title_tooltip %}<h1>{{ page.title }}</h1>{% endcontentblock %}</div>
            </header>

            <section class="content-body" {{ edy_intro_edit_text }}>
              {%- assign content_default_title = "content" | lce -%}
              <div class="content-area area-normal inner" data-search-indexing-allowed="true">{% content title=content_default_title %}</div>

              {%- assign bottom_content_title = "additional_content" | lce -%}
              {%- assign bottom_content_title_tooltip = "content_tooltip_additional_information" | lce -%}
              <div class="content-bottom content-area" data-search-indexing-allowed="true">{% content name="bottom" title=bottom_content_title title_tooltip=bottom_content_title_tooltip %}</div>
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
