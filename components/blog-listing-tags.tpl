{% if site.has_language_tags? %}
  {% assign page_path = level_1.path %}

  {% blogcontext page_path %}
    <nav class="menu-sub">
      <ul class="menu menu-vertical menu-level-2">
        {% for tag in blog.tags %}
          {% assign current_class = "" %}
          {% for tmptag in tags %}
            {% if tmptag.name == tag.name %}
              {% assign current_class = "selected current" %}
            {% endif %}
          {% endfor %}

          <li class="menu-item">
            <a {% if current_class %}class="{{ current_class }}"{% endif %} href="/{{ level_1.path }}/tagged/{{ tag.path }}">{{ tag.name }}</a>
          </li>
        {% endfor %}
      </ul>

      {% if editmode %}
        <ul class="menu menu-vertical menu-cms">
          <li class="menu-item">
            <a class="edy-cbtn edy-site-menu-add" href="/{{ level_1.path }}?new">
              <span>
                <span>
                  <span class="edy-cbtn-ico">
                    <svg width="12" height="12" xmlns="http://www.w3.org/2000/svg">
                      <path d="M7 5v-3h-2v3h-3v2h3v3h2v-3h3v-2h-3z" fill="currentColor"></path>
                    </svg>
                  </span>
                  <span class="edy-cbtn-text">{{ "add_new_post" | lc }}</span>
                </span>
              </span>
            </a>
          </li>
        </ul>
      {% endif %}
    </nav>
  {% endblogcontext %}
{% endif %}
