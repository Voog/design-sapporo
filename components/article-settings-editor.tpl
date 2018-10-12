{% if editmode %}
<div class="article-settings-wrap">
  <button class="article-settings-editor"></button>
</div>
{% endif %}

{% editorjsblock %}
  <!-- Settings popover javascript. -->
  <script
    src="{{ site.static_asset_host }}/libs/edicy-tools/latest/edicy-tools.js"
  ></script>

  <!-- Setings popover initiation. -->
  <script>
    var articleData = new Edicy.CustomData({
      type: 'article',
      id: {{ article.id }}
    });

    {% if article.data.article_settings %}
      var valuesObj = {{ article.data.article_settings | json }};
    {% else %}
      var valuesObj = {};
    {% endif %};

    var articleSettingsButton = document.querySelector('.article-settings-editor');

    var SettingsEditor = new Edicy.SettingsEditor(articleSettingsButton, {
      menuItems: [
        {
          "title": "Remove article comment",
          "type": "checkbox",
          "key": "hide_comments",
          "states": {
            "on": true,
            "off": false
          },
        },
        {
          "title": "Remove article date",
          "type": "checkbox",
          "key": "hide_dates",
          "states": {
            "on": true,
            "off": false
          },
        },
      ],

      // Binded data object which should contain custom data object.
      values: valuesObj,

       // Style type the button.
      buttonStyle: 'default',
      // Title for the button.
      buttonTitle: 'Article settings',

      commit: function(data) {
        articleData.set('article_settings', data);
      }
    });
  </script>
{% endeditorjsblock %}