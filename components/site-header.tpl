<header class="site-header">
  <div class="header-title content-area">
    {% editable site.header %}
  </div>

	<div class="header-menu">
		<button class="btn menu-btn js-toggle-menu-main">{{ "menu" | lc }}</button>
  	{% include "menu-main" %}
	</div>
</header>
