<!DOCTYPE html>
<html class="blog-news-page blog-listing-page" lang="{{ page.language_code }}">
  <head prefix="og: http://ogp.me/ns#">
    {% include "html-head" %}
  </head>

  <body class="{{ mode_class }}" data-search-indexing-allowed="false">
    <div class="site-container">
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

      {% include "site-javascripts" %}
    </div>
  </body>
</html>
