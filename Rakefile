task :default => :run

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
  sh "bundle exec jekyll && rsync -avz --delete _site/ patrickbyrne.net:/var/www/patrickbyrne.net/public"
end

desc "Create a new project page"
task :new do
  puts "What is the project's name?"
  name = STDIN.gets.chomp
  # convert any alphanumeric character to dashes
  filename = name.downcase.gsub(/[^a-zA-Z0-9]+/, '-')
  path = "_posts/#{Time.now.strftime('%Y-%m-%d')}-#{filename}.md"
  FileUtils.touch(path)

  open(path, 'a') do |f|
    f.puts "---"
    f.puts "excerpt:"
    f.puts "layout: project"
    f.puts "projurl:"
    f.puts "published: false"
    f.puts "techs: []"
    f.puts "title: \"#{name}\""
    f.puts "---"
    f.puts ""
    f.puts "## Why Did I Make This?"
    f.puts ""
    f.puts "## What Did I Learn?"
    f.puts ""
  end
end

