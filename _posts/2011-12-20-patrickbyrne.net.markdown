---
layout: project
published: true
techs: [Jekyll, HTML5, Liquid, Markdown, SASS]
title: patrickbyrne.net
---

PatrickByrne.net is my personal site, which you're looking at right now.

## Why Did I Make This?

I needed a website, which I wanted to manage entirely on my own (so no hosted
platforms like Tumblr or Squarespace). I also wanted an excuse to practice some
[SMACSS] on a small project, to understand its principles.

The old version of this site was running on an ancient [TextPattern]
installation. I liked it well enough, but I simply wasn't maintaining the blog.
Long-form writing is not a natural act for me, and it was leading to stress as
I watched my latest article get older and older, so I knew the new site
wouldn't have a blog. I also didn't like that all the changes were performed
through web forms, saved immediately to the database, without version control.

I was drawn to [Jekyll] because it builds your site from text files, which I
can version-control and treat like code. [As Tom Preston-Werner put
it][tpw-blog], "blog like a hacker".

## What Did I Learn?

Primarily, I learned to just [ship it]. I'd been working on this design for
months, keeping it on the back burner because I was afraid to commit. I pared
down all the features to the bare minimum to get out the door, and put
everything else on the list of things to do afterward. I continue to improve
and tweak the site (and have a healthy list of projects to add from [my GitHub
page]), but that didn't need to be done for me to release this.

Additionally, I learned how to set up a site in Jekyll. I got a chance to play
briefly with some new HTML5 elements like `article` and `aside`.

I also got to use, and thus understand, the principles in [SMACSS] for finding
the right mixture of CSS classes and specificity. I fully intend to take this
knowledge forward to larger projects at [TST Media].

I fully intended to implement my first [responsive design], but the simplicity
(sparseness? bareness?) of the design didn't lend itself to a more-complex
design for desktop browsers. Currently, everyone gets the single-column mobile
layout, with only a max-width and min-width the only part that makes them
differ.


[TextPattern]: http://textpattern.com/
[SMACSS]: http://smacss.com/ "Scalable and Modular Architecture for CSS"
[Jekyll]: http://jekyllrb.com/
[tpw-blog]: http://tom.preston-werner.com/2008/11/17/blogging-like-a-hacker.html
[TST Media]: http://tstmedia.com/
[responsive design]: http://www.abookapart.com/products/responsive-web-design
[ship it]: http://shipitsquirrel.github.com/
[my GitHub page]: https://github.com/pbyrne
