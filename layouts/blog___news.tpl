<!DOCTYPE html>
{% include "template-variables" %}
{% include "blog-list-variables" %}
{% include "blog-article-variables" %}
<html class="{{ view_mode }} {{ language_flags_mode }} {{ language_names_mode }} {{ language_menu_mode }} {{ site_search_mode }}" lang="{{ page.language_code }}">
  <head prefix="og: http://ogp.me/ns#">
    {% include "template-head" with "blog_list_page" %}
  </head>

  <body class="blog-news-page item-list-page header-menu-wide" data-search-indexing-allowed="false">
    {% include "template-svg-spritesheet" %}

    <div class="site-container">
      <div class="container-inner">
        <div class="wrap">
          {% include "site-header" %}

          <main class="page-content" role="main">
            <section class="content-body">
              <div class="content-area" {{ edy_intro_edit_text }}>{% content %}</div>
            </section>

            <section class="content-item-boxes">
              {% if tags %}
                <h1>{{ tags_title }}</h1>
              {% endif %}

              {% if editmode %}
                {% include "blog-list-article-add" %}
              {% endif %}

              {% for article in articles %}
                {% include "blog-settings-variables" %}
                {% include "blog-list-article" %}
              {% endfor %}
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
    {% include "template-tools" items_page: true %}

    <script>template.initItemsPage();</script>
  </body>
</html>
