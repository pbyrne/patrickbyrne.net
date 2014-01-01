require "slim"

# CONFIGURATION
set :css_dir, "stylesheets"
set :images_dir, "images"
set :partials_dir, "partials"
# Reload the browser automatically whenever files change
activate :livereload, host: "localhost"
# Make pretty URLs for every page (e.g. /foo rather than /foo.html)
activate :directory_indexes
# Creage pre-built gzipped versions of files, for nginx to leverage
activate :gzip
# Smoosh HTML as small as possible
activate :minify_html
# Customize markdown output
set :markdown, smartypants: true

# BUILD-SPECIFIC CONFIGURATION
configure :build do
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
  def include_work_item_prefix?
    %w(index.html work.html).include? current_page.path
  end

  def title_prefix(work_item)
    prefix = work_item.path.split("/").first
    "#{humanize_section_name(prefix).singularize}: " if prefix
  end

  def recent_work(limit=5)
    pages_by_path(["projects/", "notes/", "presentations/"], limit)
  end

  def projects(limit=2)
    pages_by_path("projects/", limit)
  end

  def notes(limit=2)
    pages_by_path("notes/", limit)
  end

  def presentations(limit=2)
    pages_by_path("presentations/", limit)
  end

  def pages_by_path(path_or_paths, limit)
    resources = sitemap.resources.find_all do |resource|
      Array(path_or_paths).any? do |path|
        resource.path.start_with? path
      end
    end.sort_by do |resource|
      resource.data.date || Date.new(2000,1,1)
    end.reverse

    if limit == :all
      resources
    else
      resources[0...limit]
    end
  end

  def link_to_unless_current(text, path, **options)
    if "/#{current_page.path}" == path
      text
    else
      link_to text, path, options
    end
  end

  def link_to_section(page)
    section_fragment = page.path.split("/").first
    link_to humanize_section_name(section_fragment), "/#{section_fragment}.html"
  end

  def humanize_section_name(name)
    name.to_s.capitalize
  end
end


