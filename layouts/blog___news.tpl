<!DOCTYPE html>
{% include "template-variables" %}
{% include "blog-listing-variables" %}
<html class="{{ view_mode }} {{ language_flags_mode }}" lang="{{ page.language_code }}">
  <head prefix="og: http://ogp.me/ns#">
    {% include "template-head" %}
  </head>

  <body class="blog-news-page blog-listing-page header-menu-wide" data-search-indexing-allowed="false">
    {% include "template-svg-spritesheet" %}

    <div class="site-container">
      <div class="wrap">
        {% include "site-header" %}

        <main class="page-content" role="main">
          <section class="blog-articles">
            {% if editmode %}
              <div class="cms-blog-article-add">{% addbutton %}</div>
            {% endif %}

            {% if tags %}
              <h1>{{ tags_title }}</h1>
            {% endif %}

            {% for article in articles %}
              {% include "blog-listing-article" %}
            {% endfor %}
          </section>
        </main>

        {% include "site-footer" %}
      </div>
    </div>

    {% include "menu-language-popover" %}

    {% include "template-javascripts" %}
    {% include "blog-listing-tools" %}
  </body>
</html>
