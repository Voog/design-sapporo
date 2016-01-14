{% capture dont_render %}
  {% capture tags_title %}
    {% if tags == empty %}
      {{ "no_posts_tagged" | lc }}
    {% else %}
      {{ "posts_tagged" | lc }} ‘{{ tags | sort: "name" | map: "name" | join: "', '"}}’
    {% endif %}
  {% endcapture %}
{% endcapture %}
