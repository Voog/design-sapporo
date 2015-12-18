<!DOCTYPE html>
{% include "template-variables" %}
<html class="{{ view_mode }}" lang="{{ page.language_code }}">
  <head prefix="og: http://ogp.me/ns#">
    {% include "template-head" %}
  </head>

  <body class="blog-news-page blog-article-page {{ language_flags_mode }}">
    {% include "template-svg-spritesheet" %}

    <div class="site-container">
      <div class="wrap">
        {% include "site-header" %}

        <main class="page-content" role="main">
          <article class="blog-article">
            <header class="article-header">
              <h1 class="article-title">{% editable article.title %}</h1>
              <time class="article-date" datetime="{{ article.created_at | date: '%Y-%m-%d' }}">{{ article.created_at | format_date: "long" }}</time>              
            </header>


            <div class="article-content inner content-area" data-search-indexing-allowed="true">
              <div class="article-excerpt">{% editable article.excerpt %}</div>
              <div class="article-body">{% editable article.body %}</div>
            </div>

            {% include "blog-article-tags" %}

          </article>
        </main>

        {% include "site-footer" %}
      </div>
    </div>

    {% include "menu-language-popover" %}

    {% include "template-javascripts" %}
  </body>
</html>
