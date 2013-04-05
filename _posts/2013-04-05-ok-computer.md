---
excerpt: Inspired by Fitter Happier, but wanting greater flexibility, I built
  OK Computer to easily monitor various aspects of our applications' health.
layout: project
projurl: https://github.com/sportngin/okcomputer/
published: false
techs: [RSpec, Ruby, Ruby Gems, Rails Engines]
title: "OK Computer"
---

## Why Did I Make This?

We used [Fitter Happier] for simple health checks (both for HAProxy to verify a
server is functioning and to alert us through Pingdom in case of other
problems). This worked well, and was basically a plug-and-play solution to
confirm that the app is working and that it can connect to the database.

But, one of our apps uses MongoDB instead of ActiveRecord. Fitter Happier
provides no customization, so we subclassed FitterHappierController and
overwrote the methods we wanted.  Then in another project, we use Resque, and
wanted to check the length of the "critical" queue and alert us if it gets
backed up. More monkey patching commenced.

Now we needed it in some other project and copied and pasted the monkey
patches, at which point I figured enough was enough.

We wanted a similar gem, where we could just insert it into our Gemfile and forget about it in the common case, but to be able to add or remove checks on a per-application basis.

[OK Computer] was born.

[Fitter Happier]:https://rubygems.org/gems/fitter_happier
[OK Computer]:https://github.com/sportngin/okcomputer/

## What Did I Learn?

