{% if site.data.blog_settings.scope == "global" and site.data.blog_settings.hide_comments != true %}
  {% assign show_article_comments_globally = true %}
{% elsif site.data.blog_settings.scope == "blog" and page.data.blog_settings.hide_comments != true %}
  {% assign show_article_comments_on_selected_blog = true %}
{% elsif site.data.blog_settings.scope == "article" and article.data.article_settings.hide_comments != true %}
  {% assign show_article_comments_on_selected_article = true %}
{% endif %}

{% if site.data.blog_settings.scope == "global" and site.data.blog_settings.hide_dates != true %}
  {% assign show_article_dates_globally = true %}
{% elsif site.data.blog_settings.scope == "blog" and page.data.blog_settings.hide_dates != true %}
  {% assign show_article_dates_on_selected_blog = true %}
{% elsif site.data.blog_settings.scope == "article" and article.data.article_settings.hide_dates != true %}
  {% assign show_article_date_on_selected_article = true %}
{% endif %}

{% if site.data.blog_settings.scope == "article" %}
  {% assign show_article_settings_button = true %}
{% endif %}
