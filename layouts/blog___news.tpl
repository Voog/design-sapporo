<!DOCTYPE html>
<html class="{% if editmode %}editmode{% else %}publicmode{% endif %}" lang="{{ page.language_code }}">
  <head prefix="og: http://ogp.me/ns#">
    {% include "html-head" %}
  </head>

  <body class="blog-news-page blog-listing-page" data-search-indexing-allowed="false">
    <div class="site-container">
      {% include "site-header" %}

      <main class="page-content" role="main">
        <section class="blog-articles content-area">
          {% addbutton %}

          {% for article in articles %}
          {% endfor %}
        </section>
      </main>

      {% include "site-footer" %}

      {% include "site-javascripts" %}
    </div>
  </body>
</html>
