{% comment %}TODO: Optimize so that it includes only needed parts for each layout.{% endcomment %}
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

  {% comment %}===================================================================
  || Design editor variables.
  =============================================================== {% endcomment %}
  {% capture base_font_set %}
    [
      {
        "type": "group",
        "title": "Sans Serif",
        "list": [
          {
            "title": "Avenir Next",
            "value": "\"Avenir Next\", \"Helvetica Neue\", \"Helvetica\", \"Segoe UI\", sans-serif"
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
            "value": "\"Montserrat\", Helvetica, Arial, sans-serif"
          },
          {
            "title": "Open Sans",
            "value": "\"Open Sans\", sans-serif"
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
            "value": "\"Arvo\", sans-serif"
          },
          {
            "title": "Crimson Text",
            "value": "\"Crimson Text\", sans-serif"
          },
          {
            "title": "Lora",
            "value": "\"Lora\", sans-serif"
          },
          {
            "title": "Noto Serif",
            "value": "\"Noto Serif\", sans-serif"
          },
          {
            "title": "Playfair Display",
            "value": "\"Playfair Display\", sans-serif"
          },
          {
            "title": "PT Serif",
            "value": "\"PT Serif\", sans-serif"
          },
          {
            "title": "Roboto Slab",
            "value": "\"Roboto Slab\", sans-serif"
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
        "title": "Left",
        "value": "left"
      },
      {
        "title": "Center",
        "value": "center"
      },
      {
        "title": "Right",
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
        "title": "Solid",
        "value": "solid"
      },
      {
        "title": "Dotted",
        "value": "dotted"
      },
      {
        "title": "Dashed",
        "value": "dashed"
      },
      {
        "title": "Double",
        "value": "double"
      },
      {
        "title": "Groove",
        "value": "groove"
      },
      {
        "title": "Ridge",
        "value": "ridge"
      },
      {
        "title": "Inset",
        "value": "inset"
      },
      {
        "title": "Outset",
        "value": "outset"
      },
      {
        "title": "None",
        "value": "hidden"
      }
    ]
  {% endcapture %}
{% endcapture %}
