<footer class="site-footer">
  <div class="voog-reference">
  	{% loginblock %}{{ "footer_login_link" | lc }}{% endloginblock %}
  </div>

  <div class="footer-body content-area">{% xcontent name="footer" %}</div>
</footer>
