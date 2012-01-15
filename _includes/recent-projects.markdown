<section class="prjs">
  <h2>Recent Projects</h2>

  {% for project in paginator.posts %}
    {% include project.markdown %}
  {% endfor %}

  <p>
    Or, <a href="/projects/">view all projects</a>.
  </p>
</section>

