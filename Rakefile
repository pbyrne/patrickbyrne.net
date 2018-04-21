desc "Build and deploy the site"
task release: :build do
  deploy "patrickbyrne-net"
end

task stage: :build do
  deploy "staging-patrickbyrne-net"
end

task :build do
  sh "bundle exec middleman build"
end

def deploy(bucket)
  sh "aws s3 sync build/ s3://#{bucket} --profile personal"
  sh %{aws s3 cp s3://#{bucket} s3://#{bucket} --recursive --exclude="*" --include="images/*" --include="stylesheets/*" --include="javascripts/*" --metadata-directive REPLACE --cache-control max-age=31536000,public --profile personal}
end

