desc "Build and deploy the site"
task release: :build do
  # year-month-day-hourminute
  timestamp = Time.now.strftime('%Y-%m-%d-%H%M')
  sh "git tag '#{timestamp}' && git push --tag"
  deploy "patrickbyrne.net"
end

desc "Build and deploy the site to staging"
task stage: :build do
  deploy "beta.patrickbyrne.net"
end

desc "Build and deploy the site to Vagrant"
task vagrant: :build do
  deploy "beta.patrickbyrne.net", "vagrant"
end

task :build do
  sh "bundle exec middleman build"
end

def deploy(path, server=path)
  sh "rsync -avz --delete build/ #{server}:/var/www/#{path}/public"
end

