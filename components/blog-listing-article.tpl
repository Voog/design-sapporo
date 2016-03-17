{% if article.data.image == nil or article.data.image == "" %}
  {% assign article_image_state = "without-image" %}
{% else %}
  {% assign article_image_state = "with-image" %}

  {% if article.data.image.width > article.data.image.height %}
    {% assign article_image_orientation = "image-landscape" %}
  {% elsif article.data.image.width == article.data.image.height %}
    {% assign article_image_orientation = "image-square" %}
  {% else %}
    {% assign article_image_orientation = "image-portrait" %}
  {% endif %}
{% endif %}

{% if editmode %}
  <div class="blog-article {{ article_image_state }} js-blog-article" data-article-id="{{ article.id }}">
    <div class="article-top">
      <svg class="btn image-crop-btn {% if article_image_orientation == "image-square" %}is-hidden{% else %}is-visible{% endif %} js-toggle-crop-state" width="45" height="45" viewBox="0 0 45 45" xmlns="http://www.w3.org/2000/svg">
        <use xlink:href="#ico-toggle"></use>
      </svg>

      <div class="top-inner aspect-ratio-inner image-drop-area {{ article_image_orientation }} {{ article.data.image_crop_state }} js-image-drop-area" data-image="{{ article.data.image.url }}"></div>
    </div>

    <h2 class="article-title">
      <a class="article-link" href="{{ article.url }}">{{ article.title }}</a>
    </h2>
  </div>
{% else %}
  <a class="blog-article {{ article_image_state }}" href="{{ article.url }}">
    <div class="article-top">
      <div class="top-inner aspect-ratio-inner">
        {% if article.data.image and article.data.image != "" %}
          <img class="article-image {{ article_image_orientation }} {{ article.data.image_crop_state }}" src="{{ article.data.image.url }}" alt="{{ article.title }}">
        {% else %}
          <div class="article-placeholder">{{ article.title | truncate: 50 }}</div>
        {% endif %}
      </div>
    </div>

    <h2 class="article-title">{{ article.title }}</h2>
  </a>
{% endif %}
