---
excerpt: This presentation introduced our newly implemented integration with
  StatsD and Graphite to the rest of the development team. I wanted the team to
  understand what those tools are, as well as how to think about questions we
  could ask of them.
layout: project
projurl: http://presentations.patrickbyrne.net/knowing-is-half-the-battle/
codeurl: https://github.com/pbyrne/presentations
published: true
techs: [deck.js, HTML5]
title: "Presentation - Enhanced Ass-Kicking With Git"
---

## Why Did I Make This?

We recently started dabbling in using [StatsD] and [Graphite] to capture metrics
not already being captured by New Relic and other monitoring that we use.
Specifically, we wanted data very much bound up in the business logic of the
application, to use for decision-making going forward on where to focus
development, to validate (or refute) assumptions we've made about our users'
behavior, and to measure success of changes we make to the application.

To that end, I wanted to bring the rest of the development team up-to-speed on
the tools to get them thinking about what we could measure to help us do our
jobs.

## What Did I Learn?

This presentation was less-code heavy than the others that I've given, and fit
more closely the traditional narrative style of successful presentations (like
at conferences and such). This was the first presentation I've given at work
that an appreciable fraction of the slides don't make sense out of the context
of me talking.

I don't know how I feal about this, to be honest.

[statsd]:https://github.com/etsy/statsd/
[graphite]:http://graphite.wikidot.com
