{% if site.data.article_settings.show_dates == false and article.data.article_settings.show_date == false %}
  {% assign toggle_article_date = "hide-article-date" %}
{% elsif site.data.article_settings.show_dates == false and article.data.article_settings.show_date == blank %}
  {% assign toggle_article_date = "hide-article-date" %}
{% elsif site.data.article_settings.show_dates == true and article.data.article_settings.show_date == false %}
  {% assign toggle_article_date = "hide-article-date" %}
{% elsif site.data.article_settings.show_dates == blank and article.data.article_settings.show_date == false %}
  {% assign toggle_article_date = "hide-article-date" %}
{% else %}
  {% assign toggle_article_date = "show-article-date" %}
{% endif %}

{% if site.data.article_settings.show_comments == false and article.data.article_settings.show_comments == false %}
  {% assign toggle_article_comment = "hide-article-comment" %}
{% elsif site.data.article_settings.show_comments == false and article.data.article_settings.show_comments == blank %}
  {% assign toggle_article_comment = "hide-article-comment" %}
{% elsif site.data.article_settings.show_comments == true and article.data.article_settings.show_comments == false %}
  {% assign toggle_article_comment = "hide-article-comment" %}
{% elsif site.data.article_settings.show_comments == blank and article.data.article_settings.show_comments == false %}
  {% assign toggle_article_comment = "hide-article-comment" %}
{% else %}
  {% assign toggle_article_comment = "show-article-comment" %}
{% endif %}
