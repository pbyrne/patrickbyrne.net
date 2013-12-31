require "slim"

# CONFIGURATION
set :css_dir, "stylesheets"
set :images_dir, "images"
set :partials_dir, "partials"
# Reload the browser automatically whenever files change
activate :livereload, host: "localhost"
# Make pretty URLs for every page (e.g. /foo rather than /foo.html)
activate :directory_indexes

# BUILD-SPECIFIC CONFIGURATION
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Enable cache buster
  activate :asset_hash
  activate :cache_buster
end

# COMPASS CONFIGURATION
compass_config do |config|
  # Make the stylesheets as small as possible
  config.output_style = :compressed
end

# Methods defined in the helpers block are available in templates
helpers do
  def projects(limit=2)
    pages_by_path("projects/", limit)
  end

  def notes(limit=2)
    pages_by_path("notes/", limit)
  end

  def presentations(limit=2)
    pages_by_path("presentations/", limit)
  end

  def pages_by_path(path, limit)
    sitemap.resources.find_all { |r| r.path.start_with? path}.sort_by { |r| r.data.date || Date.new(2000,1,1) }.reverse[0...limit]
  end
end


