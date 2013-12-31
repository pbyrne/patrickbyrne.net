desc "Build and deploy the site"
task :release do
  # year-month-day-hourminute
  timestamp = Time.now.strftime('%Y-%m-%d-%H%M')
  sh "git tag '#{timestamp}' && git push --tag"
  build_and_deploy("patrickbyrne.net")
end

desc "Build and deploy the site to staging"
task :stage do
  build_and_deploy("beta.patrickbyrne.net")
end

def build_and_deploy(path)
  sh "bundle exec middleman build && rsync -avz --delete build/ patrickbyrne.net:/var/www/#{path}/public"
end

