desc "Run the Jekyll server, picking up changes as they happen"
task :run do
  sh "bundle exec jekyll --server --auto"
end

desc "Generate the site"
rake :generate do
  sh "bundle exec jekyll"
end
