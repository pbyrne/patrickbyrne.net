---
date: 2012-01-15
excerpt: A command-line tool to easily manage lots of repositories.
layout: project
projurl: https://github.com/pbyrne/sss
published: true
techs: [Guard, RSpec, Ruby, Ruby Gems]
title: "Simple SCM Service Gem"
---

## Why Did I Make This?

Working with a dozen or more projects makes it easy to lost track of an uncommited change, or let some shared folder of code fall out of date.

What originally started as an ugly Bash script slowly grew to an unmanageable size, and keeping my friends up-to-date with the script was difficult.
Making this a Ruby gem seemed the best solution.

## What Did I Learn?

While I've written [a number of gems][mygems], I'd never written a command-line app.
It turns out, that with Ruby it's pretty simple.
Create a library which gets called by the command-line tool.

Moving from Bash to Ruby allowed me to use tools I already knew (like [RSpec]) to ensure that this library was robust and well-tested.
I plan to work on some more tools for work, which will be released as gems or [Thor] scripts, so that they enjoy these same benefits.

[mygems]: https://rubygems.org/profiles/pbyrne
[RSpec]: http://rspec.info/
[Thor]: https://github.com/wycats/thor

