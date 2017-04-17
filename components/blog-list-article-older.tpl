<div class="content-item">
  <h2 class="item-title">
    <a class="item-link" href="{{ article.url }}">
      <span>{{ article.title }}</span>
      {% assign article_year = article.created_at | format_date: "%Y" | to_num %}

      {% if article_year == current_year %}
        {% assign article_date_format = "long_without_year" %}
      {% else %}
        {% assign article_date_format = "long" %}
      {% endif %}

      <time class="article-date" datetime="{{ article.created_at | date: '%Y-%m-%d' }}">{{ article.created_at | format_date: article_date_format }}</time>
    </a>
  </h2>
</div>
