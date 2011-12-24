<article>
  <h3><a href="/{{ project.url}}">{{ project.title }}</a></h3>

  {% if project.excerpt %}
    <p>{{ project.excerpt }}</p>
  {% else %}
    <p>{{ project.content | strip_html | truncatewords: 20 }}</p>
  {% endif %}
</article>
