<header class="site-header">
  <div class="header-title content-formatted">
    {% editable site.header %}
  </div>

	<div class="header-right">
		<button class="btn menu-btn js-toggle-menu-main">{{ "menu" | lc }}</button>
  	{% include "menu-main" %}
	</div>
</header>
