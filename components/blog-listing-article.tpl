<a class="blog-article" href="{{ article.url }}">
  <div class="article-top">
    <div class="aspect-ratio-inner">
      {% if article.image %}
        <img class="article-image" src="{{ article.image }}" alt="{{ article.title }}">
      {% endif %}
    </div>
  </div>

  <h2 class="article-title">{{ article.title }}</h2>
</a>
