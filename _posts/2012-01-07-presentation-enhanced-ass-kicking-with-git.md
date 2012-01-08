---
excerpt: I gave this presentation at my amazing job, for our monthly Developer
  Lunch. In it, I summarize how to configure Git to bypass some of its archaic
  syntax and work more efficiently.
layout: project
projurl: http://presentations.patrickbyrne.net/git-ass-kicking/
published: true
techs: [deck.js, Git, HTML5]
title: "Presentation - Enhanced Ass-Kicking With Git"
---

## Why Did I Make This?

I gave this presentation at [my amazing job][tstmedia], ([apply
today!][careers]) for our monthly Developer Lunch. In it, I summarize how to
configure Git to:

* bypass some of its archaic syntax
* work more efficiently

[tstmedia]:http://tstmedia.com/
[careers]:http://www.tstmedia.com/page/show/378986-careers

## What Did I Learn?

This is the first presentation I've created outside of Keynote. Keynote is
great software for creating powerful presentations, but as a developer, I've
longed for the ability to create a presentation in versioned plain text. I also
wanted to post the slides to my website without degrading their quality.

With that in mind, I searched for an HTML-based presentation tool. After
reviewing several, I settled on [deck.js]. It had the best compromise between
simplicity and flexibility of the tools I reviewed. Also, it had several
choices of themes, which helps for non-designers such as myself.

[deck.js]:http://imakewebthings.github.com/deck.js/

Since the presentation is a static HTML site powered by JavaScript, I was able
to simply host the project with [GitHub Pages][gh-pages] by pushing the project
to [the Git repository][repo] I was already going to use.

[gh-pages]:http://pages.github.com/
[repo]:https://github.com/pbyrne/presentations

I intentionally worked counter to the common wisdom of keeping the slides
minimal, to support the points that you're making verbally for two reasons:

* The meat of the presentation are code examples, and it's far more efficient
  to put these up on the screen than to read them aloud.
* I wanted this presentation to stand alone as a reference document for the
  developers that weren't present and future hires.

After giving this presentation, I realize that I did a poor job of maintaining
any kind of narrative of keeping in mind how to make Git do more work so you
don't have to. I provide examples of tweaks that I've done, but don't instruct
on how to change your thinking to come up with new tweaks and aliases. I'll
want to keep that in mind for future presentations.
