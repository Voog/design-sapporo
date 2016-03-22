<footer class="site-footer js-site-footer">
  <div class="footer-body content-area js-footer-body">{% xcontent name="footer" %}</div>

  <div class="voog-reference js-voog-reference">
  	{% loginblock %}{{ "footer_login_link" | lc }}{% endloginblock %}
  </div>
</footer>
