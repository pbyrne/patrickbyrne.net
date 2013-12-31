require "slim"

# CONFIGURATION
set :css_dir, 'stylesheets'
set :images_dir, 'images'
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
# helpers do
#   def some_helper
#     "Helping"
#   end
# end


