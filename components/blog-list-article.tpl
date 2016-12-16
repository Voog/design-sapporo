{% if forloop.index < articles_newer_limit %}
  {% include "blog-list-article-newer" %}
{% else %}
  {% if forloop.index == articles_newer_limit %}
    <div class="content-items">
  {% endif %}

  {% include "blog-list-article-older" %}

  {% if forloop.last %}
    </div>
  {% endif %}
{% endif %}
