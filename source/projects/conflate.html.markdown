---
date: 2013-06-23
excerpt: Simply load YAML contents into the Rails config object.
layout: project
projurl: https://github.com/sportngin/conflate/
published: true
techs: [RSpec, Ruby, Ruby Gems, Ruby on Rails Railtie]
title: "Conflate - Easy Application Configuration"
---

## Why Did I Make This?

At [Sport Ngin][sportngin], we use Chef to write out environment-specific configuration with YAML files.
We end up with lots of boilerplate code in initializers to parse these files and do whatever we want to do with the values.
I wanted to make this easier, by pre-parsing all of the YAML files in the config/ directory and making them available throughout the application in the `Rails.config` object.

## What is It?

This started as a single gem, [Conflate][conflate], but it became pretty clear early on that we have two separate pieces of functionality:

* Parsing the YAML files in a given directory
* Integrating with the Rails.config object

That lead me to continue writing the first bit of functionality in a more-or-less generic way, in the main gem.
Its public interface is dreadfully simple: give it a path to look for YAML files in, and also an object that it can inject the parsed values into.
In theory, this can be used in a Sinatra app or anything else.

However, the purpose of the gem was to make things automatic, so we built the second piece of functionality into the [conflate-rails] gem.
All that this does is integrate into the booting of your Rails app and call Conflate with the default options.
The meat is [just three lines of code][dead-simple] in a Railtie.

## What Did I Learn?

I mostly learned how simple it is to build a useful Railtie, without having to limit yourself to **only** working in a Rails environment.
I saw [RSpec] as a inspiration.

[conflate]:https://github.com/sportngin/conflate/
[conflate-rails]:https://github.com/sportngin/conflate-rails/
[dead-simple]:https://github.com/sportngin/conflate-rails/blob/73eeaebc75a4409b1f6f071a5cfa73e4f16672d8/lib/conflate-rails.rb#L7-L9
[RSpec]:http://rspec.info
[sportngin]:http://www.sportngin.com/
