{% unless article.image %}
  {% assign article_image_state = "without-image" %}
{% else %}
  {% assign article_image_state = "with-image" %}

  {% if article.image.width > article.image.height %}
    {% assign article_image_orientation = "image-landscape" %}
  {% elsif article.image.width == article.image.height %}
    {% assign article_image_orientation = "image-square" %}
  {% else %}
    {% assign article_image_orientation = "image-portrait" %}
  {% endif %}

  {% if article.data.image_crop_state %}
    {% assign article_image_crop_state = article.data.image_crop_state %}
  {% else %}
    {% assign article_image_crop_state = "not-cropped" %}
  {% endif %}
{% endunless %}

{% if editmode %}
  <div class="content-item-box {{ article_image_state }} js-content-item-box" data-item-type="article" data-item-id="{{ article.id }}">
    <div class="item-top">
      <button class="btn bg-crop-btn {% if article_image_orientation == "image-square" or article.image == nil %}is-hidden{% else %}is-visible{% endif %} js-toggle-crop-state">
        <svg width="20" height="20" viewBox="0 0 28 28" xmlns="http://www.w3.org/2000/svg">
          <use xlink:href="#ico-toggle"></use>
        </svg>
      </button>

      <div class="loader js-loader"></div>
      <div class="top-inner aspect-ratio-inner image-drop-area {{ article_image_orientation }} {{ article_image_crop_state }} js-content-item-img-drop-area" data-image="{{ article.image.for-width-680.schemeless_url }}"></div>
    </div>

    <h2 class="item-title">
      <a class="item-link" href="{{ article.url }}">{{ article.title }}</a>
    </h2>
  </div>
{% else %}
  <a class="content-item-box {{ article_image_state }} js-content-item-box" href="{{ article.url }}">
    <div class="item-top">
      <div class="top-inner aspect-ratio-inner">
        {% if article.image %}
          <div class="loader js-loader"></div>
          <img class="item-image {{ article_image_orientation }} {{ article_image_crop_state }} js-lazyload" data-original="{{ article.image.for-width-680.schemeless_url }}">
        {% else %}
          <div class="item-placeholder">{{ article.title | truncate: 50 }}</div>
        {% endif %}
      </div>
    </div>

    <h2 class="item-title">{{ article.title }}</h2>
  </a>
{% endif %}
