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
                <h1 class="item-title">{% editable article.title %}</h1>
                <time class="article-date" datetime="{{ article.created_at | date: '%Y-%m-%d' }}">{{ article.created_at | format_date: "long" }}</time>
              </header>


              <div class="inner content-area area-normal" data-search-indexing-allowed="true">
                <div class="article-excerpt" {{ edy_intro_edit_text }}>{% editable article.excerpt %}</div>
                <div class="article-body">{% editable article.body %}</div>
              </div>

              {% unless article.new_record? %}
                <div class="content-bottom content-area">{% content name="bottom" bind="Article" %}</div>
              {% endunless %}

              {% include "blog-article-tags" %}
            </article>

            {% if article.older or article.newer %}
              <div class="article-nav">
                <div class="article-nav-inner">
                  {% if article.older %}
                    <a class="article-nav-link {% if article.newer %}article-nav-link-half{% else %}article-nav-link-full{% endif %} article-nav-link-older" href="{{ article.older.url }}">
                      <div class="article-nav-link-inner">
                        <div class="article-nav-direction">{{ "previous" | lc }}</div>
                        <div class="article-nav-title">{{ article.older.title }}</div>
                      </div>
                    </a>
                  {% endif %}

                  {% if article.newer %}
                    <a class="article-nav-link {% if article.older %}article-nav-link-half{% else %}article-nav-link-full{% endif %} article-nav-link-newer" href="{{ article.newer.url }}">
                      <div class="article-nav-link-inner">
                        <div class="article-nav-direction">{{ "next" | lc }}</div>
                        <div class="article-nav-title">{{ article.newer.title }}</div>
                      </div>
                    </a>
                  {% endif %}
                </div>
              </div>
            {% endif %}

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
