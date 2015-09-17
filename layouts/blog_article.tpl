<!DOCTYPE html>
<html class="{% if editmode %}editmode{% else %}public{% endif %}" lang="{{ page.language_code }}">
  <head prefix="og: http://ogp.me/ns#">
    {% include "html-head" %}
  </head>

  <body class="blog-news-page blog-article-page">
    <div class="site-container">
      {% include "site-header" %}

      <main class="page-content" role="main">
        <article class="blog-article">
          <header class="article-header">
            <h1 class="article-title">{% editable article.title %}</h1>
            <time class="article-date" datetime="{{ article.created_at | date: '%Y-%m-%d' }}">{{ article.created_at | format_date: "long" }}</time>
          </header>


          <div class="article-content content-area" data-search-indexing-allowed="true">
            <div class="article-excerpt">{% editable article.excerpt %}</div>
            <div class="article-body">{% editable article.body %}</div>
          </div>
        </article>
      </main>

      {% include "site-footer" %}

      {% include "site-javascripts" %}
    </div>
  </body>
</html>
