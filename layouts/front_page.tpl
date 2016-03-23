<!DOCTYPE html>
{% include "template-variables" %}
{% include "blog-listing-variables" %}
<html class="{{ view_mode }} {{ language_menu_mode }} {{ language_flags_mode }} {{ site_search_mode }}" lang="{{ page.language_code }}">
  <head prefix="og: http://ogp.me/ns#">
    {% include "template-head" %}
  </head>

  <body class="front-page blog-news-page blog-listing-page header-menu-wide" data-search-indexing-allowed="false">
    {% include "template-svg-spritesheet" %}

    <div class="site-container">
      <div class="container-inner">
        <div class="wrap">
          {% include "site-header" %}

          <main class="page-content" role="main">
            <section class="content-main content-area">{% content %}</section>

            <section class="blog-articles">
              {% if editmode %}
                {% for item in site.menuitems_with_hidden %}
                  {% if item.blog? %}
                    {% include "blog-listing-article-add" with "item" %}
                    {% break %}
                  {% endif %}
                {% endfor %}
              {% endif %}

              {% for article in site.latest_99999_articles %}
                {% include "blog-listing-article" %}
              {% endfor %}
            </section>
          </main>

          {% include "site-footer" %}
        </div>
      </div>
    </div>

    {% include "menu-language-popover" %}

    {% include "template-javascripts" %}
    {% include "blog-listing-tools" %}

    <script>template.initBlogPage();</script>
  </body>
</html>
