<!DOCTYPE html>
<html class="{% if editmode %}editmode{% else %}public{% endif %}" lang="{{ page.language_code }}">
  <head prefix="og: http://ogp.me/ns#">
    {% include "html-head" %}
  </head>

  <body class="common-page">
    <div class="site-container">
      {% include "site-header" %}

      <main class="page-content" role="main">
        <section class="content-area">
        </section>
      </main>

      {% include "site-footer" %}

      {% include "site-javascripts" %}
    </div>
  </body>
</html>
