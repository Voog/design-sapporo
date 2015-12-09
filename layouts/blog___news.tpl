<!DOCTYPE html>
{% include "template-variables" %}
<html class="{{ view_mode }} menu-main-closed site-search-closed" lang="{{ page.language_code }}">
  <head prefix="og: http://ogp.me/ns#">
    {% include "template-head" %}
  </head>

  <body class="blog-news-page blog-listing-page {{ language_flags_mode }}" data-search-indexing-allowed="false">
    {% include "template-svg-spritesheet" %}

    <div class="site-container">
      <div class="wrap">
        {% include "site-header" %}

        <main class="page-content" role="main">
          {% include "blog-listing-tags" %}

          <section class="blog-articles content-area">
            {% if editmode %}
              <div class="cms-blog-article-add">{% addbutton %}</div>
            {% endif %}

            {% for article in articles %}
              <a class="blog-article" href="{{ article.url }}">
                <img class="article-image" src="{{ article.image }}" alt="{{ article.title }}">
                <h2 class="article-title">{{ article.title }}</h2>
              </a>
            {% endfor %}
          </section>
        </main>

        {% include "site-footer" %}
      </div>
    </div>

    {% include "menu-language-popover" %}

    {% include "template-javascripts" %}
  </body>
</html>
