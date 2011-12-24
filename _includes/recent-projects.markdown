<section class="prjs">
  <h2>Recent Projects</h2>

  {% for project in site.posts %}
    {% include project.markdown %}
  {% endfor %}
</section>

