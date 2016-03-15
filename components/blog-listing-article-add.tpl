<a class="blog-article without-image" href="{% if blog-listing-article-add == "item" %}{{ item.url }}{% else %}{{ page.path }}{% endif %}?new">
  <div class="article-top">
    <div class="top-inner aspect-ratio-inner">
      <div class="article-placeholder">
        {% if blog-listing-article-add == "item" %}
          {{ item.title | truncate: 50 }}
        {% else %}
          {{ page.title | truncate: 50 }}
        {% endif %}
      </div>
    </div>
  </div>

  <h2 class="article-title">{{ "add_new_post" | lc }}</h2>
</a>