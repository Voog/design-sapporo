<!DOCTYPE html>
{% include "template-variables" %}
<html class="blog-news-page blog-listing-page {{ view_mode }} menu-main-closed site-search-closed {{ language_flags_mode }}" lang="{{ page.language_code }}">
  <head prefix="og: http://ogp.me/ns#">
    {% include "template-head" %}
  </head>

  <body data-search-indexing-allowed="false">
    {% include "template-svg-spritesheet" %}

    <div class="site-container">
      <div class="wrap">
        {% include "site-header" %}

        <main class="page-content" role="main">
          <section class="blog-articles content-area">
            {% if editmode %}
              <div class="cms-add-article">{% addbutton %}</div>
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
