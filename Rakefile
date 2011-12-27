desc "Run the Jekyll server, picking up changes as they happen"
task :run do
  sh "bundle exec jekyll --server --auto"
end

desc "Generate the site"
task :generate do
  sh "bundle exec jekyll"
end

desc "Deploy the site"
task :deploy do
  # TODO replace node: with patrickbyrne.net: once dns is all sorted out
  sh "bundle exec jekyll && rsync -avz --delete _site/ node:/var/www/patrickbyrne.net/public"
end
