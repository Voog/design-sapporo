<!DOCTYPE html>
{% include "template-variables" %}
<html class="{{ view_mode }} {{ language_flags_mode }} {{ language_names_mode }} {{ language_menu_mode }} {{ site_search_mode }}" lang="{{ page.language_code }}">
  <head prefix="og: http://ogp.me/ns#">
    {% include "template-head" %}
  </head>

  <body class="blog-news-page blog-article-page header-menu-wide">
    {% include "template-svg-spritesheet" %}

    <div class="site-container">
      <div class="container-inner">
        <div class="wrap">
          {% include "site-header" %}

          <main class="page-content" role="main">
            <article class="blog-article">
              <header class="article-header">
                <h1 class="article-title">{% editable article.title %}</h1>
                <time class="article-date" datetime="{{ article.created_at | date: '%Y-%m-%d' }}">{{ article.created_at | format_date: "long" }}</time>
              </header>


              <div class="inner content-area area-normal" data-search-indexing-allowed="true">
                <div class="article-excerpt">{% editable article.excerpt %}</div>
                <div class="article-body" {{ edy_intro_edit_text }}>{% editable article.body %}</div>
              </div>

              {% unless article.new_record? %}
                <div class="content-bottom">
                  <div class="content-area">{% content name="bottom" bind="Article" %}</div>
                </div>
              {% endunless %}

              {% include "blog-article-tags" %}
            </article>

            {% include "blog-article-comments" %}
          </main>

          {% include "site-footer" %}
        </div>
      </div>
    </div>

    {% if show_language_menu_popover %}
      {% include "menu-language-popover" %}
    {% endif %}

    {% include "template-javascripts" %}
  </body>
</html>
