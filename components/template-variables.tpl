{% capture dont_render %}
  {% comment %}Detects viewing mode.{% endcomment %}
  {% if editmode %}
    {% assign view_mode = "editmode" %}
  {% else %}
    {% assign view_mode = "publicmode" %}
  {% endif %}

  {% comment %}Sets current language title variable.{% endcomment %}
  {% for language in site.languages %}
    {% if language.selected? %}
      {% assign current_language_title = language.title %}
    {% endif %}
  {% endfor %}

  {% comment %}Detects language flags visibility setting.{% endcomment %}
  {% if site.data.language_flags_enabled == nil or site.data.language_flags_enabled == false %}
    {% assign language_flags_mode = "language-flags-disabled" %}
  {% else %}
    {% assign language_flags_mode = "language-flags-enabled" %}
  {% endif %}

  {% comment %}Detects language flags visibility settings.{% endcomment %}
  {% if site.search.enabled %}
    {% assign site_search_mode = "site-search-enabled" %}
  {% else %}
    {% assign site_search_mode = "site-search-disabled" %}
  {% endif %}

  {% comment %}Detects language flags visibility settings.{% endcomment %}
  {% if editmode or site.has_many_languages? %}
    {% assign language_menu_mode = "menu-language-enabled" %}
  {% else %}
    {% assign language_menu_mode = "menu-language-disabled" %}
  {% endif %}

  {% comment %}Detects current page visible childnen size.{% endcomment %}
  {% assign page_children_size = page.menuitem.visible_children | size %}

  {% comment %}
    Sets boolean to decide if menu level 1 is the currently active menu and
    should be active in mobile menu.
  {% endcomment %}
  {% if page.blog? %}
    {% assign blog_tags_size = blog.tags | size %}
  {% endif %}

  {% if blog.tags and blog_tags_size > 0 %}
    {% assign menu_current = false %}
  {% elsif page.level == 0 or page.level == 1 and page_children_size == 0 %}
    {% assign menu_current = true %}
  {% endif %}

  {% if site.root_item.blog? %}
    {% assign blog_pages_size = 1 %}
  {% else %}
    {% assign blog_pages_size = 0 %}
  {% endif %}

  {% for item in site.menuitems_with_hidden %}
    {% if item.blog? %}
      {% assign blog_first = item %}
      {% assign blog_pages_size = blog_pages_size | plus: 1 %}
    {% endif %}
  {% endfor %}

{% endcapture %}
