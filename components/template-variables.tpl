{% comment %}TODO: Optimize so that it includes only needed parts for each layout.{% endcomment %}
{% capture dont_render %}
  {% comment %}Detects viewing mode.{% endcomment %}
  {% if editmode %}
    {% assign view_mode = "editmode" %}
  {% else %}
    {% assign view_mode = "publicmode" %}
  {% endif %}

  {% comment %}Sets site search state class.{% endcomment %}
  {% if site.search.enabled %}
    {% assign site_search_mode = "site-search-enabled" %}
  {% else %}
    {% assign site_search_mode = "site-search-disabled" %}
  {% endif %}

  {% comment %}Sets current language title variable.{% endcomment %}
  {% for language in site.languages %}
    {% if language.selected? %}
      {% assign current_language_title = language.title %}
    {% endif %}
  {% endfor %}

  {% comment %}Detects language flags visibility setting.{% endcomment %}
  {% if site.data.settings_language_menu.item_state %}
    {% if site.data.settings_language_menu.item_state == "names_only" %}
      {% assign language_flags_mode = "language-flags-disabled" %}
    {% else %}
      {% assign language_flags_mode = "language-flags-enabled" %}
    {% endif %}
  {% else %}
    {% comment %}Fallback for older flags toggle button.{% endcomment %}
    {% if site.data.language_flags_enabled == true %}
      {% assign language_flags_mode = "language-flags-enabled" %}
    {% else %}
      {% assign language_flags_mode = "language-flags-disabled" %}
    {% endif %}
  {% endif %}

  {% comment %}Detects language flags visibility setting.{% endcomment %}
  {% if site.data.settings_language_menu.item_state == "flags_only" %}
    {% assign language_names_mode = "language-names-disabled" %}
  {% else %}
    {% assign language_names_mode = "language-names-enabled" %}
  {% endif %}

  {% comment %}Detects language menu mode setting.{% endcomment %}
  {% if site.data.settings_language_menu.type == "list" %}
    {% assign language_menu_mode = "language-menu-mode-list" %}
  {% else %}
    {% assign language_menu_mode = "language-menu-mode-popover" %}
  {% endif %}

  {% if editmode %}
    {% assign show_language_menu_popover = true %}
  {% else %}
    {% if language_menu_mode == "language-menu-mode-popover" and site.has_many_languages? %}
      {% assign show_language_menu_popover = true %}
    {% else %}
      {% assign show_language_menu_popover = false %}
    {% endif %}
  {% endif %}

  {% comment %}Detects current page visible childnen size.{% endcomment %}
  {% assign page_children_size = page.menuitem.visible_children | size %}

  {% assign has_no_children_other_than_products = true %}
  {% if page_children_size != 0 %}
    {% for item in page.menuitem.visible_children %}
      {% if item.layout_title != 'Product' and item.layout_title != 'Product list' %}
        {% assign has_no_children_other_than_products = false %}
      {% endif %}
    {% endfor %}
  {% endif %}

  {% comment %}
    Sets boolean to decide if menu level 1 is the currently active menu and
    should be active in mobile menu.
  {% endcomment %}
  {% if page.blog? %}
    {% assign blog_tags_size = blog.tags | size %}
  {% endif %}

  {% if blog.tags and blog_tags_size > 0 %}
    {% assign menu_current = false %}
  {% elsif page.level == 0 or page.level == 1 and has_no_children_other_than_products %}
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

  {% assign product_list_layout = "Product list" %}
  {% assign product_layout = "Product" %}
  {% assign front_page_layout = "Front page" %}

  {% assign show_product_related_pages_in_main_menu = site.data.settings_root_item.show_product_related_pages_in_main_menu %}

  {% comment %}=================================================================
  | Design editor variables.
  ============================================================= {% endcomment %}
  {% capture base_font_set %}
    [
      {
        "type": "group",
        "title": "Sans Serif",
        "list": [
          {
            "title": "Avenir Next",
            "value": "\"Avenir Next\", \"Avenir\", \"Helvetica Neue\", \"Helvetica\", \"Segoe UI\", sans-serif"
          },
          {
            "title": "Fira Sans",
            "value": "\"Fira Sans\", sans-serif"
          },
          {
            "title": "Lato",
            "value": "\"Lato\", sans-serif"
          },
          {
            "title": "Montserrat",
            "value": "\"Montserrat\", sans-serif"
          },
          {
            "title": "Open Sans",
            "value": "\"Open Sans\", sans-serif"
          },
          {
            "title": "PT Sans",
            "value": "\"PT Sans\", sans-serif"
          },
          {
            "title": "Raleway",
            "value": "\"Raleway\", sans-serif"
          },
          {
            "title": "Roboto",
            "value": "\"Roboto\", sans-serif"
          },
          {
            "title": "Source Sans Pro",
            "value": "\"Source Sans Pro\", sans-serif"
          },
          {
            "title": "Ubuntu",
            "value": "\"Ubuntu\", sans-serif"
          }
        ]
      },
      {
        "type": "group",
        "title": "Serif",
        "list": [
          {
            "title": "Arvo",
            "value": "\"Arvo\", serif"
          },
          {
            "title": "Crimson Text",
            "value": "\"Crimson Text\", serif"
          },
          {
            "title": "Georgia",
            "value": "\"Georgia\", serif"
          },
          {
            "title": "Lora",
            "value": "\"Lora\", serif"
          },
          {
            "title": "Noto Serif",
            "value": "\"Noto Serif\", serif"
          },
          {
            "title": "Playfair Display",
            "value": "\"Playfair Display\", serif"
          },
          {
            "title": "PT Serif",
            "value": "\"PT Serif\", serif"
          },
          {
            "title": "Roboto Slab",
            "value": "\"Roboto Slab\", serif"
          }
        ]
      },
      {
        "type": "group",
        "title": "Monospace",
        "list": [
          {
            "title": "Anonymous Pro",
            "value": "\"Anonymous Pro\", monospace"
          },
          {
            "title": "Cousine",
            "value": "\"Cousine\", monospace"
          },
          {
            "title": "Roboto Mono",
            "value": "\"Roboto Mono\", monospace"
          },
          {
            "title": "Ubuntu Mono",
            "value": "\"Ubuntu Mono\", monospace"
          }
        ]
      }
    ]
  {% endcapture %}

  {% capture base_alignment_set %}
    [
      {
        "titleI18n": "left",
        "value": "left"
      },
      {
        "titleI18n": "center",
        "value": "center"
      },
      {
        "titleI18n": "right",
        "value": "right"
      }
    ]
  {% endcapture %}

  {% capture base_number_of_columns_set %}
    [
      {
        "title": "1",
        "value": "100%"
      },
      {
        "title": "2",
        "value": "50%"
      },
      {
        "title": "3",
        "value": "33.3%"
      },
      {
        "title": "4",
        "value": "25%"
      },
      {
        "title": "5",
        "value": "20%"
      },
      {
        "title": "6",
        "value": "16.6%"
      },
      {
        "title": "7",
        "value": "14.2%"
      },
      {
        "title": "8",
        "value": "12.5%"
      },
      {
        "title": "9",
        "value": "11.1%"
      },
      {
        "title": "10",
        "value": "10%"
      }
    ]
  {% endcapture %}

  {% capture base_border_style_set %}
    [
      {
        "titleI18n": "solid",
        "value": "solid"
      },
      {
        "titleI18n": "none",
        "value": "hidden"
      }
    ]
  {% endcapture %}

  {% comment %}VOOG intro popover targets. Add them where applicable popovers should appear.{% endcomment %}
  {% capture edy_intro_add_page %}{% if editmode %}data-edy-intro-popover="edy-add-page"{% endif %}{% endcapture %}
  {% capture edy_intro_add_lang %}{% if editmode %}data-edy-intro-popover="edy-add-lang"{% endif %}{% endcapture %}
  {% capture edy_intro_edit_text %}{% if editmode %}data-edy-intro-popover="edy-edit-text"{% endif %}{% endcapture %}

{% endcapture %}
