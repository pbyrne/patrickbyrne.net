desc "Build and deploy the site"
task release: :build do
  deploy
end

task :build do
  sh "bundle exec middleman build"
end

def deploy
  sh "aws s3 sync build/ s3://patrickbyrne-net --profile personal"
  sh %{aws s3 cp s3://patrickbyrne-net s3://patrickbyrne-net --recursive --exclude="*" --include="images/*" --include="stylesheets/*" --include="javascripts/*" --metadata-directive REPLACE --cache-control max-age=31536000,public --profile personal}
end

