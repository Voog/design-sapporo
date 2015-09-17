<!DOCTYPE html>
<html class="{% if editmode %}editmode{% else %}public{% endif %}" lang="{{ page.language_code }}">
  <head prefix="og: http://ogp.me/ns#">
    {% include "html-head" %}
  </head>

  <body class="blog-news-page blog-article-page">
    <div class="site-container">
      {% include "site-header" %}

      <main class="page-content" role="main">
        <article class="blog-article content-area">
        </article>
      </main>

      {% include "site-footer" %}

      {% include "site-javascripts" %}
    </div>
  </body>
</html>
