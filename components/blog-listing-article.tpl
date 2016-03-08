{% if editmode %}
  <div class="blog-article" data-article-id="{{ article.id }}">
    <div class="article-top">
      <div class="top-inner aspect-ratio-inner image-drop-area js-image-drop-area" data-image="{{ article.data.image.url }}"></div>
    </div>

    <h2 class="article-title">
      <a class="article-link" href="{{ article.url }}">{{ article.title }}</a>
    </h2>
  </div>
{% else %}
  <a class="blog-article{% if article.data.image == nil or article.data.image == "" %} without-image{% endif %}" href="{{ article.url }}">
    <div class="article-top">
      <div class="top-inner aspect-ratio-inner">
        {% if article.data.image and article.data.image != "" %}
          <img class="article-image" src="{{ article.data.image.url }}" alt="{{ article.title }}">
        {% else %}
          <div class="article-placeholder">{{ article.title }}</div>
        {% endif %}
      </div>
    </div>

    <h2 class="article-title">{{ article.title }}</h2>
  </a>
{% endif %}
