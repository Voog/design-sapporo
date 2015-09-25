{% comment %}Set body class based on current viewing mode.{% endcomment %}
{% capture dont_render %}
	{% if editmode %}
		{% assign mode_class = "editmode" %}
	{% else %}
		{% assign mode_class = "publicmode" %}
	{% endif %}
{% endcapture %}
