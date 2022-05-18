<footer class="site-footer js-site-footer">
  {%- assign footer_content_title = "footer" | lce -%}
  {%- assign footer_content_title_tooltip = "content_tooltip_all_pages_same_language" | lce -%}
  <div class="footer-body content-area js-footer-body">{% xcontent name="footer" title=footer_content_title title_tooltip=footer_content_title_tooltip %}</div>

  <div class="voog-reference js-voog-reference">
  	{% loginblock %}{{ "footer_login_link" | lc }}{% endloginblock %}
  </div>
</footer>
